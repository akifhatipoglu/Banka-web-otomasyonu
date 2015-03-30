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

/**
 * Servlet implementation class search
 */
@WebServlet("/search")
public class search extends HttpServlet {
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
		
		String aranacakalan=request.getParameter("aranacak");
		String kelime=request.getParameter("kelime");
		System.out.println("lan"+aranacakalan+kelime);
		ArrayList<Hesap> hesabim=new ArrayList<Hesap>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/banka","root","root");
			
			String sorgu="SELECT * FROM banka.hesaplar where "+aranacakalan+"='"+kelime+"'";
			
			Statement stmt=conn.createStatement();
			
			ResultSet rs=stmt.executeQuery(sorgu);
			
			while (rs.next()) {
				Hesap hesaplar=new Hesap(rs.getInt("tc"), rs.getString("hesapturu"), rs.getString("hesapboyutu"), rs.getString("miktar"));
				System.out.println("servlets:"+rs.getInt("tc")+rs.getString("hesapturu")+ rs.getString("hesapboyutu")+ rs.getString("miktar"));
				hesabim.add(hesaplar);
			}

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("myhesap", hesabim);
		request.getRequestDispatcher("hesaplistele.jsp").forward(request, response);
		
	
	}

}
