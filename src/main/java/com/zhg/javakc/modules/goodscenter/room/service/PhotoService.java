package com.zhg.javakc.modules.goodscenter.room.service;

import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.goodscenter.room.dao.PhotoDao;
import com.zhg.javakc.modules.goodscenter.room.entity.PhotoEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PhotoService extends BaseService<PhotoDao, PhotoEntity> {
    @Autowired
    private PhotoDao photoDao;
}
