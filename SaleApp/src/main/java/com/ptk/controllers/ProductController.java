/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ptk.controllers;

import com.ptk.pojo.Product;
import com.ptk.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author Kien
 */
@Controller
public class ProductController {

    @Autowired
    private ProductService proService;

    @GetMapping("/products")
    public String list(Model model) {
        model.addAttribute("product", new Product());
        return "products";
    }

    @PostMapping("/products")
    public String add(@ModelAttribute(value = "product") Product p) {
        if (this.proService.addOrUpdateProduct(p) == true) {
            return "redirect:/";
        }
        return "/products";
    }
}
