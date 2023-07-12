<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログイン画面</title>
</head>
<body>
	<h1 class="mb-3" style="text-align: center">ログイン</h1>
	<form action="/CustomerManagement/LoginServlet" method="post">
		<div class="mb-3">
			<label for="adminID" class="form-label">UserID</label> <input
				type="text" class="form-control" id="adminID" name="admin_id">
		</div>
		<div class="mb-3">
			<label for="pass" class="form-label">PassWord</label> <input
				type="password" class="form-control" id="pass" name="password">
		</div>
		<button type="submit" class="btn btn-primary">登録</button>
	</form>
</body>
</html>