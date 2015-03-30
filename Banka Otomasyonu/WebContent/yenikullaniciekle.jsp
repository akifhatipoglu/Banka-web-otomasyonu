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
	<a href="login.jsp"><img style="border: 0; float: right; "  src="image\\useradd.png"
		alt="HTML tutorial" width="96" height="96"></a>

<script type="text/javascript">
 function formkontrol1(form){
	if(form.tc.value==""){ alert("Lütfen TC kimlik numarasını giriniz."); return false;}
	if(form.ad.value==""){ alert("Lütfen Ad giriniz."); return false;}
	if(form.soyad.value==""){ alert("Lütfen Soyad giriniz."); return false;}
	if(form.dogtarih.value==""){ alert("Lütfen Doğum Tarihi giriniz."); return false;}
	if(form.babadi.value==""){ alert("Lütfen Baba Adı giriniz."); return false;}
	if(form.anneadi.value==""){ alert("Lütfen Anne Adı giriniz."); return false;}
	if(form.dogyer.value==""){ alert("Lütfen Doğum Yeri giriniz."); return false;}
	if(form.is.value==""){ alert("Lütfen Mesleğini seçiniz."); return false;}
	if(form.evtel.value==""){ alert("Lütfen Ev Telefonunu giriniz."); return false;}
	if(form.ceptel.value==""){ alert("Lütfen Cep Telefonunu giriniz."); return false;}
	if(form.adres.value==""){ alert("Lütfen Adres giriniz."); return false;}
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
			
			<form method="post" action="yenikullanici" name="kayit" onsubmit="return formkontrol1(document.kayit)" >
   			 <table>
   			 <tr>	<td>TC Kimlik No:</td>	<td><input type="text" name="tc"onkeypress='validate(event)' ></input></td>
    		 <tr>	<td>Ad:</td>	        <td><input type="text" name="ad" onkeypress='karakter(event)' ></input></td>
   			 <tr>	<td>Soyad:</td>			<td><input type="text" name="soyad" onkeypress='karakter(event)' ></input></td>
   			 <tr>	<td>Doğum Tarihi:</td>	<td><input type="text" name="dogtarih" onkeypress='karakter(event)' ></input></td>
   			 <tr>	<td>Baba Adı:</td>		<td><input type="text" name="babadi" onkeypress='karakter(event)'></input></td>
   			 <tr>	<td>Anne Adı:</td>		<td><input type="text" name="anneadi" onkeypress='karakter(event)' ></input></td>
   			 <tr>	<td>Doğum Yeri:</td>	<td><input type="text" name="dogyer" onkeypress='karakter(event)'></input></td>
   			 <tr><td>Cinsiyet:</td><td><input type="radio" checked="checked" name="cinsiyet" value="Erkek">Erkek<input type="radio" name="cinsiyet" value="Kadin">Kadin</td>
   			 <tr>	<td>İş:</td>			<td><select name="is"><option value="Memur">Memur</option><option value="Isci">Isci</option><option value="Muhendis">Muhendis</option><option value="Ceo">Ceo</option></select></td>
    		 <tr>	<td>Ev Tel:</td>	     <td><input type="text" name="evtel" onkeypress='validate(event)'></input></td>
    		 <tr>	<td>Cep Tel:</td>		<td><input type="text" name="ceptel" onkeypress='validate(event)'></input></td>
    		 <tr>	<td>Yaşadığı Adres:</td><td><input type="text" name="adres" onkeypress='karakter(event)'></input></td>
    		 <tr>
    		 <td><input style="padding: 3px; margin-left: 50%" type="submit" name="kayit" value="      Giriş      " ></td>
    		 <td><input style="padding: 3px; margin-left: 80%" type="reset"value="      Temizle      " ></td></tr>
   			  
   			 </table>
   			 </form>
			
			
			</td>
		</tr>
		<tr style="height: 60px;">
		</tr>
	</table>




	<jsp:include page="footer.jsp"></jsp:include>