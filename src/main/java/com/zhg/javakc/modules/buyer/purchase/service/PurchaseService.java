package com.zhg.javakc.modules.buyer.purchase.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.buyer.purchase.dao.PurchaseDao;
import com.zhg.javakc.modules.buyer.purchase.entity.PurchaseEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: javakc_ssm
 * @author: DH
 * @create: 2019-11-26 15:21
 **/
@Service
public class PurchaseService extends BaseService<PurchaseDao, PurchaseEntity> {

    @Autowired
    PurchaseDao purchaseDao;

    public Page<PurchaseEntity> queryPurchase(PurchaseEntity purchaseEntity, Page<PurchaseEntity> page){
        purchaseEntity.setPage(page);
        List<PurchaseEntity> purchaseList = purchaseDao.findList(purchaseEntity);
        page.setList(purchaseList);
        return page;
    }
}
