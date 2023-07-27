package Login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet {
 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	 request.getRequestDispatcher("login.jsp").forward(request, response);
 }
 
 protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
	 
	 String userId = request.getParameter("user_id");
	 String password = request.getParameter("password");
	 
	 String path ="";
	 
	 try {
		 String url ="jdbc:postgresql://localhost:5432/yourDbName";
		 String user ="yourUserName";
		 String pass ="yourPassword";
		 
		 String sql ="SELECT id FROM users WHERE id=? AND password=?";
		 
		 Class.forName("org.postgresql.Driver");
		 try(Connection con = DriverManager.getConnection(url, user, pass);PreparedStatement pstmt = con.prepareStatement(sql)){
			 
			 pstmt.setString(1, userId);
			 pstmt.setString(2, password);
			 
			 ResultSet res = pstmt.executeQuery();
			 
			 if(res.next()) {
				 request.setAttribute("user_id", res.getString("id"));
				 
				 path ="loginSuccess.jsp";
			 }else {
				 request.setAttribute("loginFailure", "ログインに失敗しました");
				 
				 path="login.jsp";
			 }
		 }
	 }catch (ClassNotFoundException | SQLException e ) {
		 e.printStackTrace();
	 }
	 
	 RequestDispatcher rd = request.getRequestDispatcher(path);
	 rd.forward(request, response);
 }
}
