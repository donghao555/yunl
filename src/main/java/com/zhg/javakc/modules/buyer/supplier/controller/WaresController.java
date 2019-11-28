package com.zhg.javakc.modules.buyer.supplier.controller;


import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.modules.buyer.supplier.entity.WaresEntity;
import com.zhg.javakc.modules.buyer.supplier.service.WaresService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @program: javakc_ssm
 * @author: DH
 * @create: 2019-11-25 16:52
 **/
@Controller
@RequestMapping("/wares")
public class WaresController {

    @Autowired
    WaresService waresService;

//    @RequestMapping("queryWares")
//    public ModelAndView queryWares (WaresEntity waresEntity, HttpServletRequest request, HttpServletResponse response){
//        ModelAndView modelAndView = new ModelAndView("buyer/supplier/detils");
//
//        Page<WaresEntity> page = waresService.queryWares(waresEntity, new Page<WaresEntity>(request, response));
//        modelAndView.addObject("page",page);
//
//        return modelAndView;
//    }


//    public List<WaresEntity> geta(String id){
//        List<WaresEntity> waresList = get
//
//        return waresList;
//    }
}
