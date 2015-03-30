package com.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.hesaplisteleDAO;
import com.entitiy.Hesap;

/**
 * Servlet implementation class hesapupdate
 */
@WebServlet("/hesapupdate")
public class hesapupdate extends HttpServlet {
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
		
		hesaplisteleDAO hesaplistele=new hesaplisteleDAO();
		ArrayList<Hesap> myhesap=hesaplistele.getAllHeasaplar();
		
		request.setAttribute("myhesap", myhesap);
		request.setAttribute("loginsonuc",gecis);
		request.getRequestDispatcher("hesapupdate.jsp").forward(request, response);
	}

}
