package com.zhg.javakc.modules.goodscenter.room.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.goodscenter.room.dao.RoomDao;
import com.zhg.javakc.modules.goodscenter.room.entity.GoodsEntity;
import com.zhg.javakc.modules.test.entity.TestEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: javakc_ssm
 * @author: DH
 * @create: 2019-11-22 20:25
 **/
@Service
public class RoomService extends BaseService<RoomDao, GoodsEntity> {
    @Autowired
    private RoomDao roomDao;
    public Page<GoodsEntity> queryGoods(GoodsEntity goodsEntity,Page<GoodsEntity> page){

        // 设置分页参数，才会被Mybatis分页插件所识别，
        // 再其sql的前后加入分页sql语句
        goodsEntity.setPage(page);
        // 根据分页与查询条件进行测试数据的查询
        List<GoodsEntity> goodsList =roomDao.findList(goodsEntity);
        // 将查询数据设置到分页类的List集合中，一起返回
        page.setList(goodsList);
        return page;
    }




}
