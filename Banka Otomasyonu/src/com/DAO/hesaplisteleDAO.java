package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.entitiy.Hesap;


public class hesaplisteleDAO {
	public ArrayList<Hesap> getAllHeasaplar()
	{
		ArrayList<Hesap> hesabim=new ArrayList<Hesap>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/banka","root","root");
			
			String sorgu="SELECT * FROM banka.hesaplar";
			
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
		
		return hesabim;
	}
	

	
}
