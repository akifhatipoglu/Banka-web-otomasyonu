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
 * Servlet implementation class loginservlet
 */
@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {
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
		// TODO Auto-generated method stub
		boolean gecis=false;
		String kullanciadi=request.getParameter("kullaniciadi");
		String sifre=request.getParameter("sifre");
		String login=request.getParameter("login");
		
		if(login.equals("system")){
		try {
			gecis=false;
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("yeyeye");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/banka","root","root");
			
			String sorgu="SELECT * FROM banka.sistemgirisi where kullaniciadi='"+kullanciadi+"' and sifre='"+sifre+"'  ";
			
			Statement stmt=conn.createStatement();
			
			ResultSet rs=stmt.executeQuery(sorgu);
			
			while (rs.next()) {
				gecis=true;				
			}

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(gecis==true){
		request.setAttribute("loginsonuc",gecis);
		request.setAttribute("kullaniciadi",kullanciadi);
		request.getRequestDispatcher("header.jsp").forward(request, response);
		}if(gecis==false){
			System.out.println("geçersiz þifre");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
		}
		if(login.equals("user")){
			gecis=false;
			System.out.println("user ým ben");
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/banka","root","root");
				
				String sorgu="SELECT * FROM banka.kullanicigirisi where kullaniciadi='"+kullanciadi+"' and sifre='"+sifre+"'  ";
				
				Statement stmt=conn.createStatement();
				
				ResultSet rs=stmt.executeQuery(sorgu);
				
				while (rs.next()) {
					gecis=true;				
				}

			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(gecis==true){
				
			request.setAttribute("kullanciadi",kullanciadi);
			request.setAttribute("loginsonuc",gecis);
			request.getRequestDispatcher("user.jsp").forward(request, response);
			}
			if(gecis==false){
				System.out.println("geçersiz þifre");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			
			}
	}

}
