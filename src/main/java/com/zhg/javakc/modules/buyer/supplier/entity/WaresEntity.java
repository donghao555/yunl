package com.zhg.javakc.modules.buyer.supplier.entity;

import com.zhg.javakc.base.entity.BaseEntity;

/**
 * @program: javakc_ssm
 * @author: DH
 * @create: 2019-11-25 16:52
 **/
public class WaresEntity extends BaseEntity<WaresEntity> {
    private String waresId;
    private String goodsId;
    private String goodsName;
    private Integer waresCount;
    private Integer waresPrice;
    private Integer waresDiscount;
    private Integer waresTotal;
    private String supplierId;

    public String getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(String supplierId) {
        this.supplierId = supplierId;
    }

    public String getWaresId() {
        return waresId;
    }

    public void setWaresId(String waresId) {
        this.waresId = waresId;
    }

    public String getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(String goodsId) {
        this.goodsId = goodsId;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public Integer getWaresCount() {
        return waresCount;
    }

    public void setWaresCount(Integer waresCount) {
        this.waresCount = waresCount;
    }

    public Integer getWaresPrice() {
        return waresPrice;
    }

    public void setWaresPrice(Integer waresPrice) {
        this.waresPrice = waresPrice;
    }

    public Integer getWaresDiscount() {
        return waresDiscount;
    }

    public void setWaresDiscount(Integer waresDiscount) {
        this.waresDiscount = waresDiscount;
    }

    public Integer getWaresTotal() {
        return waresTotal;
    }

    public void setWaresTotal(Integer waresTotal) {
        this.waresTotal = waresTotal;
    }
}
