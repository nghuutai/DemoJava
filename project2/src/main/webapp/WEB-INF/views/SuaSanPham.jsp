<%@page import="com.nguyenhuutai.utity.SanPham"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="<c:url value="/recources/style.css" />" rel="stylesheet">
</head>
<body>

	<div class="container">
		<%
			SanPham sp = (SanPham) request.getAttribute("sanPham");
		%>
		<div class="form-sanpham">
			<form action="<%= sp.getIdSanPham() %>" method="post">
			  <div class="form-group">
			    <input type="hidden" class="form-control"name="idSanPham" value="<%= sp.getIdSanPham() %>" id="exampleFormControlInput1">
			  </div>
			  <div class="form-group">
			    <label for="exampleFormControlInput1">Tên sản phẩm</label>
			    <input type="text" class="form-control"name="tenSanPham" value="<%= sp.getTenSanPham() %>" id="exampleFormControlInput1" placeholder="Nhập tên sản phẩm">
			  </div>
			  <div class="form-group">
			    <label for="exampleFormControlInput1">Đơn giá</label>
			    <input type="text" class="form-control" name="donGia" value="<%= sp.getDonGia() %>" id="exampleFormControlInput1" placeholder="Nhập đơn giá">
			  </div>
			  <div class="form-group">
			    <label for="exampleFormControlInput1">Số lượng</label>
			    <input type="text" class="form-control" name="soLuong" value="<%= sp.getSoLuong() %>" id="exampleFormControlInput1" placeholder="Nhập số ">
			  </div>
			  <button type="submit" class="btn btn-primary mb-2">Lưu</button>
			  <a href="/project2/admin"><button type="button" class="btn btn-primary mb-2">Cancle</button></a>
			</form>
			<%
				if((Integer) request.getAttribute("result") == 1) {
			%>
				<div class="alert alert-success" role="alert">
				  Edit product successfull!
				</div>
			<%
				}
			%>
		</div>
	</div>

	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>