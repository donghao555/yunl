package com.zhg.javakc.modules.buyer.supplier.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.buyer.supplier.dao.SupplierDao;
import com.zhg.javakc.modules.buyer.supplier.entity.SupplierEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: javakc_ssm
 * @author: DH
 * @create: 2019-11-23 12:47
 **/
@Service
public class SupplierService extends BaseService<SupplierDao, SupplierEntity> {

    @Autowired
    SupplierDao supplierDao;

    public Page<SupplierEntity> querySupplier(SupplierEntity supplierEntity, Page<SupplierEntity> page){
        // 设置分页参数，才会被Mybatis分页插件所识别
        // 在其sql的前后加入分页sql语句
        supplierEntity.setPage(page);
        //根据分页与查询条件进行测试数据的查询
        List<SupplierEntity> supplierList = supplierDao.findList(supplierEntity);
        //将查询数据设置到分页类的List集合中，一起返回
        page.setList(supplierList);
        return page;
    }
}
