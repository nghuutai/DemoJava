package com.nguyenhuutai.utity;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class DatabaseSanPham {
	
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource dbShopBanHang) {
		this.jdbcTemplate = new JdbcTemplate(dbShopBanHang);
	}

	public List<SanPham> getListSanPham() {
		String sql = "select * from SanPham";
		List<SanPham> listSanPham = jdbcTemplate.query(sql, new RowMapper<SanPham>() {

			public SanPham mapRow(ResultSet rs, int rowNum) throws SQLException {
				SanPham sanPham = new SanPham();
				sanPham.setIdSanPham(rs.getInt("idSanPham"));
				sanPham.setTenSanPham(rs.getString("tenSanPham"));
				sanPham.setDonGia(rs.getInt("donGia"));
				sanPham.setSoLuong(rs.getInt("soLuong"));
				return sanPham;
			}
		});
		return listSanPham;
	}
	
	public SanPham getSanPhamByID(int id) {
		String sql = "SELECT * FROM shopbanhang.SanPham where idSanPham = ?;";
		SanPham sp = jdbcTemplate.queryForObject(sql, new RowMapper<SanPham>() {
			public SanPham mapRow(ResultSet rs, int rowNum) throws SQLException {
                SanPham sanPham = new SanPham();
                sanPham.setIdSanPham(rs.getInt("idSanPham"));
				sanPham.setTenSanPham(rs.getString("tenSanPham"));
				sanPham.setDonGia(rs.getInt("donGia"));
				sanPham.setSoLuong(rs.getInt("soLuong"));
                return sanPham;
            }
		}, id);
		return sp;
	}
	
	public void addSanPham(final SanPham sp) {
		String sql = "INSERT INTO `shopbanhang`.`SanPham` (`tenSanPham`, `donGia`, `soLuong`) VALUES (?, ?, ?);";
		int results = jdbcTemplate.update(sql, sp.getTenSanPham(), sp.getDonGia(), sp.getSoLuong());
	}
	
	public int suaSanPham(final SanPham sp) {
		String sql = "UPDATE `shopbanhang`.`SanPham` SET `tenSanPham` = ?, `donGia` = ?, `soLuong` = ? WHERE (`idSanPham` = ?);";
		int result = jdbcTemplate.update(sql, sp.getTenSanPham(), sp.getDonGia(), sp.getSoLuong(), sp.getIdSanPham());
		return result;
	}
	
	public int xoaSanPham(int id) {
		String sql = "DELETE FROM `shopbanhang`.`SanPham` WHERE (`idSanPham` = ?);";
		int result = jdbcTemplate.update(sql, id);
		return result;
	}
}
