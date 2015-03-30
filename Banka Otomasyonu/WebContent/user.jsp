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
	<%
		String gelendeger = request.getAttribute("loginsonuc").toString();

		if (gelendeger.equals("true")) {
	%>
	<script>
		alert("Hoş Gelidiniz.");
	</script>
	<%
		}
	%>

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
	
	<a href="login.jsp"><img style="border: 0; float: right; "  src="image\\myuser.png"
		alt="HTML tutorial" width="96" height="96"></a>

	<%
		
		session.setAttribute("bilgim", request.getAttribute("kullanciadi"));
	%>
	<table>
	<tr ><br><br><br><br></tr>
		<tr>
			<td>
				<div class="menu_div">
					<ul>
						<li id="active"><a href="${pageContext.request.contextPath}/userbilgicek">Hesap Bilgilerini görüntüle </a></li>
						<li><a href="login.jsp">Çıkış</a></li>
					</ul>
				</div>
			</td>
			<td></td>
		</tr>
		<tr style="height: 310px;"></tr>
	</table>
	
	<div id="footer">
		<h5>&copy;2014 Damla Mutlu  Özge Şanlı</h5>
	</div>
	</div>
</body>
</html>