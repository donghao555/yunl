package com.zhg.javakc.modules.goodscenter.room.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.goodscenter.room.entity.GoodsEntity;
import com.zhg.javakc.modules.goodscenter.room.service.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/**
 * @program: javakc_ssm
 * @author: DH
 * @create: 2019-11-22 20:25
 **/
@Controller
@RequestMapping("goods")
public class RoomController {
    @Autowired
    private RoomService roomService;

    @RequestMapping("queryGoods")
    public String queryGoods(GoodsEntity goodsEntity, ModelMap model, HttpServletRequest request, HttpServletResponse response){
       Page<GoodsEntity> page= roomService.queryGoods(goodsEntity,new Page<GoodsEntity>( request ,response ));
       model.put("page" , page);
        return "goodscenter/room/list";
    }

    @RequestMapping("insert")
    public String create(GoodsEntity goodsEntity) {
        //设置id
        goodsEntity.setGoodsId(CommonUtil.uuid());
        roomService.save(goodsEntity);
        return "redirect:queryGoods.do";
    }

    @RequestMapping("getOne")
    public String getOne(String ids, ModelMap model){
        GoodsEntity goodsEntity=roomService.get(ids);
        model.put("goodsEntity",goodsEntity);
        return "goods/update";
    }

    @RequestMapping("update")
    public String update(GoodsEntity goodsEntity) {

        roomService.update(goodsEntity);
        return "redirect:queryGoods.do";
    }

    @RequestMapping("delete/{id}")
    public String delete(@PathVariable String[] id) {
        roomService.delete(id);
        return "redirect:/goods/queryGoods.do";
    }
    @RequestMapping("deleteAll")
    public String deleteAll(String[] ids) {
        roomService.delete(ids);
        return "redirect:/goods/queryGoods.do";
    }



}
