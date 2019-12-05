package com.zhg.javakc.modules.runcenter.title.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.runcenter.title.entity.RelateEntity;
import com.zhg.javakc.modules.runcenter.title.service.RelateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("title")
public class RelateController {

    @Autowired
    RelateService relateService;




    @RequestMapping("queryTitle")
    public String queryTitle(RelateEntity relateEntity, ModelMap model, HttpServletRequest request, HttpServletResponse response){
     Page<RelateEntity> page=relateService.queryRelate(relateEntity,new Page<RelateEntity>(request,response));

        model.put("page" , page);

        return "run/title/list";
    }




//    @RequestMapping("/delete")
//    public String delete(String[] ids){
//        titleService.delete(ids);
//        return "redirect:/title/queryTitle.do";
//    }



}
