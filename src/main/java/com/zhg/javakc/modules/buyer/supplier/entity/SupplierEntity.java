package com.zhg.javakc.modules.buyer.supplier.entity;

import com.zhg.javakc.base.entity.BaseEntity;
import lombok.ToString;

/**
 * @program: javakc_ssm
 * @author: DH
 * @create: 2019-11-23 09:04
 **/
@ToString
public class SupplierEntity extends BaseEntity<SupplierEntity> {

    private String supplierId;
    private String supplierName;
    private String supplierDescribe;
    private String supplierAddress;
    private String supplierLinkman1;
    private String supplierLinkman2;
    private String supplierTel1;
    private String supplierTel2;
    private String supplierRemark;



    public String getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(String supplierId) {
        this.supplierId = supplierId;
    }

    public String getSupplierName() {
        return supplierName;
    }

    public void setSupplierName(String supplierName) {
        this.supplierName = supplierName;
    }

    public String getSupplierDescribe() {
        return supplierDescribe;
    }

    public void setSupplierDescribe(String supplierDescribe) {
        this.supplierDescribe = supplierDescribe;
    }

    public String getSupplierAddress() {
        return supplierAddress;
    }

    public void setSupplierAddress(String supplierAddress) {
        this.supplierAddress = supplierAddress;
    }

    public String getSupplierLinkman1() {
        return supplierLinkman1;
    }

    public void setSupplierLinkman1(String supplierLinkman1) {
        this.supplierLinkman1 = supplierLinkman1;
    }

    public String getSupplierLinkman2() {
        return supplierLinkman2;
    }

    public void setSupplierLinkman2(String supplierLinkman2) {
        this.supplierLinkman2 = supplierLinkman2;
    }

    public String getSupplierTel1() {
        return supplierTel1;
    }

    public void setSupplierTel1(String supplierTel1) {
        this.supplierTel1 = supplierTel1;
    }

    public String getSupplierTel2() {
        return supplierTel2;
    }

    public void setSupplierTel2(String supplierTel2) {
        this.supplierTel2 = supplierTel2;
    }

    public String getSupplierRemark() {
        return supplierRemark;
    }

    public void setSupplierRemark(String supplierRemark) {
        this.supplierRemark = supplierRemark;
    }

}
