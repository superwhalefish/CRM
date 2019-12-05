	$(function() {
		init();
	})
	function init() {
		$("#askersTab").datagrid({
			url : 'getAskerAlls',
			method : 'post',
			pagination : true,
			singleSelect : true,
			toolbar:"#askersTabTools",
			queryParams : {
				checkInTime: $('#sercheckInTime').datebox('getValue')	
			}
			
		})
	}

	function formattercaozuo(value, row, index) {
		return "<a href='javascript:void(0)' onclick='set("
				+ index
				+ ")'>分配资源<a/>  <a href='javascript:void(0)' onclick='updateWeight("
				+ index + ")'>编辑权重<a/>"

	}
	var edit;
	function updateWeight(index) {
		edit=index;
		var datas = $("#askersTab").datagrid("getData");
		var row = datas.rows[index];
		//填充表单
		$("#updateWeightFrm").form("load",row);
		//打开弹窗
		$("#updateWeightDialog").dialog("open");
	}
	/* 取消编辑权重的对话框 */
	function updateWeightClose() {
		$('#updateWeightDialog').dialog("close");
	}
	function updateWeightSubmit() {
		var datas = $("#askersTab").datagrid("getData");
		var row = datas.rows[edit];
		 $.post("updateWeight", {
			askerId:row.askerId,
			weight : $("#weight").val(),
			bakContent : $("#bakContent").val()
		}, function(res) {
			if (res > 0) {
				$('#askersTab').datagrid('reload');
				$('#updateWeightDialog').dialog("close");
				$.messager.alert('提示', "修改成功!!!!")
			} else {
				$.messager.alert('提示', "修改失败!!!!")
			}
		}, "json") 
	}
	
	function formattercaozuostu(value, row, index) {
		return "<a href='javascript:void(0)' onclick='addStuToUser(" + index
				+ ")'>添加<a/> ";
	}


	
	
	
	function set(index) {
		var data = $("#askersTab").datagrid("getData");
		var row = data.rows[index];
		$("#setFrm").window("setTitle", "正在对" + row.askerName + "员工分配学生");
		fenpei();
		$("#setFrm").window("open");
	}
	

	function addStuToUser(index) {
		var data = $("#allStu").datagrid("getData");
		var row = data.rows[index];
		var datas = $("#askersTab").datagrid("getSelected");
		$.messager.confirm("提示", "确认把此学生分配给该员工？", function(r) {
			if (r) {
				$.post("updateStuNetIdById", {
					id : row.id,
					netPusherId : datas.userid,
				}, function(res) {
					if (res > 0) {
						if(res==2){
							$.messager.alert("提示", "该学生已被分配，请勿重复操作");
						}else{
							$("#allStu").datagrid("reload");
							$.messager.alert("提示", "分配成功");
						}
						
					} else {
						$.messager.alert("提示", "分配失败");
					}
				}, "json")
			}
		})
	}
	function fenpei(){
		$("#allStu").datagrid({
			url : "getStuAll",
			method : "post",
			pagination : true,
			toolbar:"#allStuTools",
			queryParams:{
				netPusherId:$('#fenpeizhuangtai').combobox('getValue')
			}
			
		});  
	}

	function shuaxin(){
		$("#askersTab").datagrid({
			url : 'getAskerAlls',
			method : 'post',
			pagination : true,
			singleSelect : true,
			toolbar:"#askersTabTools",
			queryParams : {
				checkInTime:""	
			}
			
		})
	}