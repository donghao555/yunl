package com.zhg.javakc.modules.goodscenter.room.entity;

import com.zhg.javakc.base.entity.BaseEntity;

import java.util.Date;

public class PhotoEntity extends BaseEntity<PhotoEntity> {


    /**
     * '图片主键'
     */
    private String photoId;
    /**
     *'图片名称'
     */
    private String photoName;
    /**
     *'图片上传时间'
     */
    private Date photoSdate;
    /**
     *'图片修改时间'
     */
    private Date photoUdate;
    /**
     *'图片上传系统名称'
     */
    private String photoSysname;
    /**
     *'商品主键'
     */
    private String goodsId;
    /**
     *'图片存储路径'
     */
    private String photoPath;
    /**
     *'图片大小'
     */
    private Long photoSize;
    /**
     *'图片后缀'
     */
    private String photoUffix;

    public String getPhotoId() {
        return photoId;
    }

    public void setPhotoId(String photoId) {
        this.photoId = photoId;
    }

    public String getPhotoName() {
        return photoName;
    }

    public void setPhotoName(String photoName) {
        this.photoName = photoName;
    }

    public Date getPhotoSdate() {
        return photoSdate;
    }

    public void setPhotoSdate(Date photoSdate) {
        this.photoSdate = photoSdate;
    }

    public Date getPhotoUdate() {
        return photoUdate;
    }

    public void setPhotoUdate(Date photoUdate) {
        this.photoUdate = photoUdate;
    }

    public String getPhotoSysname() {
        return photoSysname;
    }

    public void setPhotoSysname(String photoSysname) {
        this.photoSysname = photoSysname;
    }

    public String getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(String goodsId) {
        this.goodsId = goodsId;
    }

    public String getPhotoPath() {
        return photoPath;
    }

    public void setPhotoPath(String photoPath) {
        this.photoPath = photoPath;
    }

    public Long getPhotoSize() {
        return photoSize;
    }

    public void setPhotoSize(Long photoSize) {
        this.photoSize = photoSize;
    }

    public String getPhotoUffix() {
        return photoUffix;
    }

    public void setPhotoUffix(String photoUffix) {
        this.photoUffix = photoUffix;
    }
}
