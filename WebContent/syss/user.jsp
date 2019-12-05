<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户管理</title>
<script src="../js/global.js"></script>
<script src="../js/love.js"></script>
<script type="text/javascript" src="../js/syss/user.js"></script>
</head>
<body>
	<!-- 工具条 -->
	<div id="usersTool">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			onclick="reload()" data-options="iconCls:'icon-reload'">刷新表</a> <a
			href="javascript:void(0)" class="easyui-linkbutton" onclick="WLZSH()">网络咨询师</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="ZSH()">咨询师</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			onclick="ZSHJL()">咨询师经理</a>
		<form class="easyui-form">
			<a href="javascript:void(0)" onclick="add()"
				class="easyui-linkbutton" data-options="iconCls:'icon-add'">添加</a> <label
				for="name">用户名:</label> <input class="easyui-validatebox"
				type="text" id="userName" data-options="required:true" /> <label
				for="name">创建起止时间:</label> <input class="easyui-datetimebox"
				type="text" id="startTime" data-options="required:true" /> <label
				for="name">创建结束时间:</label> <input class="easyui-datetimebox"
				type="text" id="endTime" data-options="required:true" /> <label
				for="name">是否锁定:</label> <select id="isLockOut"
				class="easyui-combobox">
				<option value=" ">--请选择--</option>
				<option value="1">锁定</option>
				<option value="2">未锁定</option>

			</select> <a href="javascript:void(0)" onclick="init()"
				class="easyui-linkbutton" data-options="iconCls:'icon-search'">搜索</a>
		</form>
		<!-- class="easyui-validatebox" -->
	</div>
	<!-- 显示用户信息 -->
	<table id="usersTab" class="easyui-datagrid">
		<thead>
			<tr>
				<th data-options="field:'id',title:'用户编号'"></th>
				<th data-options="field:'loginName',title:'登录名'"></th>
				<th data-options="field:'passWord',title:'密码'"></th>
				<th
					data-options="field:'isLockOut',title:'是否锁定',formatter:suodingisLockOut"></th>
				<th data-options="field:'lastLoginTime',title:'最后一次登陆时间'"></th>
				<th data-options="field:'createTime',title:'账户创建时间'"></th>
				<th data-options="field:'psdWrongTime',title:'密码错误次数'"></th>
				<th data-options="field:'lockTime',title:'被锁定时间'"></th>
				<th data-options="field:'protectEmail',title:'密保邮箱'"></th>
				<th data-options="field:'protectMTel',title:'密保手机号'"></th>
				<th data-options="field:'suoding',formatter:suoding">账号锁定</th>
				<th
					data-options="field:'caozuo',title:'操作',formatter:formattercaozuo"></th>
		</thead>
	</table>

	<!-- 添加用户信息 -->
	<div id="addusersDialog" class="easyui-dialog"
		data-options="modal:true,closed:true">
		<form id="addusersFrm" class="easyui-form">
			<table>
				<tr>
					<td><label for="name">登录名:</label></td>
					<td><input class="easyui-validatebox" type="text"
						id="loginName" name="loginName" data-options="required:true" /></td>
				</tr>
				<tr>
					<td><label for="name">密码:</label></td>
					<td><input class="easyui-validatebox" type="text"
						id="passWord" name="passWord" data-options="required:true" /></td>
				</tr>
				<tr>
					<td><label for="name">密保邮箱:</label></td>
					<td><input class="easyui-validatebox" type="text"
						id="protectEmail" name="protectEmail" data-options="required:true" /></td>
				</tr>
				<tr>
					<td><label for="name">密保手机号:</label></td>
					<td><input class="easyui-validatebox" type="text"
						id="protectMTel" name="protectMTel" data-options="required:true" /></td>
				</tr>
				<tr>
					<td><a href="javascript:void(0)" class="easyui-linkbutton"
						onclick="addUsersSubmit()">提交</a></td>
					<td><a href="javascript:void(0)" class="easyui-linkbutton"
						onclick="addUsersClose()">取消</a></td>
				</tr>
			</table>
		</form>

	</div>
	<!-- 修改用户信息 -->
	<div id="updateusersDialog" class="easyui-dialog"
		data-options="modal:true,closed:true">
		<form id="updateusersFrm" class="easyui-form">
			<table>
				<tr>
					<td><label for="name">用户编号:</label></td>
					<td><input disabled="disabled" class="easyui-validatebox"
						type="text" id="id1" name="id" data-options="required:true" /></td>
				</tr>
				<tr>
					<td><label for="name">登录名:</label></td>
					<td><input disabled="disabled" class="easyui-validatebox"
						type="text" id="loginName1" name="loginName"
						data-options="required:true" /></td>
				</tr>

				<tr>
					<td><label for="name">密保邮箱:</label></td>
					<td><input class="easyui-validatebox" type="text"
						id="protectEmail1" name="protectEmail"
						data-options="required:true" /></td>
				</tr>
				<tr>
					<td><label for="name">密保手机号:</label></td>
					<td><input class="easyui-validatebox" type="text"
						id="protectMTel1" name="protectMTel" data-options="required:true" /></td>
				</tr>
				<tr>
					<td><a href="javascript:void(0)" class="easyui-linkbutton"
						onclick="updateUsersSubmit()">提交</a></td>
					<td><a href="javascript:void(0)" class="easyui-linkbutton"
						onclick="updateUsersClose()">取消</a></td>
				</tr>
			</table>
		</form>

	</div>

	<!-- 所有角色 -->
	<div id="setFrm" class="easyui-window"
		data-options="modal:true,closed:true"
		style="width: 500px; height: 600px;">
		<table>
			<tr>
				<td width="200px">
					<table id="allrole" class="easyui-datagrid"
						data-options="title:'所有角色',singleSelect:true">
						<thead>
							<tr>
								<th data-options="field:'name',width:150">角色名称</th>
							</tr>
						</thead>
					</table>
				</td>
				<td width="100px"><a href="javascript:void(0)"
					class="easyui-linkbutton" onclick="addUserToRole()">--></a><br />
					<a href="javascript:void(0)" class="easyui-linkbutton"
					onclick="delUserToRole()"> <--</a></td>
				<td width="200px" valign="top">
					<table id="myrole" class="easyui-datagrid"
						data-options="title:'当前角色',singleSelect:true">
						<thead>
							<tr>
								<th data-options="field:'name',width:150">角色名称</th>
							</tr>
						</thead>
					</table>
				</td>
			</tr>
		</table>

	</div>

</body>
</html>