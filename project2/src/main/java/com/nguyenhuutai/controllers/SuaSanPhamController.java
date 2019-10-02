package com.nguyenhuutai.controllers;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.nguyenhuutai.utity.DatabaseSanPham;
import com.nguyenhuutai.utity.SanPham;

@Controller
public class SuaSanPhamController {

	@GetMapping("suasanpham/{id}")
	public String trangSuaSanPham(@PathVariable int id, ModelMap modelMap) {
		ApplicationContext context = new ClassPathXmlApplicationContext("IoC.xml");
		DatabaseSanPham db = (DatabaseSanPham) context.getBean("databasesanpham");
		SanPham sp = db.getSanPhamByID(id);
		modelMap.addAttribute("sanPham",sp);
		modelMap.addAttribute("result", 0);
		return "SuaSanPham";
	}
	
	@PostMapping("suasanpham/{id}")
	public String suaSanPham(@RequestParam int idSanPham, @RequestParam String tenSanPham, @RequestParam int donGia, @RequestParam int soLuong, ModelMap modelMap) {
		ApplicationContext context = new ClassPathXmlApplicationContext("IoC.xml");
		DatabaseSanPham db = (DatabaseSanPham) context.getBean("databasesanpham");
		SanPham sp = new SanPham();
		sp.setIdSanPham(idSanPham);
		sp.setTenSanPham(tenSanPham);
		sp.setDonGia(donGia);
		sp.setSoLuong(soLuong);
		int kq = db.suaSanPham(sp);	
		modelMap.addAttribute("sanPham",sp);
		modelMap.addAttribute("result", kq);
		return "SuaSanPham";
	}
}
