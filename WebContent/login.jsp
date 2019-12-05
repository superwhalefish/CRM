<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登陆界面</title>
<script src="js/global.js"></script>

<style type="text/css">
input#rightcode {
	font-family: Arial;
	font-style: italic;
	color: red;
	padding: 2px 3px;
	letter-spacing: 2px;
	font-weight: bolder;
}

</style>
<script src="js/login.js"></script>
<script src="js/snow.js"></script>
</head>

<body style="background-image: url('img/c.jpg');">
	<div
		style="margin-top: 180px; margin-left: 600px; width: 400px; height: 400px;">
		<div style="background-image: url('img/c.jpg');" class="easyui-panel"
			title="用户登录页面" id="uwin">
			<div style="padding: 20px; margin-left: 20px;">
				<form id="frm">
					<table cellpadding="5">
						<tr>
							<td>用户名：</td>
							<td><input id="username" name="name"
								class="easyui-validatebox" data-options="required:true" /></td>
						</tr>
						<tr>
							<td>验证码：</td>
							<td><input type="text" class="easyui-validatebox" name="yan"
								id="yan" data-options="required:true"> <input
								type="button" id="rightcode" onclick="createNewCode()"></td>
						</tr>
						<tr>
							<td>密码：</td>
							<td><input id="userpsw" type="password" name="psw"
								class="easyui-validatebox" data-options="required:true" /></td>
						</tr>

					</table>
				</form>
				<br />
				<div style="text-align: center; padding-top: 5px;">
					<a class="easyui-linkbutton" data-options="iconCls:'icon-ok'"
						onclick="submitForm()">登陆</a> <a class="easyui-linkbutton"
						data-options="iconCls:'icon-clear'" onclick="clearForm()">取消</a>
				</div>
			</div>
			<div>
				<label for=""><input type="checkbox" id="check">7天免登陆</label>
			</div>
		</div>
	</div>
</body>

</html>