package com.nguyenhuutai.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nguyenhuutai.utity.DatabaseSanPham;
import com.nguyenhuutai.utity.SanPham;


@Controller
public class HomeController {

	@RequestMapping("/")
	public String HomePage(ModelMap modelMap) {
		ApplicationContext context = new ClassPathXmlApplicationContext("IoC.xml");
		DatabaseSanPham db = (DatabaseSanPham) context.getBean("databasesanpham");
		List<SanPham> listSP = db.getListSanPham();
		modelMap.addAttribute("ListSanPham", listSP);
		return "index";
	}
} 
