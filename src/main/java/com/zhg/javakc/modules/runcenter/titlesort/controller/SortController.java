package com.zhg.javakc.modules.runcenter.titlesort.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.runcenter.title.entity.TitleEntity;
import com.zhg.javakc.modules.runcenter.titlesort.entity.SortEntity;
import com.zhg.javakc.modules.runcenter.titlesort.service.SortService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("sort")
public class SortController {

    @Autowired
    SortService sortService;

    @RequestMapping("/querySort")
    public String querySort(SortEntity sortEntity, ModelMap model, HttpServletRequest request, HttpServletResponse response){
        Page<SortEntity> page = sortService.querySort(sortEntity,new Page<SortEntity>(request,response));
        model.put("page" , page);

        return "run/sort/list";
    }

    @RequestMapping("/save")
    public String save(SortEntity sortEntity){
        // 设置ID
        sortEntity.setArtgroupId(CommonUtil.uuid());
        sortService.save(sortEntity);
        return "redirect:/sort/querySort.do";
    }

    @RequestMapping("/view")
    public String view(String ids,ModelMap model ){

        SortEntity sortEntity = sortService.get(ids);
        model.put("sortEntity",sortEntity);
        return "run/sort/update";
    }

    @RequestMapping("/update")
    public String update(SortEntity sortEntity){
        sortService.update(sortEntity);
        return "redirect:/sort/querySort.do";
    }

    @RequestMapping("/update/{id}")
    public String updateSsm(@PathVariable String id){
        SortEntity sortEntity = sortService.get(id);
        if(sortEntity.getArticleState()==0){
            sortEntity.setArticleState(1);
        }else{
            sortEntity.setArticleState(0);
        }
        sortService.update(sortEntity);
        return "redirect:/sort/querySort.do";
    }

    @RequestMapping("/delete")
    public String delete(String[] ids){
        sortService.delete(ids);
        return "redirect:/sort/querySort.do";
    }



}
