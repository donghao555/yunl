package com.zhg.javakc.modules.runcenter.title.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.runcenter.title.dao.GoodDao;
import com.zhg.javakc.modules.runcenter.title.dao.TitleDao;
import com.zhg.javakc.modules.runcenter.title.entity.GoodEntity;
import com.zhg.javakc.modules.runcenter.title.entity.TitleEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodService extends BaseService<GoodDao, GoodEntity> {

    @Autowired
    GoodDao goodDao;

    public Page<GoodEntity> queryGood(GoodEntity goodEntity, Page<GoodEntity> page){

        goodEntity.setPage(page);

        List<GoodEntity> goodList =goodDao.findList(goodEntity);
        // 将查询数据设置到分页类的List集合中，一起返回
        page.setList(goodList);
        return page;
    }

}
