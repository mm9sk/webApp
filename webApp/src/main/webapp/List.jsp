
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
		<h1>
			<img src="./img/image.png">
		</h1>
		<h1>JavaTeamDevelopment</h1>
	</header>
	
	<main>
		<h2 class="text-center mb-3">自己紹介登録者一覧</h2>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">名前</th>
				</tr>
			</thead>
			<tbody>
				<%-- <%
					for (Customer cus : customer_list) {
					%> --%>
				<tr>
					<%-- <td><%=cus.getCustomer_id()%></td>
						<td><%=cus.getName()%></td>
						<td><%=cus.getAddress()%></td>
						<td><%=cus.getRegistered_time()%></td>
						<td><%=cus.getUpdated_time()%></td> --%>
				</tr>
			</tbody>
		</table>
	</main>
</body>
</html>