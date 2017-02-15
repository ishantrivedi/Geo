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

import com.geo.dao.ProductDao;
import com.geo.model.Product;


@Controller
@RequestMapping("/admin")
public class AdminProduct {

    private Path path;

    @Autowired
    private ProductDao productDao;

    @Transactional
    @RequestMapping("/ListofProducts")
    public String getProducts(Model model) {
        List<Product> products = productDao.getProductList();
        model.addAttribute("products", products);

        return "ListofProducts";
    }
    
    
    @RequestMapping("/addProduct")
    public String addProduct(Model model) {
    	
        Product product = new Product();
        product.setProductCategory("Software");
        product.setProductCategory("Books");
        product.setProductCategory("Magazine");
        product.setProductCondition("new");
        product.setProductStatus("active");

        model.addAttribute("product", product);

        return "addProduct";
    }

    @Transactional
    @RequestMapping(value="/addProduct", method = RequestMethod.POST)
    public String addProductPost(@Valid @ModelAttribute("product") Product product, BindingResult result,
                                 HttpServletRequest request) {
        if(result.hasErrors()) {
            return "denied";
        }

        productDao.addProduct(product);

        MultipartFile productImage = product.getProductImage();
        
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\"+product.getProductId()+".jpg");
        //path=Paths.get("D:\\img\\"+product.getProductId()+".jpg");


        if (productImage != null && !productImage.isEmpty()) {
            try {
                productImage.transferTo(new File(path.toString()));
            } catch (Exception e) {
                e.printStackTrace();
                throw new RuntimeException("Product image saving failed.", e);
            }
        }

        return "redirect:/admin/ListofProducts";
        /*return "redirect:/admin/chargeablesoftware";*/
    }

    @Transactional
    @RequestMapping("/editProduct/{id}")
    /*@RequestMapping("/product/editProduct/{id}")*/
    public String editProduct(@PathVariable("id") int id, Model model) {
        Product product = productDao.getProductById(id);
        model.addAttribute("product", product);
        return "editProduct";
    }

    @RequestMapping(value="/editProduct", method = RequestMethod.POST)
    /*@RequestMapping(value="/product/editProduct", method = RequestMethod.POST)*/
    public String editProductPost(@Valid @ModelAttribute("product") Product product, BindingResult result,
                                 HttpServletRequest request) {
        if(result.hasErrors()) {
            return "editProduct";
        }

        MultipartFile productImage = product.getProductImage();
        
        //String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        //path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\"+product.getProductId()+".jpg");
        path=Paths.get("D:\\img\\"+product.getProductId()+".jpg");

        if (productImage != null && !productImage.isEmpty()) {
            try {
                productImage.transferTo(new File(path.toString()));
            } catch (Exception e) {
                e.printStackTrace();
                throw new RuntimeException("Product image saving failed.", e);
            }
        }

        productDao.editProduct(product);

        return "redirect:/admin/ListofProducts";
    }

    @Transactional
    @RequestMapping("/deleteProduct/{id}")
    /*@RequestMapping("/product/deleteProduct/{id}")*/
    public String deleteProduct(@PathVariable int id, Model model, HttpServletRequest request) {
       
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

        Product product = productDao.getProductById(id);
        productDao.deleteProduct(product);

        return "redirect:/admin/ListofProducts";
    }
}
