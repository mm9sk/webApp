<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<%
String name = request.getParameter("name");
String kana = request.getParameter("kana");
String gender = request.getParameter("gender");
String hobby = request.getParameter("hobby");
String word = request.getParameter("word");

request.setAttribute("name", name);
request.setAttribute("kana", kana);
request.setAttribute("gender", gender);
request.setAttribute("hobby", hobby);
request.setAttribute("word", word);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/base.css">
<link rel="stylesheet" href="CSS/confStyle.css">
</head>
<body>
	<header>
		<img src="#">
		<div>
			<h1>JavaTeamDevelopment</h1>
		</div>
	</header>
	<section>
		<div id="title">
			<h2>自己紹介登録確認</h2>
		</div>
		<form action="InputScreen" method="post" accept-charset="UTF-8">
			<div>
				<label>名前</label>
				<div>
				<%= name %>
				</div>
			</div>
			<div>
				<label>フリガナ</label>
				<div>
					<%= kana%>
				</div>
			</div>
			<div>
				<label>性別</label>
				<div>
					<%= gender%>
				</div>
			</div>
			<div>
				<label>趣味</label>
				<div>
					<%= hobby%>
				</div>
			</div>
			<div>
				<label>一言</label>
				<div>
					<%= word%>
				</div>
			</div>
			<div class="access">
				<input type="button" value="戻る" onclick="goBack()"> <input
					type="submit" value="次へ">
			</div>
		</form>
	</section>
	<script>
		function goBack() {
			window.history.back();
		}
	</script>
</body>
</html>