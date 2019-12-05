package com.zhg.javakc.modules.runcenter.title.entity;

import com.zhg.javakc.base.entity.BaseEntity;

public class RelateEntity extends BaseEntity<RelateEntity> {

    private String articleId;
    private String goodsId;

    public String getArticleId() {
        return articleId;
    }

    public void setArticleId(String articleId) {
        this.articleId = articleId;
    }

    public String getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(String goodsId) {
        this.goodsId = goodsId;
    }
}
