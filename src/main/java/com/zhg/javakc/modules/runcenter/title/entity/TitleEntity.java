package com.zhg.javakc.modules.runcenter.title.entity;

import com.zhg.javakc.base.entity.BaseEntity;

public class TitleEntity extends BaseEntity<TitleEntity> {

    private String articleId;
    private String artgroupId;
    private String articleTitle;
    private String articleType;
    private int articleReading;
    private int articleState;
    private int articleRecommend;
    private byte[] articlePhoto;
    private String articleSynopsis;
    private String articleDetails;

    public String getArticleId() {
        return articleId;
    }

    public void setArticleId(String articleId) {
        this.articleId = articleId;
    }

    public String getArtgroupId() {
        return artgroupId;
    }

    public void setArtgroupId(String artgroupId) {
        this.artgroupId = artgroupId;
    }

    public String getArticleTitle() {
        return articleTitle;
    }

    public void setArticleTitle(String articleTitle) {
        this.articleTitle = articleTitle;
    }

    public String getArticleType() {
        return articleType;
    }

    public void setArticleType(String articleType) {
        this.articleType = articleType;
    }

    public int getArticleReading() {
        return articleReading;
    }

    public void setArticleReading(int articleReading) {
        this.articleReading = articleReading;
    }

    public int getArticleState() {
        return articleState;
    }

    public void setArticleState(int articleState) {
        this.articleState = articleState;
    }

    public int getArticleRecommend() {
        return articleRecommend;
    }

    public void setArticleRecommend(int articleRecommend) {
        this.articleRecommend = articleRecommend;
    }

    public byte[] getArticlePhoto() {
        return articlePhoto;
    }

    public void setArticlePhoto(byte[] articlePhoto) {
        this.articlePhoto = articlePhoto;
    }

    public String getArticleSynopsis() {
        return articleSynopsis;
    }

    public void setArticleSynopsis(String articleSynopsis) {
        this.articleSynopsis = articleSynopsis;
    }

    public String getArticleDetails() {
        return articleDetails;
    }

    public void setArticleDetails(String articleDetails) {
        this.articleDetails = articleDetails;
    }
}
