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

//    public List<WaresEntity> geta(String id,WaresEntity waresEntity){
//        List<WaresEntity> waresList = waresDao.get(waresEntity);
//
//        return null;
//    }



}
