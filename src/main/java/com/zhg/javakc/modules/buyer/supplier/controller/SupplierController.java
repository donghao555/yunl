package com.zhg.javakc.modules.buyer.supplier.controller;
import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.buyer.supplier.entity.SupplierEntity;
import com.zhg.javakc.modules.buyer.supplier.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @program: javakc_ssm
 * @author: DH
 * @create: 2019-11-22 20:52
 **/
@Controller
@RequestMapping("/supplier")
public class SupplierController {

    @Autowired
    SupplierService supplierService;

    @RequestMapping("querySupplier")
    public ModelAndView querySupplier (SupplierEntity supplierEntity, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView = new ModelAndView("buyer/supplier/list");

        Page<SupplierEntity> page = supplierService.querySupplier(supplierEntity, new Page<SupplierEntity>(request, response));
        modelAndView.addObject("page",page);

        return modelAndView;
    }

    @RequestMapping("/detils/{id}")
    public String detils(@PathVariable String id, ModelMap modelMap){
        SupplierEntity supplierEntity = supplierService.get(id);
        modelMap.put("supplierEntity",supplierEntity);
        return "buyer/supplier/detils";
    }

    @RequestMapping("/save")
    public String save(SupplierEntity supplierEntity){
        // ##设置ID
        supplierEntity.setSupplierId(CommonUtil.uuid());
        supplierService.save(supplierEntity);
        return "redirect:querySupplier.do";
    }

    @RequestMapping("/view/{id}")
    public String view(@PathVariable String id, ModelMap modelMap){
        SupplierEntity supplierEntity = supplierService.get(id);
        modelMap.put("supplierEntity",supplierEntity);
        return "buyer/supplier/update";
    }

    @RequestMapping("/update")
    public String update(SupplierEntity supplierEntity){
        supplierService.update(supplierEntity);
        return "redirect:/supplier/querySupplier.do";
    }

    @RequestMapping("/delete")
    public String delete(String[] ids){
        supplierService.delete(ids);
        return "redirect:querySupplier.do";
    }
    @RequestMapping("/deleteA/{id}")
    public String delete1A(@PathVariable String[] id){
        supplierService.delete(id);
        return "redirect:/supplier/querySupplier.do";
    }
}



