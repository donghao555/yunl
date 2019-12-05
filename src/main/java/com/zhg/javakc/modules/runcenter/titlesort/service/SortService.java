package com.zhg.javakc.modules.runcenter.titlesort.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.runcenter.titlesort.dao.SortDao;
import com.zhg.javakc.modules.runcenter.titlesort.entity.SortEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SortService extends BaseService<SortDao, SortEntity> {

    @Autowired
    SortDao sortDao;

    public Page<SortEntity> querySort(SortEntity sortEntity, Page<SortEntity> page){
        // 设置分页参数，才会被Mybatis分页插件所识别，
        // 再其sql的前后加入分页sql语句
        sortEntity.setPage(page);
        // 根据分页与查询条件进行测试数据的查询
        List<SortEntity> sortList = sortDao.findList(sortEntity);
        // 将查询数据设置到分页类的List集合中，一起返回
        page.setList(sortList);

        return page;
    }

}
