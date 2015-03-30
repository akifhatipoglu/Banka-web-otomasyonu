package com.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class yenikullanicihesabi
 */
@WebServlet("/newusers")
public class yenikullanicihesp extends HttpServlet {
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
		System.out.println("kontrols"+request.getParameter("tc2").toString()+request.getParameter("kullaniciadi").toString()+request.getParameter("sifre").toString());
		int tc=Integer.parseInt(request.getParameter("tc2").toString());
		String kullaniciadi=request.getParameter("kullaniciadi").toString();
		String sifre=request.getParameter("sifre").toString();
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/banka","root","root");
			//yeni kulla
			String sorgu="INSERT INTO banka.kullanicigirisi (kullaniciadi,sifre) VALUES ('"+kullaniciadi+"', '"+sifre+"')";
			
			Statement stmt=conn.createStatement(); 
			
			stmt.executeUpdate(sorgu);
			conn.close();
			
			Connection conn2=DriverManager.getConnection("jdbc:mysql://localhost/banka","root","root");
			
			String sorgu2="INSERT INTO banka.kullanicihesap (tc,kullaniciadi) VALUES ('"+tc+"', '"+kullaniciadi+"')";
			
			Statement stmt2=conn2.createStatement(); 
			
			stmt2.executeUpdate(sorgu2);
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("loginsonuc",false);
		request.getRequestDispatcher("header.jsp").forward(request, response);
	}

}
