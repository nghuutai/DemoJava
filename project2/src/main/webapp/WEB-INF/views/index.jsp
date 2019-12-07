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
		
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
		  <a class="navbar-brand" href="#">Navbar</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		
		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">Link</a>
		      </li>
		      <li class="nav-item dropdown">
		        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          Dropdown
		        </a>
		        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
		          <a class="dropdown-item" href="#">Action</a>
		          <a class="dropdown-item" href="#">Another action</a>
		          <div class="dropdown-divider"></div>
		          <a class="dropdown-item" href="#">Something else here</a>
		        </div>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link disabled" href="#">Disabled</a>
		      </li>
		    </ul>
		    <form class="form-inline my-2 my-lg-0">
		      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
		      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		    </form>
		  </div>
		</nav>
		<div>
		</div>
		<div class="row space">
			<div class="col-12">
				<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <img class="d-block w-100" src="data:image/jpeg;base64,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" alt="First slide">
				    </div>
				    <div class="carousel-item">
				      <img class="d-block w-100" src="data:image/jpeg;base64,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" alt="Second slide">
				    </div>
				    <div class="carousel-item">
				      <img class="d-block w-100" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReJQJ2bfEBOYOLYXeMu9Jst7uxOmnHYkEOvuN1fG8HQQHULvVf" alt="Third slide">
				    </div>
				  </div>
				  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="sr-only">Previous</span>
				  </a>
				  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="sr-only">Next</span>
				  </a>
				</div>
			</div>
		</div>
		<div class="row space">
			<row class="col-12">
				<h3>DANH SACH SAN PHAMsss</h3>
			</row>
		</div>
		<div class="row space">
			<%
				List<SanPham> list = (List<SanPham>) request.getAttribute("ListSanPham");
				for(SanPham sp : list){
			%>
			<div class="col-4">
				<div class="card" style="width: 18rem;">
				  <img class="card-img-top" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUTExIVFRUVFRcWFxcYFxUVFxcYFRUWFxcVFxcYHSggGBolGxUVITEhJSkrLi4uFx8zODMsNygtLisBCgoKDg0OGhAQGy0lICUtLS0tLS0tLS0uLS0tLS0tLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIALEBHAMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAADBAIFAAEGBwj/xABBEAABAwEGAwQHBAgGAwAAAAABAAIRAwQSITFBUQVhcYGRobEGEyIywdHwBxRC4TNSYnKCsrPxFSODkqLDNHPC/8QAGgEAAwEBAQEAAAAAAAAAAAAAAgMEAQAFBv/EACoRAAICAQMEAQQBBQAAAAAAAAABAhEDEiExBBNBUSIUMkKhgQVhccHw/9oADAMBAAIRAxEAPwClD0VrghMYiBg3XqrIMcArYRGlQY1FaxFrM0MwKULA1TDCheQJQIKSlcRGUkDyoJY2DARWsTNKhyRhRSJ50PhgYGlR3RRZgp3FMBTyyNlMcaRGnRhMsao03FHaAp5SY6MUY1ylfUKhhA9YUp7jUhttUhTNoSgU2tQOgqCPrFAfXcjCnyUTTWqSR1C/3x4S9oqXnNd0HcU46zjdLus58QVrcWibq8Up4qX9mXNGvKPVILT0KqLO4jNPMckyirHzjao4ji9nJJdrmutOLAd2jyVXbaMOI0xTdN0Nb0HkmrdI8v8ApycJzg/+5K7ili9glp7FyVppRUau8eZHJctxaylrgY1wVGDa0T/1Hpo42pwWxU1KV5zWgZlXnBLKXVqY0biexMeh9hv1nVXD2WAgc3H8l1DKNNhJY0AuzW5M9NxRnR9A56cre18f4IWlirq9MhWFR6XrG8ixSpbns5I2KUWyVY02AJdrYyW6TyTium9b2ASpbjd9DceSyFK7zTYKhE2cw+yLX3IjGFZBsozAUXcaOeOLKcMU2sVpUs4OigLIi7oPZQkymUZjCmmWYo7bMdkEswxYRIUkzQphGNnWnUIEpbnYSx0MU6QU/Upag0x2x26eabmMNRnrikyTGxaNCgs+7orDzCYYEptoK0J+oUvUp1xCwP5JeqR1oqa4grdBoKT4raYd2HzRbE4nJDqvYp0VBSLT1YUqdIIJJW2uKyhY3dQ3USVFlVM0auBcchgOZQ8AN0LGz8lv7sNU7TMrT2oLZ3cK51LHBanmnHUQheoAXWHqTKm2UbyXuHJXwsYOaILK3QI1m0i1DGpOVbsp7NZzrknLVYadRt1zQU81gH4ZKA46wseZt2E0pKmthOlSFMBjWwBoEUtlTMlEbTMZLdYWyVCr6SWdRVhUppapRI1TYTMk9hYYKIJlTc0rV0q3GiPJMkFtQhSDU/gn3ZWNcjMqLQpKJppDmipRsOaimyslIWoKzWgtDLRloTFKoqdjyOqfs9TfDy/JDszJalwPXQUKo1vMotNntDPH6y1TzLEA4A4sdrnniCNwtil7J55mgVgoRTdVyuyG8i4D2uoE9/JVTaBB+tyusrWW7QLY/Hj2lUNrsLgBGcAnkDLjPeB2I4UxHdfIBohHpVIVc2q5TbaTuilhbDWctC9Z3KvFocpttB3Sew0F3ii9J5bUGGYnxCuuEtNwHdOu4IKzGvd9AOEpm38ONNjLgJGLTG4JxSl071tssn1kHghBcq7FnLTWShNLhm0gJ6xNDjGRRSxJE31FAmUcD9ahPPskBrBoJPUo9Gxw/kcUzaG5kR+e6nkl4FS6q2iuqMu4d+6De5rdRpzJMJK0WlugXLFZRDKmhkE7jvUhB1CpH1iiUahTPp3QbyLwXgLRqtGo1J08UdtMJUsCM1B2sa7WEGtZ+3ombLYHuyEDc4K0ocJGrz2D5pf08lwLfUKL5OZ9URkitrEYESujqcEByf3j5JG1cOuYu79FzhJcoZHqYS2K046Ja0NT/rGjNaqsa4S1bTjuximUdRnNQJT9WzwlXsdsqsWeK8mTx6uAIat3wtCmSjizhNfU4/IvsyQFlx2Sw2LZVdntRGqfo8RdOncuyYJ/iLhlXk2+wuWfcnbK1oW6R7oTdOvTdpBUcu5HlFKyFNZ7IXYFk9rR3YhWVHgpzaZ3bIJHQglWVBreR7/gQnAxuYwRQbZNlzNMrbNZIwcOhGHaNjGmvcrepQBb0xB5695UT3jyU2PCPgmnPU7DZtx1wS9us4c26Bi4/CCe7DtUy7LqiXlqkLKa18IafZAxGLicGtGg5wFQWuzXHYAkaGInmu5fjh9dqrrVw9pMmXH6+oVGLK7owoeHWA1D+q0eKuKNhot0k80C02uMAMtEuK53zVugy2y6bUGmSMx6pKNYgHGU/ZLRIQSjR1D5h2BAPYk38ObeDmYEafLZMtcoVKimyyUVuLbo20/JbqYpdtWTnktiqvOc9wEwVpw0kcxIVJaWh0kAN5aq9NonCJ70C10GuEwD5hOxyRRjy0c06kVNlNNmjiptoqzUimyNFzsAMeStbOzK9E8kGnTDBzOfyRaRWaVyKlkb2RbUHpxhVbQcnqbklsXQ20qTmgiCJBzBQmIrVwJy3G+GFhluLDluDsUlZmObku1q0g5paciqn1DGkgkAhTZ4y8FuLqPjTW5SGzudmptsatKtpptyEqB4hS59yleHIxnel4RU1bJGiXcGjdXz6tJwwcEseHXsRkUnRK6Y6GdV8jz5gRqJaU42gDspf4cwmRgvpNRFaB0Sd1YUKhQ6VgEZpqz2VwOSXNWaslFnZLhGAIO04FHv6DPZbslGB9AKbyAp+Bc5W9jVG8Ix6JoBIvfOq22vAxSZSB0sswFshAoVZCYOS4wxDtM3TCFVtbW4FwnbM9wUW29kxegncFvmhhmUZWboZzbiZN4kY8uwAIFmrVbQbtnptc1pumq8ltEESCGXfarEZGIbpekEK94xwoVoElrSfbgwS3VoIynKdATGKbswa0BrQGtaAA0CAAMAABkF7C6hTjcRT2KpvBLc0S2tZXmDLPU1qIPIP9c+71LXdEewVZMXSwgw5jovMcIlpjAjIgjAhzTqr8VmtaXOcGtAkkmAO1Ulq4tQqOv0iSQLpN0gOGMZ7E+KQ81P5MxzS5HK9SBhhOvyVRaKrsmn66odotpJxPYgi1wcsFFlnqZNKWpj7aT7gEwXHE8vryT9kYbt1xkjVI/exIx0Hkn6T1KwohWUgEKtZyMWrZdCNSeihkoZF0V7rNJmFnq46qyrOhshU9WqrsTvcc5WqRqoVjHwgmopU3JzORZ2dysqRVVZTCsqTlOzWOMKKCgMKM0rkCwjVW8Ys0kOHQ/D4qxaVC107zCPrBa+DoumUbrDhiQlnWQaqwFldso+o3KS5VyUKT9iLbIBkUw1zxheTDbON1v7u3cpTkgtfs4JtOPxIzCd0x/hpGRCI2wu2Cf30N0eyFN3NWFkaSUibPUH4VacKa78Qhcsjk6QEoxSseqvuiEjWrNaC5xujc5Lduq5uOQVVwWyfenGvVE0WuIpM0eWmHVHDVsggDWCcok5JvZE6pbsPRqVq2NCkbp/G8+rb1Egl3YEY8M4g3ECg/8AZFRwP/KnHiF01FR4jxBlBl9/QAZuOw+aB44pbndyTdJFBwziF55pPY6lUaJLHCDGUiJDm8wSO4q6qu9gkZwSOoC8q9KPtLBqt/y6QdReHCHONSJF9gdIBvNkQRGR0C9Psloa9gcDLXNDgdw4SD3FKdVsFJNcjfDrIGN3cfedqTqZR7ZUptYTVLQzW/EdMc1lA4Lzf7X+MPoseR+BjQ3YOqHF3i0dia3pikkBGOqW51lOvRILrPVbUptxewOvOpj9YA43eR7Nlq/BlfPPod6YPs1rp1az6jqYJvXLocJBgicCJiQcxK9woW9tSlTqswbUaHgfq5hzOjXBzegCLHeOVPyE0pcEfSe0Oe9lEGGwHHmSSPADxS94NAaEW21wYdrEdmY8z3pEHUlLkvk2ebl+4ODqfH4Jem6q8kU2uf8Autvd7sAO9O8K4ea5vvkUwSAMr5Gf8IOHMg6Z9XZmBoAAAAyAwHcujjlLfhDIY7OKtFO0sEvs9QAY3mgPA6hpJCu+D21tRoLTPTcZ/BdK+s1jS5zg1ozJwC4K2ekFkbbWGiXA1SWVBcLWF2bXifxSIyxnksl08qtbnSUYPk6ksc94YMMJcdhMCOZx7k8OGj9d09kd0KNmieoCsGIMfTwkrkOS2K2pSc32Xa5OGR+RVHbWlrlW+kvp+KDxeLBTcSA134mjW9MgmJEZc1aW6sKtFtVoMc8xyKoWOWBpPh/oVjyxk/iJOepirCTZUVPbOI1a1V1lswLXiA6sS0hoIBN2J9oEhsEZz1TpTSVsthBydI9CsVJrmtc2YI1+t022iRzXlfB7RaOH2trHvq1Wu/yyx9RxB9Y4G8L5gOvGZ5ndel2a2VnTeYxgnD2y90an3QNhGmJnRTuSaUk7T4CyY5QdMsqZRmFL0yjNKJMSGapobSpgo0AIPtDZI2wQn1WodrYb7sNfNLOledNq6ZVGCYV9Y6YIZqncoZaVq4sTSHKKOU++ndSFuO6TLgskK3QjrY8Lcdyr3hVYlhJXJ4broeBVJaQtilYvKnpE/SKo65daYc7Bp2c7Bp7yFfWam2m1lNghjGhjRs1ogDuC530ifHt/qFr4/cIdH/FXQrgwQVRFbEsvBeWcrj/tOtD20zczFF5bhPtSZ8mLqrFUkIXpBwj7xTgQHtktnIyMWnYGBjuApsqbi0hmJqMk2fIbnTJOJOJO53X036C29rrFY2Xi55s9OT0aM51XmXHvs6iqfYq0nOdAbd9guOzoIjoYgFem8M4EaBo3HG4xjWmIBF1obiNsBlzSepzXD4rcZjxJP5M6+yvw6LkftO9HxaKJfEi7cfGbQCS1/YSZOmC6C+QZaceeThsYy66eCcpcRp5ONw7Pgdxyd2ErYzUo09mBvGVo+Un+i9oFS5dwn3sIjeM+xe08Nsxp2GztdIvCsed0VGgEf7nEdV19r4Dw69fcxg1ute66elNroPQBVvpE+81zy260NDWNwF1o3AyJww0DQic25LU1/AS0/in/ACczTeMmlxHMkntlNU2lzmsBzIE7SYnszVXYTmrKwVg2qwnK8PExPimTrUeXXzO1pUw1oa0QAAANgMAExRKWD8Eag5UPgsSOQ+0LjwpMqOJ9mkIA3eQJPX2g0du68Z9HfSFhtjX2u+6lLiG08CHwfVmTmA6NV6b9pfDH1WV6YzLr7eckPHiIXk3oxwOrVtlGkabh/mNL5BADWm87HoCnZG441XFEGFRlOblzf68H09Y6nu82+X91anFpAzIMdypKbsA8ZAnu1+auaD5Xl9PkUlRek0qZ80/apPraJxi4Y64T8F332PcerWulXp2h99wLQHGJgMa0TGeAaJ5Jn7S/RNtWZEMc68x4/CTMsO2ZwOY6Iv2W+jostKo4EmYBcdXS0mOgA71f1VPG5+P9kGKWlLE+U/17G3MLXFp0MLj71ez2ioWO9W4vLw59O81wLiZLWkYEk4iMRkMh6Pxjh9R9RrqYBmJkwBGpS9b0ev8A6QtJLXNkDFrXA4tJ1nHLA9qi1a40/J7PT5VHdnItrVrVaqb3D1jmOY9127TAaxzZIDiYHKSea9NpOXOWDgdKzOlkueWwXOOJbOMDICR4K7oVOa1uKSjHhBZ5qb24LWkUy1JUHpxi2LJmGaphDaiBMQDFq2ZQnBp2ULU43jtKVc87FRTnTdodGNoaFnB1UTZglbxCia5SnJehijL2cIegQnPAQrRaw0EkxC43i3pJeJDMt9Vc3RRsdTbOIsYMSr30Itpq3zHsheSOtsnM45/Nes/Z5SAsxIIJJ0+K7G25Cc0vjRa22jekKhoWqpZj6p7SaY9xwBJaP1HDMtGjhpgcpPQ21+MIrS1wAe0O5ESnubiTpWZwfjVIj9Iz/cFbf49RGDHetd+rT9rvd7re0qrbw+jn6sdpJ81NxDRAEAfFSzyO9gtKJ2u0PqEOfGHutElrOf7R59gjGYsrpei6ZJ6d6Mxk48/opTthDlF8o7TIxS1JuGCZasoxswNaMmgdAAqL0mqf5ZVy8rmPSitDc1sOTUc3YnZjmn/U3hETIgqu4Y7zV5YyZ/NUTZ5kvuYzwvjURTrGHDBrzk/adnb7q+s1oE5qofZ6VTMQdTh4g4FBPDmtyqOHQuHxKH6hpVQ6M6Lzjtko1WBz3+rcBDXZ5/hLfxDkuOocNLSX54xIbBDJF4xjiRGCfc5jcsTuSSe8otntMEbEbIJdRlcdPj0Dog5qbW5ccDtrnU3ONNzWl3sXoBwiZbMt7QDyVjRquZ7ovN/VyLek4EctFSUbTjGAGOX1zVlTrZKJKUXaZTlzKcrRat4ixwILHHcFuB78ECrUkZAaBoyaJlAc9RlE5zn9zFSkNUH6KFbu64IbF516SuqetNN1RxYHEhpcSBOsFMjl0qhuBanpL1/GG1K7rkFo9kOx9oCMdomY5FW9mfkuL4bguosNXJOTtWVSjR0dnKsKSqrK9WVJyKLESQ00orUFhVd6VcTFmsdesTBbTIb++/2Wf8nBOulYurdHMHjzXvcWuzcYJw1OSaZaZ/F4ry7h1rmDOMYcuavrDxYszMjs8yJXku73PUUUdv60qN8pGw21tQYGU2ss3SeIcb4q6qS28Q0aKspWe9gnKVlvHEZ5AKwpWZoy8Pjhir5ZKEVZR1LC8ZjDf4EaL3D0Op+rslJpEF7bwGwOU8yvP7G0GA6I5wcDpuF2Z4rFQNaBDQANgAABAR4M1t2Kywfgt7VVh0c1MuxAGJKVe8E+aNRdJ236JuRi4odonD6+t1FzvMduKxj8cMhn2Kfq9/qfrwSKNbIU2T8u0JsMiI+sfzUKLddiPh80cNW0DZJgRCFBqJKyjLFbUYHRcH6T272iDkNV2vE6sAnkvMvSC1RelbCO4yL2C8OrYSrexVzOP1+S5XgdpvBdDRPyTZo8yX3Mt2V9TlstVeIQ5oORIBjY6eSTZVgHfT67UCrZnOAjr8vNI0ryddHVfdWPgaHJZabBdAunUDTtKQ4LbnMhrgSA3PnsrqpVvNboYmPD5qab0sc5RcbEbmvfy6LOH2q9V5EdxyhHrUjB5oNisTgSeYIGXIhZrVbgQlvuXF0BpnXLqo0pRXGen5LA1ApWHJ2ydLfZed+kLwa7sdV31vtHq6bjrGC8utAvuLi/UzExnz0xWtqynpYvVZYWfBXFhrQQuWpveCMiDrjh+SIOMuaRLeXd2pschc4no1irjJW1G0DdeSn0qqDbrt8Uej6V1Tj2ZaYY+Pmt10JeKz11tYLy37X+Pir6qx0zIa71tWOQNxp7yf8AatW/0sr3C1gxynHDmVzdj4UXuNSq6XEkk6mc1rz7G48NO2IWBtwY7Y9ungm21pOJjxJ7NEavZ4OX1/ZGstjJPvD92I8de1Jck9ylIvOA2gjAHDnC6qm+QuRsNBzTpGy6ClUgKfVuEzyOlsNc9zrBO2qesz9sAMzr2bfWWlMbRd6nv38flsjUrWB0b4lehKDYhNF8Xzy57/A9vim7PaS0iT8O3pnjy1VJZqhOJOPlAkwN4iNpaVY0rRdBLRjkD00HbdHPoElxaGbMvqHFQcJAjwVgOIjKY791ylnY4mb0RiYESdh+zqfzCDWrhvuXyBtqcs12qVguCO/sfEBO4JHVWrba12saeAx5aryenxdwymSfojyVszibgAdxgJExvA30GuKZ3JLkU8KfB6TTrADt88U2Hj65LzSnxtzYvYTkIM+GAVkz0lJa2cIgDOZMjI8uq1ZkLeCR3rCoV6oAk/ULlx6SNGszpPumZBG4Q7b6QNg3ZBOhB7MfrRF3UB2pD3HrR7Ej65Ly3j7nvkAYHXznp8V1lotzntIcQL2V6J7Rt8z0NRaGA4PLRu2czucDBwby70Kz1wPjh9nL8INSkSYwBgct52/NdZYreHDDp8ClGUhMBo1yPsmcMzOOGmWSDVszmkPmNp5SRkemnyRLqPYnL0alujo7PWBOec+BCs7HUGI7PCVxdGqRjJyAPMiJA5qystpzIdiM+mH5JU8lk76Gfs66m4HHme6fnCsaT5APRchRt9wm8YAMdSTEYcx0VhZeMDJxAg4zMDH5eamk2B9HNHTB4+vBMsHkqRtvbqQMsjO8eSIeLsGvbtmElyB7E14LxjsVC0WprQTIXNVfSMAAD3voAGOYVHxDi7ngw8EkGACRPQRjGcBFHUMhgm3wMekHHDUPsnIxHzjmPBc2TMkYc8YO5IS5qy8AEEkjDHllhlme1N2aBqHYwThntDgCDhhnMck/TR6OPHpVILRDm4GcJG88406clGoQRMZHEQMxI8k2666Q6nI1dgQSMIOrdsFlOysyDXRORxIGpZOYHljiFljaKL1IaCJJzAxN2L2ZnPko/dyCBedJnNpGB2V5TphuxGucHnjll2Ed26Fmg4DCQbpBz3GOGnXwRaztAjZQWiRIG5k5bQMMVYMaXiQfjPfiE392x9nLl5ZfkjNs7R7QyPXvPIHmlOYaihNlnOTgMeQz8p7im6NiBHu4jDn2bHqmW2cHYzhOXYZRAwiD9EfPPuS3IIyiwnP3hlseXXZPtahUmg9v19f2TIbOqBsw8Dc4l0lTY/EDtPwCjaTiUNrsT4dg/NfRTjTPNjIvrM/AQYOROwEEtG5JMfwp5lQENgw0ECeQEmOZLj3d3PmtkBt3CCPMuPaE62recwDJowHPTyxUsoeSmMi+p2iWFxwaTDRqQMYnYwCT0Vca5LsczsMGgYDt+SytVmWtOUNnsvOcfHwCGHgNgTgJ6wTmewHtG6VpoOxvh1O84ucJDRgJ1cQ1o5GT5lNRJzlxdicDniTjyAw0EbBAs1W5TeBiW+8d3FpnsvFo/hO63YXYM3eZn9kke0ep+G6CQSIOrGXumSMBsNhOvMnbkiWOQPWPxx9kc3R8Bn80rUomoWtyaTJHccd8JlWlvYTVDAPZYLoGQvRLyeQjwWMIDZa7pIBgxi7M+1IF3bHXkmWMvAnEglzc8XFsQ0HPO9yOuiXeJuNGr5LuTN+2cP2eSPxe03GMa33iSMNMLx7Ygd51QvnY4C2k6HiZcNzDWn2hHIARJ54aINOzB5DRjmS6TOGAw0EkiJnyBuHgkGczdcRoDAhvSbpTNidDhqYvHflj1d4Lm6Ooiyn7YaQYEYbNOBnYxenpulbdaTF4yBcBIGECfkRhy0VhZXS9x8f3zGekT4JWrShmOMtAaI0a1sk8ydefJYuTqIesfIaBo0DUBxknuEyemqPUaW3C0e8JGn4oInUkEHtRW0P8kxneHg5049QB3I1F055A3gdg0NJjqP5RuubNSKu1V3g4knFxAE4hokAdw8U165wcwD3XSJ5zAB5THenK9nDodEAYiNMcu8E9Oqg2nNQMAkS09CHZ+YWakdQOhayYwwGeM6E66ENwO5WvW1Q5w95owg64ASIyz0hEbSEOH4nNcNdHM8MQnHNgsOJBLwecjCdsQ6OqFtHUKOYHOBGneC3AtOhyS1kpEucwzMhzeUatOug0nsV5abGGm8Bg5wJ7AcSPPqhOpAOIGYE84g/XfsVikbQq+iJY4AY4tMAYg4tOH9ie6dloEEh+LThjiROk6jbbDNPvp4gESCJOkEAEnt9odvJSqNN8DcDtkYHrgELkcBs9iLTjnPs82gDXpO470xTsw2xBlvIg765679ZZeYAIxg+BLZ8SD0UqTRlHsnHsJM+ZQajqA1LCDGk5dubTqh0KIAgDFo11yz7QQrJhkwc5BncjPswB7Ql6zc3R2TE45/DqusxEGUhBI/tmD5hYWDbT6HXJZQzOxz6/UdxUqNQGJ37JnDxnvKEIhZ8D0zG4OvX5dEy8YGOR7fqe5CY3E8vZPUaIk6btI81jON2d2PQ/Q7iVMWmMNvkhUjrlMeH0e5U3EDV9Y65MdRnH9keODkzGeW2n3j2IA94dPgsWL6TNyeVAKfePQp+yZns82rFillwPjyNU8qnQf9aPTz/hH8zFixJY5Gqf6Cr2/wAwVi73x/pea0sSphxMs/xCerf+RW/dd/VesWJb5DFme/T/AHT5VEPiOTf/AGO/phYsWrlHMZsfvv7fOmt2H9J/p/8AaFtYgZoTheTujP8A5WuI+8zoPJixYu/I4ao+4f3R/VKhw38fU/8AWsWIH5NGbP8AoB1H8jEPhf6UdH/zlYsWezgtL4H+diZPuDq3+ZyxYsZw1X9x/R38gSlH/wAj/SZ/3rFiFGsYp5joPNEq+/T/APWPgsWLGcEbkf3T/wDCkf0bf3XeRWLEBwyzP+If0wgP17f6yxYtYKA0c/8Ab5uQxl/EPNYsWBDxzd1CC74fEraxYcSre73+Tkk/Pu8lixWdLwzY8s//2Q==" alt="Card image cap">
				  <div class="card-body">
				    <h5 class="card-title"><%= sp.getTenSanPham() %></h5>
				    <p class="card-text"><%= sp.getDonGia() + "đ" %></p>
				    <a href="#" class="btn btn-primary">Xem chi tiết</a>
				  </div>
				</div>
			</div>
			<% } %>
		</div>
		
		<div class="pagination-0">
			<nav aria-label="Page navigation example">
			  <ul class="pagination">
			    <li class="page-item">
			      <a class="page-link" href="#" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			        <span class="sr-only">Previous</span>
			      </a>
			    </li>
			    <li class="page-item"><a class="page-link" href="#" >1</a></li>
			    <li class="page-item"><a class="page-link" href="#">2</a></li>
			    <li class="page-item"><a class="page-link" href="#">3</a></li>
			    <li class="page-item">
			      <a class="page-link" href="#" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			        <span class="sr-only">Next</span>
			      </a>
			    </li>
			  </ul>
			</nav>
		</div>
	
		
	</div>
	
	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>