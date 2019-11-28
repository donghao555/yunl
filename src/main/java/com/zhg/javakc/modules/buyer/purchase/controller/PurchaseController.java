package com.zhg.javakc.modules.buyer.purchase.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.buyer.purchase.entity.PurchaseEntity;
import com.zhg.javakc.modules.buyer.purchase.service.PurchaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @program: javakc_ssm
 * @author: DH
 * @create: 2019-11-26 15:20
 **/
@Controller
@RequestMapping("/purchase")
public class PurchaseController {

    @Autowired
    PurchaseService purchaseService;

    @RequestMapping("queryPurchase")
    public ModelAndView queryPurchase (PurchaseEntity purchaseEntity, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView = new ModelAndView("buyer/purchase/list");

        Page<PurchaseEntity> page = purchaseService.queryPurchase(purchaseEntity, new Page<PurchaseEntity>(request, response));
        modelAndView.addObject("page",page);

        return modelAndView;
    }

    @RequestMapping("/save")
    public String save(PurchaseEntity purchaseEntity){
        purchaseEntity.setPurchaseId(CommonUtil.uuid());
        purchaseService.save(purchaseEntity);
        return "redirect:queryPurchase.do";
    }

    @RequestMapping("/view/{id}")
    public String view(@PathVariable String id, ModelMap modelMap){
        PurchaseEntity purchaseEntity = purchaseService.get(id);
        modelMap.put("purchaseEntity", purchaseEntity);
        return "buyer/purchase/update";
    }

    @RequestMapping("/update")
    public String update(PurchaseEntity purchaseEntity){
        purchaseService.update(purchaseEntity);
        return "redirect:/purchase/queryPurchase.do";
    }

    @RequestMapping("/delete")
    public String delete(String[] ids){
        purchaseService.delete(ids);
        return "redirect:queryPurchase.do";
    }

    @RequestMapping("/deleteA/{id}")
    public String deleteA(@PathVariable String[] id){
        purchaseService.delete(id);
        return "redirect:/purchase/queryPurchase.do";
    }
}
