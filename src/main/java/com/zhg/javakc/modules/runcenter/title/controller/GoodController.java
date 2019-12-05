package com.zhg.javakc.modules.runcenter.title.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.runcenter.title.entity.GoodEntity;
import com.zhg.javakc.modules.runcenter.title.entity.TitleEntity;
import com.zhg.javakc.modules.runcenter.title.service.GoodService;
import com.zhg.javakc.modules.runcenter.title.service.TitleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("good")
public class GoodController {

    @Autowired
    GoodService goodService;
    @Autowired
    TitleService titleService;

    @RequestMapping("/delete")
    public String delete(String[] ids){
        goodService.delete(ids);
        return "redirect:/title/queryTitle.do";
    }


    @RequestMapping("/detail/{id}")
    public String detail(@PathVariable String id, ModelMap modelMap,HttpServletRequest request, HttpServletResponse response){

        GoodEntity goodEntity =new GoodEntity();
//        goodEntity.set(id);
        Page<GoodEntity> page= goodService.queryGood(goodEntity,new Page<GoodEntity>(request, response));
        modelMap.put("page",page);

        TitleEntity titleEntity= titleService.get(id);
        modelMap.put("titleEntity",titleEntity);

        return "run/title/detail";
    }




}
