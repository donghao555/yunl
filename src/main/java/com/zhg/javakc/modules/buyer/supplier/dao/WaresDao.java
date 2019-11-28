package com.zhg.javakc.modules.buyer.supplier.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.buyer.supplier.entity.WaresEntity;

import java.util.List;

public interface WaresDao extends BaseDao<WaresEntity> {

    public List<WaresEntity> geta(String id);
}
