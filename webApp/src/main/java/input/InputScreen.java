package input;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InputScreen")
public class InputScreen extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String kana = request.getParameter("kana");
		String gender = request.getParameter("gender");
		String hobby = request.getParameter("hobby");
		String word = request.getParameter("word");
		LocalDate currentDate = LocalDate.now();
		Date sqlDate = Date.valueOf(currentDate);
		
		System.out.println(name);
		System.out.println(kana);
		Connection dbResult = null;
		
		try {
			Class.forName("org.postgresql.Driver");
		}catch(ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		
		try {
			String dbUrl ="jdbc:postgresql://localhost:5432/JavaTeamDevelopment";
			String dbUserName ="postgres";
			String dbPassword ="postgres";
			
			dbResult = DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
			System.out.println("接続できました。");
			
			String sql ="INSERT INTO introductions (user_id, name, kana, gender, hobby, word, created_at) VALUES (?, ?, ?, ?, ?, ?, ?)";
			
			PreparedStatement statement = dbResult.prepareStatement(sql);
			
			statement.setInt(1, 123);
			statement.setString(2, name);
			statement.setString(3, kana);
			statement.setString(4, gender);
			statement.setString(5, hobby);
			statement.setString(6, word);
			statement.setDate(7, sqlDate);
			
			statement.executeUpdate();
			
			request.getRequestDispatcher("confirmation.jsp").forward(request, response);
		}catch(SQLException e) {
			e.printStackTrace();
			request.setAttribute("exception", e);
			
			request.getRequestDispatcher("inputScreen.jsp").forward(request, response);
		}
		}
}
