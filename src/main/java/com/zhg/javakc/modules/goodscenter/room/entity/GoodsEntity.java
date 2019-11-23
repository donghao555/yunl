package com.zhg.javakc.modules.goodscenter.room.entity;


import com.zhg.javakc.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class GoodsEntity extends BaseEntity<GoodsEntity> {
    //'商品主键
    private String goodsId ;
    //'类目级别主键'
    private String classifyId;
    //'商品名称'
    private String goodsName;
    //'商品成本价格'
    private Integer goodsCost;
    //'商品销售价格'
    private Integer goodsSell   ;
    //'商品参考价'
    private Integer goodsRefer   ;
    //'商品简介'
    private String  goodsIntro     ;
    //'安全库存'
    private String goodsSafe       ;
    //'退换货:0支持，1不支持';
    private Integer goodsChange   ;
    //'搜索关键词'
    private String goodsKeyword    ;
    //'供应商'
    private String goodsProvider   ;
    //'商品品牌'
    private String goodsBrand     ;
    //'产地'
    private String goodsOrigin    ;
    //'水体'
    private String goodsFord       ;
    //'净含量'
    private String goodsContent    ;
    //'储存条件'
    private String goodsCondition   ;
    //'保质期'
    private String goodsExpriation;
    //'包装'
    private String goodsPack      ;
    //'单位'
    private String goodsUnit       ;
    //'商品详情'
    private byte[] goodsDetails     ;
    //'商品状态:0上架，1下架,3:回收站'
    private String goodsState     ;
    //'商品编号'
    private String goodsNumber     ;


}
