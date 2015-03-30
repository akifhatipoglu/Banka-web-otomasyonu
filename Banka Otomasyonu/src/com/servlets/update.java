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

import com.DAO.hesaplisteleDAO;
import com.entitiy.Hesap;

/**
 * Servlet implementation class update
 */
@WebServlet("/update")
public class update extends HttpServlet {
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
		boolean gecis=true;
		String tc=request.getParameter("tc");
		String hesapturu=request.getParameter("hesapturu");
		String hesapboyutu=request.getParameter("hesapboyutu");
		String miktar=request.getParameter("miktar");
		

		String eski_tc1=request.getParameter("tc1");
		String eski_hesapturu1=request.getParameter("hesapturu1");
		String eski_hesapboyutu1=request.getParameter("hesapboyutu1");
		String eski_miktar1=request.getParameter("miktar1");
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/banka","root","root");
			
			String sql="UPDATE banka.hesaplar set tc='"+tc+"' , hesapturu='"+hesapturu+"' , hesapboyutu='"+hesapboyutu+"' , miktar='"+miktar+"'"
					+ " where tc='"+eski_tc1+"' and hesapturu='"+eski_hesapturu1+"' and hesapboyutu='"+eski_hesapboyutu1+"' and miktar='"+eski_miktar1+"'  ";
			
			Statement stmt=conn.createStatement();
			
			stmt.execute(sql); 
			conn.close();

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		hesaplisteleDAO hesaplistele=new hesaplisteleDAO();
		ArrayList<Hesap> myhesap=hesaplistele.getAllHeasaplar();
		
		request.setAttribute("myhesap", myhesap);
		request.setAttribute("loginsonuc",gecis);
		request.getRequestDispatcher("hesapupdate.jsp").forward(request, response);
		
	}

}
