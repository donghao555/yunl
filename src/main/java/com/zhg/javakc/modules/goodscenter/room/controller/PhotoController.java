package com.zhg.javakc.modules.goodscenter.room.controller;

import com.zhg.javakc.modules.goodscenter.room.entity.PhotoEntity;
import com.zhg.javakc.modules.goodscenter.room.service.PhotoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;


import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

@Controller
@RequestMapping("photo")
public class PhotoController {

    @Autowired
    private PhotoService photoService;

    private String path = "E:\\uploadYunl\\";


    /**
     * 图片展示
     */


    /**
     * 图片上传
     * CommonsMultipartFile
     * MultipartFile
     *
     * @PostMapping("upload")
     * @RequestParam(value="file",required=false)
     */

    @RequestMapping(value = "upload", method = RequestMethod.POST)
    @ResponseBody
    public String upload(@RequestParam CommonsMultipartFile photo,PhotoEntity entity) {

        //用户上传真实文件名称
        String photoName = photo.getOriginalFilename();
        //获取上传文件后缀
        String photoSuffix = photoName.substring(photoName.lastIndexOf(".") + 1);
        //系统自动生成一文件名称
        String photoSysname = UUID.randomUUID().toString().replaceAll("-","")+".png";
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        String datePath = format.format(new Date());

        File file = new File(path + datePath);
        if (!file.exists()) {
            //如果不存在，则创建该目录
            file.mkdirs();
        }

        //走到这目录已经有了

        //attachment是一个输入流，transferTo是一个输出流
        datePath = datePath + File.separator + photoSysname;
        String photoPath = path+datePath;
        //向服务器中写入客户端文件
        File serverFile = new File(path + datePath);
        //将输入流的东西写入到输出流中
        try {
            photo.transferTo(serverFile);//文件上传，如果正确，向数据库插入
            //封装附件参数

            entity.setPhotoId(UUID.randomUUID().toString().replaceAll("-",""));
            entity.setPhotoName(photoName);
            entity.setPhotoUffix(photoSuffix);
            entity.setPhotoSysname(photoSysname);
            entity.setPhotoPath(photoPath);
            entity.setPhotoSize(photo.getSize());
            photoService.save(entity);
        } catch (IOException e) {
            if (serverFile.exists()) {
                serverFile.delete();
            }
            e.printStackTrace();
        }
        return "成功";
    }


}
