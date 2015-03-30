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
	<a href="login.jsp"><img style="border: 0; float: right; "  src="image\\hesap.png"
		alt="HTML tutorial" width="72" height="72"></a>

<script type="text/javascript">
 function formkontrol1(form){
	if(form.tc.value==""){ alert("Lütfen TC kimlik numarasını giriniz."); return false;}
	if(form.hesapturu.value==""){ alert("Lütfen hesap türü seçiniz."); return false;}
	if(form.hesapboyutu.value==""){ alert("Lütfen hesap boyutu seçiniz."); return false;}
	if(form.miktar.value==""){ alert("Lütfen miktar giriniz."); return false;}
	if(form.cek.checked!=true){ alert("Lütfen Anlaşmayı kabul ediniz."); return false;}
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
			
			<form method="post" action="yenibankhesap" name="kayit" onsubmit="return formkontrol1(document.kayit)" >
   			 <table>
   			 <tr>	<td>TC Kimlik No:</td>	<td><input type="text" name="tc"onkeypress='validate(event)' ></input></td>
    		 <tr>	<td>Hesap Türü:</td>	<td><select name="hesapturu"><option value="Sabit Faiz Oranli Mevduat">Sabit Faiz Oranli Mevduat</option><option value="Degisken Faiz Oranli Mevduat">Degisken Faiz Oranli Mevduat</option></select></td>
   			 <tr>	<td>Maximum hesap boyutu:</td>	<td><select name="hesapboyutu"><option value="5000">5000 TL</option><option value="10000">10000 TL</option><option value="100000">100000 TL</option><option value="Diger">Diger</option></select></td>
   			 <tr>	<td>Başlangıç için yatırılacak miktar (TL):</td>	<td><input type="text" name="miktar"onkeypress='validate(event)' ></input></td>
   			 <tr>	<td>Tüm anlaşmayı kabul ediyorum:</td>	<td><input type="checkbox" name="cek" ></input></td>
    		 <tr>
    		 <td><input style="padding: 3px; margin-left: 50%" type="submit" name="kayit" value="      Giriş      " ></td>
    		 <td><input style="padding: 3px; margin-left: 80%" type="reset"value="      Temizle      " ></td></tr>
   			  
   			 </table>
   			 </form>
			
			
			</td>
		</tr>
		<tr style="height:210px;">
		</tr>
		
	</table>




	<jsp:include page="footer.jsp"></jsp:include>