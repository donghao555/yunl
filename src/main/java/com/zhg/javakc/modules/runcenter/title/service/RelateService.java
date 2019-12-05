package com.zhg.javakc.modules.runcenter.title.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.runcenter.title.dao.RelateDao;

import com.zhg.javakc.modules.runcenter.title.entity.RelateEntity;
import com.zhg.javakc.modules.runcenter.title.entity.TitleEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RelateService extends BaseService<RelateDao, RelateEntity> {

    @Autowired
    RelateDao relateDao;

    public Page<RelateEntity> queryRelate(RelateEntity relateEntity, Page<RelateEntity> page) {


        relateEntity.setPage(page);

        List<RelateEntity> relateList = relateDao.findList(relateEntity);
        // 将查询数据设置到分页类的List集合中，一起返回
        page.setList(relateList);
        return page;
    }

}
