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

<body style="background:#aaaaaa">
<script type="text/javascript">
 function formkontrol1(form){
	if(form.tc.value==""){ alert("Lütfen TC kimlik numarasını giriniz."); return false;}
	if(form.hesapturu.value==""){ alert("Lütfen hesap türü seçiniz."); return false;}
	if(form.hesapboyutu.value==""){ alert("Lütfen hesap boyutu seçiniz."); return false;}
	if(form.miktar.value==""){ alert("Lütfen miktar giriniz."); return false;}
	if(form.cek.checked!=true){ alert("Lütfen Anlaşmayı kabul ediniz."); return false;}
}
</script>


			<form method="post" action="update?tc1=<%=request.getParameter("tc")%>&hesapturu1=<%=request.getParameter("hesapturu")%>&hesapboyutu1=<%=request.getParameter("hesapboyutu")%>&miktar1=<%=request.getParameter("miktar")%>" name="kayit" onsubmit="return formkontrol1(document.kayit)" > 
   			 <table>
   			 <tr>	<td>TC Kimlik No:</td>	<tr><td><input type="text" name="tc" value="<%=request.getParameter("tc")%>"></input></td>    		
    		 <c:if test="${param.hesapturu=='Sabit Faiz Oranli Mevduat'}">
    		 <tr>	<td>Hesap Türü:</td>	<tr><td><select name="hesapturu"><option value="Sabit Faiz Oranli Mevduat" selected="selected">Sabit Faiz Oranli Mevduat</option><option value="Degisken Faiz Oranli Mevduat">Degisken Faiz Oranli Mevduat</option></select></td>
    		 </c:if>
   			 
   			 <c:if test="${param.hesapturu=='Degisken Faiz Oranli Mevduat'}">
    		 <tr>	<td>Hesap Türü:</td>	<tr><td><select name="hesapturu"><option value="Sabit Faiz Oranli Mevduat" selected="selected">Sabit Faiz Oranli Mevduat</option><option value="Degisken Faiz Oranli Mevduat" selected="selected">Degisken Faiz Oranli Mevduat</option></select></td>
    		 </c:if>
   			
   			 <c:if test="${param.hesapboyutu=='5000' }">
   			 <tr>	<td>Maximum hesap boyutu:</td>	<tr><td><select name="hesapboyutu"><option value="5000" selected="selected">5000 TL</option><option value="10000">10000 TL</option><option value="100000">100000 TL</option><option value="Diger">Diger</option></select></td>
   			 </c:if>
   			 
   			 <c:if test="${param.hesapboyutu=='10000' }">
   			 <tr>	<td>Maximum hesap boyutu:</td>	<tr><td><select name="hesapboyutu"><option value="5000" >5000 TL</option><option value="10000" selected="selected">10000 TL</option><option value="100000">100000 TL</option><option value="Diger">Diger</option></select></td>
   			 </c:if>
   			 
   			 <c:if test="${param.hesapboyutu=='100000' }">
   			 <tr>	<td>Maximum hesap boyutu:</td>	<tr><td><select name="hesapboyutu"><option value="5000" >5000 TL</option><option value="10000">10000 TL</option><option value="100000" selected="selected">100000 TL</option><option value="Diger">Diger</option></select></td>
   			 </c:if>
   			 
   			 <c:if test="${param.hesapboyutu=='Diger' }">
   			 <tr>	<td>Maximum hesap boyutu:</td>	<tr><td><select name="hesapboyutu"><option value="5000" >5000 TL</option><option value="10000">10000 TL</option><option value="100000">100000 TL</option><option value="Diger"selected="selected">Diger</option></select></td>
   			 </c:if>
   			 
   			 <tr>	<td>Başlangıç için yatırılacak miktar (TL):</td>	<tr><td><input type="text" name="miktar" value="<%=request.getParameter("miktar")%>" ></input></td>
   			 <tr>	<td>Tüm anlaşmayı kabul ediyorum:</td>	<tr><td><input type="checkbox" name="cek" ></input></td>
    		 <tr>
    		 <td><input style="padding: 3px; margin-left: 5%" type="submit" name="kayit" value="      Giriş      " ></td>
    		 <td><input style="padding: 3px; margin-left: 8%" type="reset"value="      Temizle      " ></td></tr>
   			  
   			 </table>
   			 </form>



<jsp:include page="footer.jsp"></jsp:include>