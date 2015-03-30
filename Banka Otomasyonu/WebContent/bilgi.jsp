<%@page import="sun.misc.GC.LatencyRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="style.css">
<title>Banka Otamasyonu</title>
</head>

<body>
	<style>
body {
	background-color: #dddddd;
	height: 100px;
	border-style: solid;
	border-color: sienna;
	border: 4px solid sienna;
	border-radius: 10px;
}

label {
	color: blue;
	text-align: center;
	padding-left: 460px;
	font-style: bold;
	font-size: xx-large;
	font-family: sans-serif;
}
</style>
	<a href="login.jsp"><img style="border: 0;" src="image\\bank.png"
		alt="HTML tutorial" width="96" height="96"></a>
	<label>XYZ Bankası</label>



	<table>
		<tr>
			<td>
				<div class="menu_div">
					<ul>
						<li id="active"><a href="yenikullaniciekle.jsp">Yeni
								Kullanıcı Bilgileri Ekle </a></li>
						<li><a href="yenikullanicihespekle.jsp">Yeni Kullanıcı
								Hesabı Ekle</a></li>
						<li><a href="yenibankhesap.jsp">Yeni Banka Hesabı Ekle</a></li>
						<li><a href="${pageContext.request.contextPath}/hesaplistele">Hesapları
								Listele</a></li>
						<li><a href="${pageContext.request.contextPath}/hesapupdate">Hesapları Güncelle</a></li>
						<li><a href="hesaparama.jsp">Hesap Arama</a></li>
						<li><a href="${pageContext.request.contextPath}/bilgicek">Yardım</a></li>
						<li><a href="login.jsp">Çıkış</a></li>
					</ul>
				</div>
			</td>
			<td style="width: 40px"></td>
			<td
				style="color: sienna; border-style: solid; border-color: Ivory; background: #dddddd; width: 850px; border-radius: 25px;">
				<div class="CSSTableGenerator">
					<table>
						<c:forEach items="${bilgi}" var="bilgi">
						<tr>
							<td style="font-size:23px">${bilgi}</td>
						</tr>
						</c:forEach>
						
					</table>
					
				</div>
				<br>
			</td>
		</tr>
		<tr style="height: 145px;">
		</tr>
	</table>
	<jsp:include page="footer.jsp"></jsp:include>