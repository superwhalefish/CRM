<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>员工签到</title>
<script src="../js/global.js"></script>
<script src="../js/love.js"></script>
<script type="text/javascript" src="../js/emp/userCheck.js">
</script>
<script type="text/javascript">
function init() {
	$("#userCheck").datagrid({
		url : 'getUsercheckAll',
		method : 'post',
		pagination : true,
		toolbar : '#userchecksTool',
		queryParams : {
			userName : $("#username").val(),
			checkInTime : $('#checkTime').datebox('getValue'),
			isCancel : $('#isCancel').combobox('getValue'),
			checkOutTime : $('#checkOutTime').datebox('getValue'),
		}
	})
}

function piliang(){
	var rows = $("#userCheck").datagrid("getSelections");    // 获取所有选中的行
	var ids="";
	for (var i = 0;i < rows.length; i++) {
	    var row = rows[i];
	    ids+=row.id+",";
	}
	$.messager.confirm("确认操作","确定批量签出",function(r){
		if(r){
			$.post("pliangqianchu",{
				usercheckIds:ids
			},function(res){
				if(res>0){
					$("#userCheck").datagrid("reload");
					$.messager.alert("提示","操作成功");
				}else{
					$.messager.alert("提示","操作失败");
				}
			},"json")
		}
	})
	
}
</script>
</head>
<body>
	<!-- getUsercheckAll -->
	<div id="userchecksTool">
		姓名：<input type="text" class="easyui-textbox" id="username">
		签到时间:<input type="text" class="easyui-datebox" id="checkTime">
		签出状态:<select id="isCancel" class="easyui-combobox">
			<option value="">--请选择--</option>
			<option value="已签出">已签出</option>
			<option value="未签出">未签出</option>
		</select> 签出时间:<input type="text" class="easyui-datebox" id="checkOutTime">
		<a href="javascript:void(0)" onclick="init()"
			class="easyui-linkbutton" data-options="iconCls:'icon-search'">搜索</a>
			<a href="javascript:void(0)" onclick="piliang()"
			class="easyui-linkbutton" data-options="iconCls:'icon-search'">批量签出</a>
		<a href="javascript:void(0)" onclick="shuaxin()"
			class="easyui-linkbutton" data-options="iconCls:'icon-reload'">刷新</a>
	</div>
	<table id="userCheck" class="easyui-datagrid">
		<thead>
			<tr>
				<th data-options="field:'checkbox',checkbox:true"></th>
				<th data-options="field:'id',title:'编号'"></th>
				<th data-options="field:'userId',title:'用户编号'"></th>
				<th data-options="field:'userName',title:'员工名称'"></th>
				<th data-options="field:'checkInTime',title:'签到时间'"></th>
				<th data-options="field:'checkState',title:'签到状态'"></th>
				<th data-options="field:'isCancel',title:'签出状态'"></th>
				<th data-options="field:'checkOutTime',title:'签出时间'"></th>

				<th
					data-options="field:'caozuo',title:'操作',formatter:formattercaozuo"></th>
		</thead>

	</table>
</body>
</html>