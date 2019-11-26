package com.zhg.javakc.modules.runcenter.title.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.goodscenter.room.entity.GoodsEntity;
import com.zhg.javakc.modules.runcenter.title.dao.TitleDao;
import com.zhg.javakc.modules.runcenter.title.entity.TitleEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TitleService extends BaseService<TitleDao, TitleEntity> {

    @Autowired
    TitleDao titleDao;

    public Page<TitleEntity> queryTitle(TitleEntity titleEntity, Page<TitleEntity> page){

        // 设置分页参数，才会被Mybatis分页插件所识别，
        // 再其sql的前后加入分页sql语句
        titleEntity.setPage(page);
        // 根据分页与查询条件进行测试数据的查询
        List<TitleEntity> titleList =titleDao.findList(titleEntity);
        // 将查询数据设置到分页类的List集合中，一起返回
        page.setList(titleList);
        return page;
    }

}
