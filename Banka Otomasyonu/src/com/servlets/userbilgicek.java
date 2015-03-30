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
import javax.servlet.http.HttpSession;

import com.entitiy.Hesap;

/**
 * Servlet implementation class userbilgicek
 */
@WebServlet("/userbilgicek")
public class userbilgicek extends HttpServlet {
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
		HttpSession session = request.getSession(true);
		System.out.print(session.getAttribute("bilgim"));
		
		ArrayList<String> mybilgi=new ArrayList<String>();
		ArrayList<Hesap> hesabim=new ArrayList<Hesap>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/banka","root","root");
			
			String sorgu="SELECT * FROM banka.kullanicihesap where kullaniciadi='"+session.getAttribute("bilgim")+"'";
			
			Statement stmt=conn.createStatement();
			
			ResultSet rs=stmt.executeQuery(sorgu);
			String tc="";
			while (rs.next()) {
				tc=""+rs.getString("tc");
			}
			conn.close();
			
			Connection conn2=DriverManager.getConnection("jdbc:mysql://localhost/banka","root","root");
			
			String sorgu2="SELECT * FROM banka.hesaplar where tc='"+tc+"'";
			
			Statement stmt2=conn2.createStatement();
			
			ResultSet rs2=stmt2.executeQuery(sorgu2);
		
			while (rs2.next()) {
				Hesap hesaplar=new Hesap(rs2.getInt("tc"), rs2.getString("hesapturu"), rs2.getString("hesapboyutu"), rs2.getString("miktar"));
				System.out.println("servlets:"+rs2.getInt("tc")+rs2.getString("hesapturu")+ rs2.getString("hesapboyutu")+ rs2.getString("miktar"));
				hesabim.add(hesaplar);
			}
			
			

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(hesabim);
		request.setAttribute("list", hesabim);
		request.getRequestDispatcher("userbilgi.jsp").forward(request, response);
	}

}
