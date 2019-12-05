<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>角色管理</title>
<script src="../js/global.js"></script>
<script src="../js/love.js"></script>
<script type="text/javascript" src="../js/syss/jsgl.js"></script>
<script type="text/javascript">
function addsave() {
	$.post("AddRoles", {
		name : $("#name").val()
	}, function(res) {
		if (res > 0) {
			if(res==2){
				$.messager.alert("提示", "角色已存在，请勿重复操作");
			}else{
				$("#rolesTab").datagrid("reload");
				$("#add_dialog").dialog("close");
				$.messager.alert("提示", "新增成功");
			}
		}else{
				$.messager.alert("提示", "添加失败");
		}

	}, "json")
}
</script>
</head>
<body>

	<!-- 工具条 -->
	<div id="usersTool">
		<form id="gsy" class="easyui-form">
			<label for="name">角色名:</label> <input class="easyui-validatebox"
				type="text" id="rolesName" data-options="required:true" /> <a
				href="javascript:void(0)" onclick="init()" class="easyui-linkbutton"
				data-options="iconCls:'icon-search'">搜索</a> <a
				href="javascript:void(0)" class="easyui-linkbutton"
				data-options="iconCls:'icon-add'" onclick="add()">新增</a>
		</form>
		<!-- class="easyui-validatebox" -->
	</div>
	<table id="rolesTab" class="easyui-datagrid">
		<thead>
			<tr>
				<th data-options="field:'id',title:'角色编号'"></th>
				<th data-options="field:'name',title:'角色名'"></th>
				<th
					data-options="field:'caozuo',title:'操作',formatter:formattercaozuo"></th>
		</thead>
	</table>
	<!-- 角色新增框 -->
	<div id="add_dialog" class="easyui-dialog"
		data-options="modal:true,closed:true,title:'新增角色',buttons:[{
				text:'保存',
				iconCls:'icon-save',
				handler:function(){
				addsave()
				}
			},{
				text:'取消',
				iconCls:'icon-clear',
				handler:function(){
				addclear()
				}
			}]">
		<form id="add_frm">
			<table cellspacing="5">
				<tr>
					<td>角色名称：</td>
					<td><input id="name" class="easyui-textbox" /></td>
				</tr>
			</table>
		</form>
	</div>
	<!-- 学生信息修改框 -->
	<div id="edit_dialog" class="easyui-dialog"
		data-options="modal:true,closed:true,title:'修改角色信息',buttons:[{
				text:'保存',
				iconCls:'icon-save',
				handler:function(){
				editsave();
				}
			},{
				text:'取消',
				iconCls:'icon-clear',
				handler:function(){
				editclear();
				}
			}]">
		<form id="edit_frm">
			<table cellspacing="5">

				<tr>
					<td>角色名称：</td>
					<td><input id="name1" name="name" class="easyui-textbox" /></td>
				</tr>
			</table>
		</form>
	</div>
	<div id="modalWindow" class="easyui-dialog"
		data-options="modal:true,closed:true,top:20,buttons:'#buttool'"
		style="width: 360px; height: 380px;">
		<ul id="modalTree" class="easyui-tree"></ul>
		<div id="buttool">
			<a href="javascript:void(0)" class="easyui-linkbutton"
				data-options="iconCls:'icon-ok'" onclick="setModal()">保存</a>
		</div>
	</div>


	<!-- 查看员工 -->
	<div id="window_user" class="easyui-window"
		data-options="modal:true,closed:true"
		style="width: 500px; height: 600px;">
		<table id="userByRole" class="easyui-datagrid"
			data-options="title:'当前角色下员工',singleSelect:true">
			<thead>
				<tr>
					<th data-options="field:'id',title:'用户编号'"></th>
					<th data-options="field:'loginName',title:'登录名'"></th>
					<th data-options="field:'passWord',title:'密码'"></th>
					<th data-options="field:'lastLoginTime',title:'最后一次登陆时间'"></th>
					<th data-options="field:'createTime',title:'账户创建时间'"></th>
					<th data-options="field:'psdWrongTime',title:'密码错误次数'"></th>
					<th data-options="field:'lockTime',title:'被锁定时间'"></th>
					<th data-options="field:'protectEmail',title:'密保邮箱'"></th>
					<th data-options="field:'protectMTel',title:'密保手机号'"></th>
				</tr>
			</thead>
		</table>

	</div>
</body>
</html>