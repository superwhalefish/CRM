<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>学生跟踪</title>
<script src="../js/global.js"></script>
<script type="text/javascript">
	$(function() {
		init();
	})
	function init() {
		$("#netfollowsTab").datagrid({
			url : 'selectNetfollows',
			method : 'post',
			pagination : true,
			singleSelect : true,
			toolbar : '#netfollowTool',
			queryParams : {
				studentName : $("#studentName").val(),
				startTime :  $('#startfollowTime').datetimebox('getValue'),
				endTime :  $('#endfollowTime').datetimebox('getValue'),
				followState : $("#followState").combobox('getValue'),
				followType : $("#followType").combobox('getValue'),
			}
		})
	}
	
	 function formattercaozuo(value, row, index){
		 return "<a href='javascript:void(0)' onclick='chakan("
			+ index + ")'>查看</a>";
	 }
	 
	 function chakan(index){
		 
		 	var data = $("#netfollowsTab").datagrid("getData");
			var row = data.rows[index];
			$("#chakan-frm").form("load", row);
			$("#ckdg").dialog("open");
		 
	 }
	 
	 function clearN(){
		 $("#ckdg").dialog("close");
	 }
</script>


</head>
<body>
	<!-- 显示跟踪者信息 -->
	<table id="netfollowsTab" class="easyui-datagrid">
		<thead>
			<tr>
				<th data-options="field:'id',title:'跟踪者编号'"></th>
				<th data-options="field:'studentName',title:'学生姓名'"></th>
				<th data-options="field:'followTime',title:'跟踪时间'"></th>
				<th data-options="field:'content',title:'内容'"></th>
				<th data-options="field:'followState',title:'回访情况'"></th>
				<th data-options="field:'followType',title:'跟踪类型'"></th>
				 <th
					data-options="field:'caozuo',title:'操作',formatter:formattercaozuo"></th> 
		</thead>
	</table>
	<div id="netfollowTool">
		<form id="gsy" class="easyui-form">
			<label for="name">学员名称:</label> <input class="easyui-validatebox"
				type="text" id="studentName" data-options="required:true" /> <label
				for="name">开始时间:</label> <input class="easyui-datetimebox" type="text"
				id="startfollowTime" data-options="required:true" /> <label for="name">结束时间:</label>
			<input class="easyui-datetimebox" type="text" id="endfollowTime"
				data-options="required:true" /> <label for="name">回访情况:</label> <select
				id="followState" class="easyui-combobox">
				<option value="">--请选择--</option>
				<option value="思量">思量</option>
				<option value="上门未报名">上门未报名</option>
				<option value="报名未进班">报名未进班</option>
			</select> <label for="name">跟踪方式:</label> <select id="followType"
				class="easyui-combobox">
				<option value="">--请选择--</option>
				<option value="面谈">面谈</option>
				<option value="网络">网络</option>
				<option value="电话">电话</option>
			</select> <a href="javascript:void(0)" onclick="init()"
				class="easyui-linkbutton" data-options="iconCls:'icon-search'">搜索</a>
		</form>
	</div>

	<div id="ckdg" class="easyui-dialog" style="width:400px;height:300px"
				data-options="title:'我的对话框',modal:true,closed:true,
					buttons:[{
						text:'取消',
						handler:function(){clearN()}
					}]">
					
					<form id="chakan-frm">
						<table>
							<thead>
								<tr>
									<td> <label for="name">内容：</label>  </td>
									<td><textarea readonly="readonly" rows="13" cols="45" name="content" ></textarea></td>
								</tr>
							</thead>
						</table>
					</form>
		</div>

	


</body>
</html>