package com.nguyenhuutai.utity;

public class SanPham {
	public int idSanPham;
	private String tenSanPham;
	private int donGia;
	private int soLuong;
	
	public SanPham() {
	}
	
	public SanPham(int idSanPham, String tenSanPham, int donGia, int soLuong) {
		super();
		this.idSanPham = idSanPham;
		this.tenSanPham = tenSanPham;
		this.donGia = donGia;
		this.soLuong = soLuong;
	}

	public int getIdSanPham() {
		return idSanPham;
	}
	public void setIdSanPham(int idSanPham) {
		this.idSanPham = idSanPham;
	}
	public String getTenSanPham() {
		return tenSanPham;
	}
	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public int getDonGia() {
		return donGia;
	}

	public void setDonGia(int donGia) {
		this.donGia = donGia;
	}
}
