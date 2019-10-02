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
public class QLSanPhamController {

	@GetMapping("/admin")
	public String trangQuanLySanPham(ModelMap modelMap) {
		ApplicationContext context = new ClassPathXmlApplicationContext("IoC.xml");
		DatabaseSanPham db = (DatabaseSanPham) context.getBean("databasesanpham");
		List<SanPham> listSP = db.getListSanPham();
		modelMap.addAttribute("listSP", listSP);
		return "QuanLySanPham";
	}
	
	@PostMapping("/admin")
	public String themSanPham(@RequestParam String tenSanPham, @RequestParam int donGia, @RequestParam int soLuong, ModelMap modelMap) {
		ApplicationContext context = new ClassPathXmlApplicationContext("IoC.xml");
		DatabaseSanPham db = (DatabaseSanPham) context.getBean("databasesanpham");
		SanPham sp = new SanPham();
		sp.setTenSanPham(tenSanPham);
		sp.setDonGia(donGia);
		sp.setSoLuong(soLuong);
		db.addSanPham(sp);
		List<SanPham> listSP = db.getListSanPham();
		modelMap.addAttribute("listSP", listSP);
		return "QuanLySanPham";
	}
	
	@GetMapping("/admin/{id}")
	public String xoaSanPham(@PathVariable int id, ModelMap modelMap) {
		ApplicationContext context = new ClassPathXmlApplicationContext("IoC.xml");
		DatabaseSanPham db = (DatabaseSanPham) context.getBean("databasesanpham");
		db.xoaSanPham(id);
		List<SanPham> listSP = db.getListSanPham();
		modelMap.addAttribute("listSP", listSP);
		return "QuanLySanPham";
	}
}
