package com.womenadda.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.womenadda.model.Product;
import com.womenadda.service.ProductService;

@Controller
public class ProductController {

	private ProductService productService;
	@Autowired(required=true)
	@Qualifier(value="productService")
	public void setProductService(ProductService ps)
	{
		this.productService=ps;
		
	}
	@RequestMapping(value="/product")
	public ModelAndView productPage()
	{		List<Product> list=	this.productService.getAllProducts();
			Gson gson=new Gson();
			String json=gson.toJson(list);
			ModelAndView modelView=new  ModelAndView("product");
		    modelView.addObject("productList",json);
		    return modelView;
	}
	
	@RequestMapping(value="/productDetail")
	public ModelAndView productDetailPage(@ModelAttribute("p")Product p)
	{		ModelAndView modelView=new  ModelAndView("productDetail");
			
			return modelView;


	}
}