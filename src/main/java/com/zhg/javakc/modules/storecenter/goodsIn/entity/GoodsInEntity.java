package com.zhg.javakc.modules.storecenter.goodsIn.entity;

import com.alibaba.druid.util.DaemonThreadFactory;
import com.zhg.javakc.base.entity.BaseEntity;

import java.util.Date;

public class GoodsInEntity extends BaseEntity<GoodsInEntity> {

private String inputId;
private int inputState;
private String inputNumber;
private String inputType;
private Date inputCretime;
private String inputMan;
private String inputRemark;
private Date inputUptime;

    public String getInputId() {
        return inputId;
    }

    public void setInputId(String inputId) {
        this.inputId = inputId;
    }

    public int getInputState() {
        return inputState;
    }

    public void setInputState(int inputState) {
        this.inputState = inputState;
    }

    public String getInputNumber() {
        return inputNumber;
    }

    public void setInputNumber(String inputNumber) {
        this.inputNumber = inputNumber;
    }

    public String getInputType() {
        return inputType;
    }

    public void setInputType(String inputType) {
        this.inputType = inputType;
    }

    public Date getInputCretime() {
        return inputCretime;
    }

    public void setInputCretime(Date inputCretime) {
        this.inputCretime = inputCretime;
    }

    public String getInputMan() {
        return inputMan;
    }

    public void setInputMan(String inputMan) {
        this.inputMan = inputMan;
    }

    public String getInputRemark() {
        return inputRemark;
    }

    public void setInputRemark(String inputRemark) {
        this.inputRemark = inputRemark;
    }

    public Date getInputUptime() {
        return inputUptime;
    }

    public void setInputUptime(Date inputUptime) {
        this.inputUptime = inputUptime;
    }
}
