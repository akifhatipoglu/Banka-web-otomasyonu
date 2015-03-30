package com.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class yenikullanici
 */
@WebServlet("/yenikullanici")
public class yenikullanici extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int tc=Integer.parseInt(request.getParameter("tc").toString());
		String ad=request.getParameter("ad").toString();
		String soyad=request.getParameter("soyad").toString();
		String dogtarih=request.getParameter("dogtarih").toString();
		String babadi=request.getParameter("babadi").toString();
		String anneadi=request.getParameter("anneadi").toString();
		String dogyer=request.getParameter("dogyer").toString();
		String is=request.getParameter("is").toString();
		String evtel=request.getParameter("evtel").toString();
		String ceptel=request.getParameter("ceptel").toString();
		String adres=request.getParameter("adres").toString();
		String cinsiyet=request.getParameter("cinsiyet").toString();
		System.out.println("hatasýz geldim");
		System.out.println(tc+ad+soyad+dogtarih+babadi+anneadi+dogyer+is+ceptel+adres+cinsiyet);
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/banka","root","root");
			
			String sorgu="INSERT INTO banka.bankakullanicisi (tc,ad,soyad,dogtarih,cinsiyet,babaadi,anneadi,dogumyeri,isyeri,evtel,ceptel,yasadigiadres) VALUES ("+tc+", '"+ad+"', '"+soyad+"','"+dogtarih+"','"+cinsiyet+"','"+babadi+"','"+anneadi+"','"+dogyer+"','"+is+"','"+evtel+"','"+ceptel+"','"+adres+"')";
			
			Statement stmt=conn.createStatement(); 
			
			stmt.executeUpdate(sorgu);
			

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("loginsonuc",false);
		request.getRequestDispatcher("header.jsp").forward(request, response);
	}

}
