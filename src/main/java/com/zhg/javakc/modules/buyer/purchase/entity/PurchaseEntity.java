package com.zhg.javakc.modules.buyer.purchase.entity;

import com.zhg.javakc.base.entity.BaseEntity;

import java.util.Date;

/**
 * @program: javakc_ssm
 * @author: DH
 * @create: 2019-11-26 15:22
 **/
public class PurchaseEntity extends BaseEntity<PurchaseEntity> {

    private String purchaseId;
    private Integer purchaseIn;
    private Integer purchaseAudit;
    private String purchaseSerial;
    private String purchaseSupplier;
    private Integer purchaseMoney;
    private Date purchaseCredate;
    private String purchaseMan;
    private String purchaseTel;
    private String purchaseRemark;
    private Integer purchaseSum;
    private Integer purchaseDiscount;
    private Integer purchaseTotal;
    private String purchaseCreator;
    private Date purchaseCreatime;
    private String purchaseAuditor;
    private Date purchaseAuditortime;

    public String getPurchaseId() {
        return purchaseId;
    }

    public void setPurchaseId(String purchaseId) {
        this.purchaseId = purchaseId;
    }

    public Integer getPurchaseIn() {
        return purchaseIn;
    }

    public void setPurchaseIn(Integer purchaseIn) {
        this.purchaseIn = purchaseIn;
    }

    public Integer getPurchaseAudit() {
        return purchaseAudit;
    }

    public void setPurchaseAudit(Integer purchaseAudit) {
        this.purchaseAudit = purchaseAudit;
    }

    public String getPurchaseSerial() {
        return purchaseSerial;
    }

    public void setPurchaseSerial(String purchaseSerial) {
        this.purchaseSerial = purchaseSerial;
    }

    public String getPurchaseSupplier() {
        return purchaseSupplier;
    }

    public void setPurchaseSupplier(String purchaseSupplier) {
        this.purchaseSupplier = purchaseSupplier;
    }

    public Integer getPurchaseMoney() {
        return purchaseMoney;
    }

    public void setPurchaseMoney(Integer purchaseMoney) {
        this.purchaseMoney = purchaseMoney;
    }

    public Date getPurchaseCredate() {
        return purchaseCredate;
    }

    public void setPurchaseCredate(Date purchaseCredate) {
        this.purchaseCredate = purchaseCredate;
    }

    public String getPurchaseMan() {
        return purchaseMan;
    }

    public void setPurchaseMan(String purchaseMan) {
        this.purchaseMan = purchaseMan;
    }

    public String getPurchaseTel() {
        return purchaseTel;
    }

    public void setPurchaseTel(String purchaseTel) {
        this.purchaseTel = purchaseTel;
    }

    public String getPurchaseRemark() {
        return purchaseRemark;
    }

    public void setPurchaseRemark(String purchaseRemark) {
        this.purchaseRemark = purchaseRemark;
    }

    public Integer getPurchaseSum() {
        return purchaseSum;
    }

    public void setPurchaseSum(Integer purchaseSum) {
        this.purchaseSum = purchaseSum;
    }

    public Integer getPurchaseDiscount() {
        return purchaseDiscount;
    }

    public void setPurchaseDiscount(Integer purchaseDiscount) {
        this.purchaseDiscount = purchaseDiscount;
    }

    public Integer getPurchaseTotal() {
        return purchaseTotal;
    }

    public void setPurchaseTotal(Integer purchaseTotal) {
        this.purchaseTotal = purchaseTotal;
    }

    public String getPurchaseCreator() {
        return purchaseCreator;
    }

    public void setPurchaseCreator(String purchaseCreator) {
        this.purchaseCreator = purchaseCreator;
    }

    public Date getPurchaseCreatime() {
        return purchaseCreatime;
    }

    public void setPurchaseCreatime(Date purchaseCreatime) {
        this.purchaseCreatime = purchaseCreatime;
    }

    public String getPurchaseAuditor() {
        return purchaseAuditor;
    }

    public void setPurchaseAuditor(String purchaseAuditor) {
        this.purchaseAuditor = purchaseAuditor;
    }

    public Date getPurchaseAuditortime() {
        return purchaseAuditortime;
    }

    public void setPurchaseAuditortime(Date purchaseAuditortime) {
        this.purchaseAuditortime = purchaseAuditortime;
    }
}
