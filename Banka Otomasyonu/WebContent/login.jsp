<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head >
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Banka Otamasyonu</title>

</head>
<script type="text/javascript">
 function formkontrol(form){
	if(form.kullaniciadi.value==""){ alert("Lütfen Kullanıcı adınızı giriniz."); return false;}
	if(form.sifre.value==""){ alert("Lütfen Şifrenizi giriniz."); return false;}
	if(form.login.value==""){ alert("Lütfen Giriş şeklinizi seçiniz."); return false;}
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
<body style="background:#aaaaaa">

<form method="post" action="loginservlet" name="ara" onsubmit="return formkontrol(document.ara)" >
    <table style="color:sienna;border-style:solid;border-color:sienna; margin:18% 36%;padding:10px 30px; background:#dddddd;width:350px;border-radius:25px;" >
    
    <tr>	<td><input type="radio" checked="checked" name="login" value="user">Kullanıcı Girişi</td><td><input type="radio" name="login" value="system">Sistem Girişi</td>
    <tr>	<td>Kullanıcı Adı:</td>	        <td><input type="text" name="kullaniciadi" onkeypress='karakter(event)' ></input></td>
    <tr>	<td>Şifre:        </td>			<td><input type="password" name="sifre" onkeypress='karakter(event)' ></input></td>
    <tr><td><input style="padding: 3px; margin-left: 60%" type="submit" name="ara" value="      Giriş      " ></td>
    <td><input style="padding: 3px; margin-left: 35%" type="reset"value="   Temizle   " ></td></tr>
     
    </table>
    </form>
 
    
</body>
</html>