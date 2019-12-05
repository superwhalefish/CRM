<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>分量顺序</title>
<script src="../js/global.js"></script>
<script src="../js/love.js"></script>
<script src="../js/emp/weight.js"></script>
<script type="text/javascript">
	function lookEmp() {
		$("#askersTab").datagrid({
			url : 'selectEmpName',
			method : 'post',
			pagination : true,
			singleSelect : true,
			toolbar : "#askersTabTools",
		})
	}
	function addStuToUserS() {
		var datas = $("#askersTab").datagrid("getSelected");
		var rows = $("#allStu").datagrid("getSelections"); // 获取所有选中的行
		var ids = "";
		for (var i = 0; i < rows.length; i++) {
			var row = rows[i];
			ids += row.id + ",";
		}
		if (ids.length > 0) {
			$.messager.confirm("确认操作", "确定批量添加", function(r) {
				if (r) {
					$.post("updateStuNetIdByIdS", {
						StuIds : ids,
						netPusherId : datas.userid
					}, function(res) {
						if (res > 0) {
							$("#allStu").datagrid("reload");
							$.messager.alert("提示", "操作成功");
						} else {

						}
					}, "json")
				}
			})
		} else {
			$.messager.alert("提示", "请选择学生");
		}

	}

	function zidongfenpei() {
	$("#zidongDialog").dialog("open");
	}
	
	function zidongSave(){
		$.post("zidongfenpei", {
			shuliang:$("#shuliang").val()
		}, function(res) {
			if(res>0){
				if(res==1){
					$.messager.alert("提示","分配成功")
					$("#zidongDialog").dialog("close");
				}else if(res==3){
					$.messager.alert("提示","今天未分配员工已分完毕")
				}else{
					$.messager.alert("提示","今天没有签到员工")
				}
				
			}else{
				$.messager.alert("提示","分配失败")
			}
		}, "json")
	}
	function zidongClose(){
		$("#zidongDialog").dialog("close");
	}
</script>
</head>
<body>
<div id="zidongDialog" class="easyui-dialog"
		data-options="modal:true,closed:true,title:'分配数量',buttons:[{
				text:'提交',
				iconCls:'icon-save',
				handler:function(){
				zidongSave()
				}
			},{
				text:'取消',
				iconCls:'icon-clear',
				handler:function(){
				zidongClose()
				}
			}]">
		<form id="zidongFrm">
			<table cellspacing="5">
				<tr>
					<td>数量：</td>
					<td><input class="easyui-textbox" type="text" id="shuliang"/></td>
				</tr>
			</table>
		</form>
	</div>


	<div id="askersTabTools">
		签到时间:<input type="text" class="easyui-datebox" id="sercheckInTime">
		<a href="javascript:void(0)" onclick="init()"
			class="easyui-linkbutton" data-options="iconCls:'icon-search'">搜索</a>
		<a href="javascript:void(0)" onclick="lookEmp()"
			class="easyui-linkbutton" data-options="iconCls:'icon-search'">查看员工</a>
		<a href="javascript:void(0)" onclick="zidongfenpei()"
			class="easyui-linkbutton" data-options="iconCls:'icon-add'">自动分配</a>
		<a href="javascript:void(0)" onclick="shuaxin()"
			class="easyui-linkbutton" data-options="iconCls:'icon-reload'">刷新</a>
	</div>
	<table id="askersTab" class="easyui-datagrid">
		<thead>
			<tr>
				<th data-options="field:'askerId',title:'访问者编号'"></th>
				<th data-options="field:'askerName',title:'用户名'"></th>
				<th data-options="field:'roleName',title:'用户角色'"></th>
				<th data-options="field:'checkInTime',title:'签到时间'"></th>
				<th data-options="field:'weight',title:'权重'"></th>
				<th data-options="field:'bakContent',title:'备注'"></th>
				<th
					data-options="field:'caozuo',title:'操作',formatter:formattercaozuo"></th>
		</thead>
	</table>


	<div id="setFrm" class="easyui-window"
		data-options="modal:true,closed:true"
		style="width: 500px; height: 600px;">

		<div id="allStuTools">
			分配状态：<select id="fenpeizhuangtai" class="easyui-combobox"
				style="width: 200px;">
				<option value="">--请选择--</option>
				<option value="1">--已分配--</option>
				<option value="2">--未分配--</option>
			</select> <a href="javascript:void(0)" onclick="fenpei()"
				class="easyui-linkbutton" data-options="iconCls:'icon-search'">搜索</a>
			<a href="javascript:void(0)" onclick="addStuToUserS()"
				class="easyui-linkbutton" data-options="iconCls:'icon-add'">批量添加</a>
		</div>
		<table id="allStu" class="easyui-datagrid" data-options="title:'分配资源'">
			<thead>
				<tr>
					<th data-options="field:'asd',checkbox:true"></th>
					<th data-options="field:'id'">学生编号</th>
					<th data-options="field:'name'">学生名称</th>
					<th data-options="field:'caozuo',formatter:formattercaozuostu">操作</th>
				</tr>
			</thead>
		</table>
	</div>



	<div id="updateWeightDialog" class="easyui-dialog"
		data-options="modal:true,closed:true,title:'编辑权重',buttons:[{
				text:'保存',
				iconCls:'icon-save',
				handler:function(){
				updateWeightSubmit()
				}
			},{
				text:'取消',
				iconCls:'icon-clear',
				handler:function(){
				updateWeightClose()
				}
			}]">
		<form id="updateWeightFrm">
			<table cellspacing="5">
				<tr>
					<td>权重：</td>
					<td><input class="easyui-textbox" type="text" id="weight"
						name="weight" /></td>
				</tr>
				<tr>
					<td>备注：</td>
					<td><input class="easyui-textbox" type="text" id="bakContent"
						name="bakContent" /></td>
				</tr>

			</table>
		</form>
	</div>
</body>
</html>