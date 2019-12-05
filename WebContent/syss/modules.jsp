<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>模块管理</title>
<script src="../js/global.js"></script>
<script src="../js/love.js"></script>
<script type="text/javascript" src="../js/syss/modules.js"></script>
<script type="text/javascript">
/* 提交新增父模块信息 */
function addsaves() {
	$.post("AddParentmodules", {
		text : $("#text").val(),
	}, function(res) {
		if (res > 0) {
			if(res==2){
				$.messager.alert("提示", "该模块已存在");
			}else{
				init();
				$("#addparentmodules_dialog").dialog("close");
				$.messager.alert("提示", "新增成功");
			}
			
		}

	}, "json")
}

//添加子节点
function addsave() {
	var nodes = $('#treemenu').tree('getSelected');
	$.post("AddChildmodules", {
		text : $("#text1").val(),
		parentId : nodes.id
	}, function(res) {
		if (res > 0) {
			if(res==2){
				$.messager.alert("提示", "该模块已存在");
			}else{
				$("#addchildmodules_dialog").dialog("close");
				$.messager.alert("提示", "新增成功");
				init();
			}
			
		}
	}, "json")
}
</script>
</head>
<body>
	<!-- 父模块新增框 -->
	<div id="addparentmodules_dialog" class="easyui-dialog"
		data-options="modal:true,closed:true,title:'新增父模块',buttons:[{
				text:'保存',
				iconCls:'icon-save',
				handler:function(){
				addsaves()
				}
			},{
				text:'取消',
				iconCls:'icon-clear',
				handler:function(){
				addclear()
				}
			}]">
		<form id="addparentmodules_frm">
			<table cellspacing="5">
				<tr>
					<td>父模块名称：</td>
					<td><input id="text" class="easyui-textbox" /></td>
				</tr>
			</table>
		</form>
	</div>
	<!-- 新增子节点-->
	<div id="addchildmodules_dialog" class="easyui-dialog"
		data-options="modal:true,closed:true,title:'新增父模块',buttons:[{
				text:'保存',
				iconCls:'icon-save',
				handler:function(){
				addsave()
				}
			},{
				text:'取消',
				iconCls:'icon-clear',
				handler:function(){
				addclears()
				}
			}]">
		<form id="addparentmodules_frm">
			<table cellspacing="5">
				<tr>
					<td>子节点名称：</td>
					<td><input id="text1" class="easyui-textbox" /></td>
				</tr>
			</table>
		</form>
	</div>
	<div id="mm" class="easyui-menu" style="width: 120px;">
		<div onclick="ChildrenRemove()" data-options="iconCls:'icon-remove'">删除</div>
	</div>
	<div id="mm1" class="easyui-menu" style="width: 120px;">
		<div onclick="ParentAppend()" data-options="iconCls:'icon-add'">添加</div>
		<div onclick="ParentRemove()" data-options="iconCls:'icon-remove'">删除</div>
	</div>

	<div class="easyui-panel" style="padding: 5px">
		<div>
			<a href="javascript:void(0)" class="easyui-linkbutton"
				data-options="iconCls:'icon-add'" onclick="addModuleInfo()">新增</a>
		</div>
		<ul id="treemenu" class="easyui-tree"
			data-options="iconCls:'icon-save',collapsible:true,checkbox:true"></ul>
	</div>
</body>
</html>