<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <table>
  <tr >
    <td>
<div class="menu_div">
        <ul>
        <li id="active"><a href="yenikullaniciekle.jsp">Yeni Kullanıcı Bilgileri Ekle </a></li>
						<li><a href="yenikullanicihespekle.jsp">Yeni Kullanıcı Hesabı Ekle</a></li>
						<li><a href="yenibankhesap.jsp">Yeni Banka Hesabı ekle</a></li>
						<li><a href="${pageContext.request.contextPath}/hesaplistele">Hesapları Listele</a></li>
						<li><a href="${pageContext.request.contextPath}/hesapupdate">Hesapları Güncelle</a></li>
						<li><a href="hesaparama.jsp">Hesap Arama</a></li>
						<li><a href="${pageContext.request.contextPath}/bilgicek">Yardım</a></li>
						<li><a href="login.jsp">Çıkış</a></li>
        </ul>
</div>
</td>
    <td></td>
  </tr>
  <tr style="height:210px;"></tr>
</table>
   



	<jsp:include page="footer.jsp"></jsp:include>