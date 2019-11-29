package com.zhg.javakc.modules.buyer.supplier.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.buyer.supplier.dao.WaresDao;
import com.zhg.javakc.modules.buyer.supplier.entity.WaresEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: javakc_ssm
 * @author: DH
 * @create: 2019-11-25 16:52
 **/
@Service
public class WaresService extends BaseService<WaresDao, WaresEntity> {

    @Autowired
    WaresDao waresDao;

    public Page<WaresEntity> queryWares(WaresEntity waresEntity, Page<WaresEntity> page){
        // 设置分页参数，才会被Mybatis分页插件所识别
        // 在其sql的前后加入分页sql语句
        waresEntity.setPage(page);
        //根据分页与查询条件进行测试数据的查询
        List<WaresEntity> waresList = waresDao.findList(waresEntity);
        //将查询数据设置到分页类的List集合中，一起返回
        page.setList(waresList);
        return page;
    }


    public Page<WaresEntity> queryDetils(WaresEntity waresEntity,Page<WaresEntity> page){

        waresEntity.setPage(page);

        List<WaresEntity> waresList = waresDao.queryDetils(waresEntity);

        page.setList(waresList);

        return page;
    }

}
