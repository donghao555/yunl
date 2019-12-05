package com.zhg.javakc.modules.goodscenter.room.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.modules.goodscenter.room.entity.GoodsEntity;
import com.zhg.javakc.modules.goodscenter.room.service.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @program: javakc_ssm
 * @author: DH
 * @create: 2019-11-22 20:25
 **/
@Controller
@RequestMapping("goods")
public class RoomController {
    @Autowired
    private RoomService goodsService;

    @RequestMapping("queryGoods")
    public String queryGoods(GoodsEntity goodsEntity, ModelMap model, HttpServletRequest request, HttpServletResponse response){
       Page<GoodsEntity> page= goodsService.queryGoods(goodsEntity,new Page<GoodsEntity>( request ,response ));
       model.put("page" , page);
        return "goodscenter/room/list";
    }

}
