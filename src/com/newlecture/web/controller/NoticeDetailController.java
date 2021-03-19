package com.newlecture.web.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/notice/detail")
public class NoticeDetailController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		   int id = Integer.parseInt(request.getParameter("id"));
		   
		   	String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
			String sql = "SELECT * FROM NOTICE WHERE ID=?";
			
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection(url, "NEWLEC", "119562");
				PreparedStatement st = con.prepareStatement(sql);
				st.setInt(1, id);
				
				ResultSet rs = st.executeQuery();
			   
				rs.next();
				
			 	String title = rs.getString("TITLE");
			 	Date regDate = rs.getDate("REGDATE");
			 	String content = rs.getString("CONTENT");
			 	String files = rs.getString("FILES");
			 	String writerId = rs.getString("WRITER_ID");
			 	String hit = rs.getString("HIT");
			    
				
				request.setAttribute("title", title);
				request.setAttribute("regDate", regDate);
				request.setAttribute("content", content);
				request.setAttribute("files", files);
				request.setAttribute("writerId", writerId);
				request.setAttribute("hit", hit);
			 	
			    rs.close();
					st.close();
					con.close();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			

			
			request.getRequestDispatcher("/notice/detail.jsp").forward(request, response);
	}
}
