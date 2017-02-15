package com.geo.admin;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.geo.dao.SupplierDao;
import com.geo.model.Supplier;


@Controller
@RequestMapping("/admin")
public class AdminSupplier {

    private Path path;

    @Autowired
    private SupplierDao supplierDao;

    @Transactional
    @RequestMapping("/supplierInventory")
  //@RequestMapping("/supplierhome")  
    public String getSuppliers(Model model) {
        List<Supplier> suppliers = supplierDao.getSupplierList();
        model.addAttribute("suppliers", suppliers);

        return "supplierInventory";
      //return "supplierhome";  
    }
    
    
    @Transactional
    @RequestMapping("/addSupplier")
    public String addSupplier(Model model) {
    	
        Supplier supplier = new Supplier();

        model.addAttribute("supplier", supplier);

        return "addSupplier";
    }

    @Transactional
    @RequestMapping(value="/addSupplier", method = RequestMethod.POST)
    public String addSupplierPost(@Valid @ModelAttribute("supplier") Supplier supplier, BindingResult result,
                                 HttpServletRequest request) {
        if(result.hasErrors()) {
            return "denied";
        }

        supplierDao.addSupplier(supplier);

     //   MultipartFile supplierImage = supplier.getSupplierImage();
        
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\"+supplier.getSupplierId()+".jpg");
        //path=Paths.get("D:\\img\\"+supplier.getSupplierId()+".jpg");


       // if (supplierImage != null && !supplierImage.isEmpty()) {
         //   try {
           //     supplierImage.transferTo(new File(path.toString()));
            //} catch (Exception e) {
              //  e.printStackTrace();
                //throw new RuntimeException("Supplier image saving failed.", e);
            //}
        //}

        return "redirect:/admin/supplierInventory";
      //return "redirect:/admin/supplierhome";  
    }

    @Transactional
    @RequestMapping("/supplier/editSupplier/{id}")
    public String editSupplier(@PathVariable("id") int id, Model model) {
        Supplier supplier = supplierDao.getSupplierById(id);
        model.addAttribute("supplier", supplier);
        return "editSupplier";
    }

    @Transactional
    @RequestMapping(value="/supplier/editSupplier", method = RequestMethod.POST)
    public String editSupplierPost(@Valid @ModelAttribute("supplier") Supplier supplier, BindingResult result,
                                 HttpServletRequest request) {
        if(result.hasErrors()) {
            return "editSupplier";
        }

        //MultipartFile supplierImage = supplier.getSupplierImage();
        
        //String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        //path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\"+supplier.getSupplierId()+".jpg");
        path=Paths.get("D:\\img\\"+supplier.getSupplierId()+".jpg");

        //if (supplierImage != null && !supplierImage.isEmpty()) {
          //  try {
            //    supplierImage.transferTo(new File(path.toString()));
            //} catch (Exception e) {
              //  e.printStackTrace();
                //throw new RuntimeException("Supplier image saving failed.", e);
           // }
        //}

        supplierDao.editSupplier(supplier);

        return "redirect:/admin/supplierInventory";
    }

    @Transactional
    @RequestMapping("/supplier/deleteSupplier/{id}")
    public String deleteSupplier(@PathVariable int id, Model model, HttpServletRequest request) {
       
    	//String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        //path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" + id + ".jpg");
    	path=Paths.get("D:\\img\\"+id+".jpg");
        if (Files.exists(path)) {
            try {
                Files.delete(path);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        Supplier supplier = supplierDao.getSupplierById(id);
        supplierDao.deleteSupplier(supplier);

        return "redirect:/admin/supplierInventory";
    }
}
