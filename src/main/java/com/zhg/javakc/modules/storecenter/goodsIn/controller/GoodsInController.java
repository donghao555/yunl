package com.zhg.javakc.modules.storecenter.goodsIn.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.modules.storecenter.goodsIn.entity.GoodsInEntity;
import com.zhg.javakc.modules.storecenter.goodsIn.service.GoodsInService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/goods")
public class GoodsInController{
    @Autowired
    GoodsInService goodsInService;

    @RequestMapping("queryGoodsIn")
    public ModelAndView queryGoods(GoodsInEntity goodsInEntity, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView=new ModelAndView("goods/list");
        Page<GoodsInEntity> page=goodsInService.queryGoodds(goodsInEntity,new Page<GoodsInEntity>(request,response));
        modelAndView.addObject("page",page);

    return modelAndView;
    }
}
