package com.zhg.javakc.modules.runcenter.title.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.runcenter.title.entity.TitleEntity;
import com.zhg.javakc.modules.runcenter.title.service.TitleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("title")
public class TitleController {

    @Autowired
    TitleService titleService;

    @RequestMapping("queryTitle")
    public String queryTitle(TitleEntity titleEntity, ModelMap model, HttpServletRequest request, HttpServletResponse response){
        Page<TitleEntity> page= titleService.queryTitle(titleEntity,new Page<TitleEntity>( request ,response ));
        model.put("page" , page);
        return "run/title/list";
    }

    @RequestMapping("/save")
    public String save(TitleEntity titleEntity){
        // 设置ID
        titleEntity.setArticleId(CommonUtil.uuid());
        titleService.save(titleEntity);
        return "redirect:/title/queryTitle.do";
    }

    @RequestMapping("/view")
    public String view(String ids, ModelMap model){
        TitleEntity titleEntity = titleService.get(ids);
        model.put("titleEntity", titleEntity);

        return "run/title/update";
    }

    @RequestMapping("/update")
    public String update(TitleEntity titleEntity){

        titleService.update(titleEntity);
        return "redirect:/title/queryTitle.do";
    }
    @RequestMapping("/update/{id}")
    public String updateSingle(@PathVariable String  id){
        TitleEntity titleEntity=titleService.get(id);
        if(titleEntity.getArticleState()==0){
            titleEntity.setArticleState(1);
        }else {
            titleEntity.setArticleState(0);
        }
        titleService.update(titleEntity);
        return "redirect:/title/queryTitle.do";
    }


    @RequestMapping("/delete")
    public String delete(String[] ids){
        titleService.delete(ids);
        return "redirect:/title/queryTitle.do";
    }

    @RequestMapping("detail/{id}")
    public String detail(@PathVariable String id, ModelMap model){
        TitleEntity titleEntity = titleService.get(id);
        model.put("titleEntity" , titleEntity);
        return "run/title/detail";
    }


}
