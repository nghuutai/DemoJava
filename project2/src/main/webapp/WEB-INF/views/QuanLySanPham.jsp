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
		<div class="form-sanpham">
			<form action="/project2/admin" method="post">
			  <div class="form-group">
			    <label for="exampleFormControlInput1">Tên sản phẩm</label>
			    <input type="text" class="form-control"name="tenSanPham" id="exampleFormControlInput1" placeholder="Nhập tên sản phẩm">
			  </div>
			  <div class="form-group">
			    <label for="exampleFormControlInput1">Đơn giá</label>
			    <input type="text" class="form-control" name="donGia" id="exampleFormControlInput1" placeholder="Nhập đơn giá">
			  </div>
			  <div class="form-group">
			    <label for="exampleFormControlInput1">Số lượng</label>
			    <input type="text" class="form-control" name="soLuong" id="exampleFormControlInput1" placeholder="Nhập số ">
			  </div>
			  <button type="submit" class="btn btn-primary mb-2">Thêm sản phẩm</button>
			</form>
		</div>
		
		<div class="form-sanpham">
			<table class="table table-striped">
			  <thead>
			    <tr>
			      <th scope="col">ID </th>
			      <th scope="col">Tên sản phẩm</th>
			      <th scope="col">Đơn giá</th>
			      <th scope="col">Số Lượng</th>
			      <th scope="col">Action</th>
			    </tr>
			  </thead>
			  <tbody>
			  	<%
			  		List<SanPham> list = (List<SanPham>) request.getAttribute("listSP");
			    	for(SanPham sp : list){
			  	%>
			  		<tr>
				      <th scope="row"><%= sp.getIdSanPham() %></th>
				      <td><%= sp.getTenSanPham() %></td>
				      <td><%= sp.getDonGia() %></td>
				      <td><%= sp.getSoLuong() %></td>
				      <td>
				      	<div class="btn-group">
				      		<a href="suasanpham/<%= sp.getIdSanPham() %>" ><button type="button" class="btn btn-warning">Edit</button></a>
				      	</div>
				      	<div class="btn-group">
				      		<a href="admin/<%= sp.getIdSanPham() %>"><button type="button" class="btn btn-danger">Delete</button></a>
				      	</div>
				      </td>
				    </tr>
			  	<%
			    	}
			  	%>
			  </tbody>
			</table>
		</div>
	</div>

	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>