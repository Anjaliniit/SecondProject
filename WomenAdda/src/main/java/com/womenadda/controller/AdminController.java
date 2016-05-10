package com.womenadda.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Qualifier;

import com.google.gson.Gson;
import com.womenadda.dao.ProductDAO;
import com.womenadda.model.Product;
import com.womenadda.service.ProductService;

@Controller
public class AdminController {

	private ProductService productService;
	@Autowired(required=true)
	@Qualifier(value="productService")
	public void setProductService(ProductService ps)
	{
		this.productService=ps;
		
	}
	@RequestMapping(value="/admin")
	String getAllProducts(Model model)
	{
		    model.addAttribute("product", new Product());
	        model.addAttribute("listProduct", productService.getAllProducts());
	        System.out.println(new Gson().toJson(productService.getAllProducts()));
	        return "admin";	
	}
	@RequestMapping(value="/admin/add")
	String insertProduct(@ModelAttribute("product") Product p)
	{
	if(p.getId()==0)
	{
		productService.addProduct(p);	
	}
	else{
		productService.updateProduct(p);		
	}
	return "redirect:/admin";
	}
	
	@RequestMapping("/delete/{id}")
	String deleteProduct(@PathVariable("id") int id)
	{
		
		productService.removeProduct(id);
		return "redirect:/admin";
	}
	
	@RequestMapping("/edit/{id}")
    public String updateProduct(@PathVariable("id") int id, Model model){
        model.addAttribute("product", this.productService.getProductById(id));
        model.addAttribute("listProduct",this.productService.getAllProducts());
        return "admin";
    }    
}

