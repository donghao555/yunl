package com.zhg.javakc.modules.buyer.supplier.controller;


import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.modules.buyer.supplier.entity.SupplierEntity;
import com.zhg.javakc.modules.buyer.supplier.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @program: javakc_ssm
 * @author: DH
 * @create: 2019-11-22 20:52
 **/
@Controller
@RequestMapping("/supplier")
public class SupplierController {

    @Autowired
    SupplierService supplierService;

    @RequestMapping("querySupplier")
    public ModelAndView querySupplier (SupplierEntity supplierEntity, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView = new ModelAndView("purchase/supplier/list");

        Page<SupplierEntity> page = supplierService.querySupplier(supplierEntity, new Page<SupplierEntity>(request, response));
        modelAndView.addObject("page",page);

        return modelAndView;
    }

}
