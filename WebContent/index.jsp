<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生信息管理系统登录</title>
<script type="text/javascript">
	function resetVal(){
		document.getElementById("userName").value="";
		document.getElementById("password").value="";
	}
</script>
</head>
<body>
<form action="login" method="post">
		<table align="center" width="441px" height="311px" background="img/login.jpg">
			<tr height="100">
			</tr>
			<tr height="10">
				<td width="30%"></td>
				<td width="20%">用户名：</td>
				<td><input type="text" name="userName" value="${userName }" id="userName"/></td>
				<td width="30%"></td>
			</tr>
			<tr height="10">
				<td width="30%"></td>
				<td width="20%">密码：</td>
				<td><input type="password" name="password" value="${password }" id="password"/></td>
				<td width="30%"></td>
			</tr>
			<tr height="10">
				<td width="30%"></td>
				<td><input type="submit" name="submit" value="登录" /></td>
				<td><input type="reset" name="button" value="重置" onclick="resetVal()"/></td>
				<td width="30%"></td>
			</tr>
			<tr height="10">
				<td width="30%"></td>
				<td colspan="3">
					<font color="red">${error}</font>
				</td>
			</tr>
			<tr>
				<td></td>
			</tr>
		</table>
</form>
</body>
</html>