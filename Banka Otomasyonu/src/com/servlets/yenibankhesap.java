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
 * Servlet implementation class yenibankhesap
 */
@WebServlet("/yenibankhesap")
public class yenibankhesap extends HttpServlet {
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
		String hesapturu=request.getParameter("hesapturu").toString();
		String hesapboyutu=request.getParameter("hesapboyutu").toString();
		String miktar=request.getParameter("miktar").toString();
		System.out.println(tc+hesapturu+hesapboyutu+miktar);
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/banka","root","root");
			
			String sorgu="INSERT INTO banka.hesaplar (tc,hesapturu,hesapboyutu,miktar) VALUES ("+tc+", '"+hesapturu+"', '"+hesapboyutu+"','"+miktar+"')";
			
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
