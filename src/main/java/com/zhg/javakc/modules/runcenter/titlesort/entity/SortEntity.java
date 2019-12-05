package com.zhg.javakc.modules.runcenter.titlesort.entity;

import com.zhg.javakc.base.entity.BaseEntity;

public class SortEntity extends BaseEntity<SortEntity> {

    private String artgroupId;
    private byte[] articlePreview;
    private  String articleName;
    private  String articleRemarke;
    private  int articleState;


    public String getArtgroupId() {
        return artgroupId;
    }

    public void setArtgroupId(String artgroupId) {
        this.artgroupId = artgroupId;
    }

    public byte[] getArticlePreview() {
        return articlePreview;
    }

    public void setArticlePreview(byte[] articlePreview) {
        this.articlePreview = articlePreview;
    }

    public String getArticleName() {
        return articleName;
    }

    public void setArticleName(String articleName) {
        this.articleName = articleName;
    }

    public String getArticleRemarke() {
        return articleRemarke;
    }

    public void setArticleRemarke(String articleRemarke) {
        this.articleRemarke = articleRemarke;
    }

    public int getArticleState() {
        return articleState;
    }

    public void setArticleState(int articleState) {
        this.articleState = articleState;
    }
}
