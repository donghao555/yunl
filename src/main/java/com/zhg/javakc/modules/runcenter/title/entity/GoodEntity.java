package com.zhg.javakc.modules.runcenter.title.entity;

import com.zhg.javakc.base.entity.BaseEntity;

public class GoodEntity extends BaseEntity<GoodEntity> {

    //'商品主键
    private String goodsId ;
    //'类目级别主键'
    private String classifyId;
    //'商品名称'
    private String goodsName;
    //'商品成本价格'
    private Integer goodsCost;
    //'商品销售价格'
    private Integer goodsSell;
    //'商品参考价'
    private Integer goodsRefer;
    //'商品简介'
    private String  goodsIntro;
    //'安全库存'
    private String goodsSafe;
    //'退换货:0支持，1不支持';
    private Integer goodsChange;
    //'搜索关键词'
    private String goodsKeyword;
    //'供应商'
    private String goodsProvider;
    //'商品品牌'
    private String goodsBrand;
    //'产地'
    private String goodsOrigin;
    //'水体'
    private String goodsFord;
    //'净含量'
    private String goodsContent;
    //'储存条件'
    private String goodsCondition;
    //'保质期'
    private String goodsExpriation;
    //'包装'
    private String goodsPack;
    //'单位'
    private String goodsUnit;
    //'商品详情'
    private byte[] goodsDetails;
    //'商品状态:0上架，1下架,3:回收站'
    private String goodsState;
    //'商品编号'
    private String goodsNumber;


    public String getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(String goodsId) {
        this.goodsId = goodsId;
    }

    public String getClassifyId() {
        return classifyId;
    }

    public void setClassifyId(String classifyId) {
        this.classifyId = classifyId;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public Integer getGoodsCost() {
        return goodsCost;
    }

    public void setGoodsCost(Integer goodsCost) {
        this.goodsCost = goodsCost;
    }

    public Integer getGoodsSell() {
        return goodsSell;
    }

    public void setGoodsSell(Integer goodsSell) {
        this.goodsSell = goodsSell;
    }

    public Integer getGoodsRefer() {
        return goodsRefer;
    }

    public void setGoodsRefer(Integer goodsRefer) {
        this.goodsRefer = goodsRefer;
    }

    public String getGoodsIntro() {
        return goodsIntro;
    }

    public void setGoodsIntro(String goodsIntro) {
        this.goodsIntro = goodsIntro;
    }

    public String getGoodsSafe() {
        return goodsSafe;
    }

    public void setGoodsSafe(String goodsSafe) {
        this.goodsSafe = goodsSafe;
    }

    public Integer getGoodsChange() {
        return goodsChange;
    }

    public void setGoodsChange(Integer goodsChange) {
        this.goodsChange = goodsChange;
    }

    public String getGoodsKeyword() {
        return goodsKeyword;
    }

    public void setGoodsKeyword(String goodsKeyword) {
        this.goodsKeyword = goodsKeyword;
    }

    public String getGoodsProvider() {
        return goodsProvider;
    }

    public void setGoodsProvider(String goodsProvider) {
        this.goodsProvider = goodsProvider;
    }

    public String getGoodsBrand() {
        return goodsBrand;
    }

    public void setGoodsBrand(String goodsBrand) {
        this.goodsBrand = goodsBrand;
    }

    public String getGoodsOrigin() {
        return goodsOrigin;
    }

    public void setGoodsOrigin(String goodsOrigin) {
        this.goodsOrigin = goodsOrigin;
    }

    public String getGoodsFord() {
        return goodsFord;
    }

    public void setGoodsFord(String goodsFord) {
        this.goodsFord = goodsFord;
    }

    public String getGoodsContent() {
        return goodsContent;
    }

    public void setGoodsContent(String goodsContent) {
        this.goodsContent = goodsContent;
    }

    public String getGoodsCondition() {
        return goodsCondition;
    }

    public void setGoodsCondition(String goodsCondition) {
        this.goodsCondition = goodsCondition;
    }

    public String getGoodsExpriation() {
        return goodsExpriation;
    }

    public void setGoodsExpriation(String goodsExpriation) {
        this.goodsExpriation = goodsExpriation;
    }

    public String getGoodsPack() {
        return goodsPack;
    }

    public void setGoodsPack(String goodsPack) {
        this.goodsPack = goodsPack;
    }

    public String getGoodsUnit() {
        return goodsUnit;
    }

    public void setGoodsUnit(String goodsUnit) {
        this.goodsUnit = goodsUnit;
    }

    public byte[] getGoodsDetails() {
        return goodsDetails;
    }

    public void setGoodsDetails(byte[] goodsDetails) {
        this.goodsDetails = goodsDetails;
    }

    public String getGoodsState() {
        return goodsState;
    }

    public void setGoodsState(String goodsState) {
        this.goodsState = goodsState;
    }

    public String getGoodsNumber() {
        return goodsNumber;
    }

    public void setGoodsNumber(String goodsNumber) {
        this.goodsNumber = goodsNumber;
    }
}
