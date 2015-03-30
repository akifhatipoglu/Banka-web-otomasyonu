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
	<a href="login.jsp"><img style="border: 0; float: right; "  src="image\\useradd2.png"
		alt="HTML tutorial" width="96" height="96"></a>

<script type="text/javascript">
 function formkontrolm(form2){
	if(form2.tc2.value==""){ alert("Lütfen TC kimlik numarasını giriniz."); return false;}
	if(form2.kullaniciadi.value==""){ alert("Lütfen kullanıcı Adı giriniz."); return false;}
	if(form2.sifre.value==""){ alert("Lütfen şifre giriniz."); return false;}
 }
 function validate(evt) {
	  var theEvent = evt || window.event;
	  var key = theEvent.keyCode || theEvent.which;
	  key = String.fromCharCode( key );
	  var regex = /[0-9]|\./;
	  if( !regex.test(key) ) {
	    theEvent.returnValue = false;
	    if(theEvent.preventDefault) theEvent.preventDefault();
	  }
	} 
 function karakter(evt) {
	  var theEvent = evt || window.event;
	  var key = theEvent.keyCode || theEvent.which;
	  key = String.fromCharCode( key );
	  var regex = new RegExp("\[İÜĞŞÇÖğıüşöç]");
	  if( regex.test(key) ) {
	    theEvent.returnValue = false;
	    if(theEvent.preventDefault) theEvent.preventDefault();
	  }
	} 
</script>

	<table >
		<tr>
			<td>
				<div class="menu_div">
					<ul>
						<li id="active"><a href="yenikullaniciekle.jsp">Yeni Kullanıcı Bilgileri Ekle </a></li>
						<li><a href="yenikullanicihespekle.jsp">Yeni Kullanıcı Hesabı Ekle</a></li>
						<li><a href="yenibankhesap.jsp">Yeni Banka Hesabı Ekle</a></li>
						<li><a href="${pageContext.request.contextPath}/hesaplistele">Hesapları Listele</a></li>
						<li><a href="${pageContext.request.contextPath}/hesapupdate">Hesapları Güncelle</a></li>
						<li><a href="hesaparama.jsp">Hesap Arama</a></li>
						<li><a href="${pageContext.request.contextPath}/bilgicek">Yardım</a></li>
						<li><a href="login.jsp">Çıkış</a></li>
					</ul>
				</div>
			</td>
			<td style="width: 40px"></td>
			<td style="color:sienna;border-style:solid;border-color:Ivory; background:#dddddd;width:850px;border-radius:25px; ">
			
			<form method="post" action="newusers" name="kullanicm" onsubmit="return formkontrolm(document.kullanicm)" >
   			 <table>
   			 <tr>	<td>TC Kimlik No:</td>	<td><input type="text" name="tc2"onkeypress='validate(event)' ></input></td>
    		 <tr>	<td>Kullanici Adı:</td>	        <td><input type="text" name="kullaniciadi"onkeypress='karakter(event)' ></input></td>
   			 <tr>	<td>Şifre:</td>			<td><input type="password" name="sifre" onkeypress='karakter(event)'></input></td>
    		 <tr>
    		 <td><input style="padding: 3px; margin-left: 50%" type="submit" name="kayit" value="      Giriş      " ></td>
    		 <td><input style="padding: 3px; margin-left: 80%" type="reset"value="      Temizle      " ></td></tr>
   			  
   			 </table>
   			 </form>
			
			
			</td>
		</tr>
		<tr style="height: 200px;">
		</tr>
	</table>




	<jsp:include page="footer.jsp"></jsp:include>