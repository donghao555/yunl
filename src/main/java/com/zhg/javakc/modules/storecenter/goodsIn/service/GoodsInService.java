package com.zhg.javakc.modules.storecenter.goodsIn.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.storecenter.goodsIn.dao.GoodsInDao;
import com.zhg.javakc.modules.storecenter.goodsIn.entity.GoodsInEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsInService extends BaseService<GoodsInDao,GoodsInEntity> {
    @Autowired
    GoodsInDao goodsInDao;

    public Page<GoodsInEntity> queryGoodds(GoodsInEntity goodsInEntity,Page<GoodsInEntity> page){

        goodsInEntity.setPage(page);
        List<GoodsInEntity> goodsList=goodsInDao.findList(goodsInEntity);
        page.setList(goodsList);

        return page;
    }
}
