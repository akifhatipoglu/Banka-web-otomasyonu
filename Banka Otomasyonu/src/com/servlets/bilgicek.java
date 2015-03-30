package com.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entitiy.Hesap;
import com.sun.org.apache.bcel.internal.generic.ARRAYLENGTH;

/**
 * Servlet implementation class bilgicek
 */
@WebServlet("/bilgicek")
public class bilgicek extends HttpServlet {
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
		
		ArrayList<String> bilgi=new ArrayList<String>(); 
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/banka","root","root");
			
			String sorgu="SELECT * FROM banka.hesapturu";
			
			Statement stmt=conn.createStatement();
			
			ResultSet rs=stmt.executeQuery(sorgu);
			
			while (rs.next()) {
				
				bilgi.add(rs.getString("hesapadi")+"  :  "+rs.getString("hesapayrinti"));
			}

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(bilgi);
		request.setAttribute("bilgi", bilgi);
		request.getRequestDispatcher("bilgi.jsp").forward(request, response);
		
	}

}
