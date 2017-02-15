package com.geo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.geo.dao.CustomerDao;
import com.geo.model.Customer;


@Controller
@RequestMapping("/customer/cart")
public class CartController {

    @Autowired
    private CustomerDao customerService;

    @RequestMapping
    public String getCart(@AuthenticationPrincipal User activeUser){
    	System.out.println(activeUser.getUsername());
        Customer customer = customerService.getCustomerByCustomername (activeUser.getUsername());
        int cartId = customer.getCart().getCartId();
        System.out.println("Cart ID:"+cartId);
        return "redirect:/customer/cart/"+cartId;
    }

    @RequestMapping("/{cartId}")
    public String getCartRedirect(@PathVariable (value = "cartId") int cartId, Model model) {
        model.addAttribute("cartId", cartId);

        return "cart";
    }

}
