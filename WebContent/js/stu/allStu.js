	function formattersex(value, row, index) {
		return value == 1 ? "男" : "女";
	}

	function formatterstate(value, row, index) {
		return value == 1 ? "状态无" : "状态有";
	}

	function formatterisValid(value, row, index) {
		return value == 1 ? "有效" : "无效";
	}

	function formatterisReturnVist(value, row, index) {
		return value == 1 ? "已回访" : "未回访";
	}

	function formatterisHome(value, row, index) {
		return value == 0 ? "已上门" : "未上门";
	}

	function formatterisPay(value, row, index) {
		return value == 1 ? "已缴费" : "未缴费";
	}

	function formatterisReturnMoney(value, row, index) {
		return value == 0 ? "已退费" : "未退费";
	}

	function formatterisInClass(value, row, index) {
		return value == 0 ? "已进班" : "未进班";
	}

	function formatterisDel(value, row, index) {
		return value == 0 ? "已删除" : "未删除";
	}

	function formatterisBaoBei(value, row, index) {
		return value == 1 ? "已报备" : "未报备";
	}

	$(function() {
		initStu();
	})

	function initStu() {
		$("#tabStu").datagrid({
			url : "getStu",
			method : "post",
			fitColumns : true,
			toolbar : "#tabBar",
			singleSelect : true,
			pagination : true,
			queryParams : {
				name : $("#name").val(),
				phone : $("#phone").val(),
				ziXunName : $("#ziXunName").val(),
				isPay : $("#isPay").combobox("getValue"),
				isValid : $("#isValid").combobox("getValue"),
				isReturnVist : $("#isReturnVist").combobox("getValue"),
				qq : $("#qq").val(),
				createTime : $("#createTime").datebox('getValue'),
				homeTime : $("#homeTime").datebox('getValue'),
				firstVistTime : $("#firstVistTime").datebox('getValue'),
				payTime : $("#payTime").datebox('getValue'),
				inClassTime : $("#inClassTime").datebox('getValue'),
			}

		})
	}
	/* 新建学员窗口 */
	function addStu() {
		$("#add-dialog").dialog("open");
	}
	/* 学员窗口取消 */
	function clearStu() {
		$("#add-dialog").dialog("close");
	}
	/* 保存新建学员 */
	function bcStu() {
		 var re = /^1([38]\d|5[0-35-9]|7[3678])\d{8}$/; 
		    if (re.test($("#addphone").val())) {
		      $.post("addStu", {
					name : $("#addname").val(),
					sex : $("#addsex").combobox("getValue"),
					age : $("#addage").val(),
					phone : $("#addphone").val(),
					status : $("#addstatus").val(),
				}, function(res) {
					if (res > 0) {
						$("#tabStu").datagrid("reload");
						$("#add-dialog").dialog("close");
						$.messager.alert("提示", "新增成功")
					} else {
						$.messager.alert("提示", "新增失败")
					}
				}, "json")
		    }else{
		    	$.messager.alert("提示", "手机格式不正确")
		    }
		
	}



	function chakan(index) {
		var data = $("#tabStu").datagrid("getData");
		var row = data.rows[index];
		$("#chakan-frm").form("load", row);
		$("#chakan-dialog").dialog("open");
	}

	function closeStu() {
		$("#chakan-dialog").dialog("close");
	}

	function edit(index) {
		var data = $("#tabStu").datagrid("getData");
		var row = data.rows[index];
		$("#edit-frm").form("load", row);
		$("#edit-dialog").dialog("open");
	}

	function updateStu() {
		
		 var re = /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/; 
		 var TEL_REGEXP = /^1([38]\d|5[0-35-9]|7[3678])\d{8}$/;
		 if (re.test($("#updateqq").val())) {
			 if(TEL_REGEXP.test($("#updatephone").val())){
				 $.post("updateStu", {
					 id : $("#updateid").val(),
						name : $("#updatename").val(),
						sex : $("#updatesex").combobox('getValue'),
						age : $("#updateage").val(),
						phone : $("#updatephone").val(),
						status : $("#updatestatus").val(),
						state : $("#updatestate").combobox('getValue'),
						msgSource : $("#updatemsgSource").val(),
						sourceUrl : $("#updatesourceUrl").val(),
						sourceKeyWorld : $("#updatesourceKeyWorld").val(),
						address : $("#updateaddress").val(),
						qq : $("#updateqq").val(),
						weixin : $("#updateweixin").val(),
						learnForward : $("#updatelearnForward").val(),
						isBaoBei : $("#updateisBaoBei").combobox('getValue'),
						ziXunName : $("#updateziXunName").val(),
						createUser : $("#updatecreateUser").val(),
						concern : $("#updateconcern").val()
					}, function(res) {
						if (res > 0) {
							$("#tabStu").datagrid("reload");
							$("#edit-dialog").dialog("close");
							$.messager.alert("提示", "修改成功")
						} else {
							$.messager.alert("提示", "修改失败")
						}
					}, "json")
			 }else{
				 $.messager.alert("提示", "手机格式不正确")
			 }
		      
		    }else{
		    	$.messager.alert("提示", "邮箱格式不正确")
		    }
		 
		
	}

	function updateClear() {
		$("#edit-dialog").dialog("close");
	}

	//导出excel
	function exportExcel() {
		$('#tabStu').datagrid('toExcel', 'yy.xls'); // export to excel
	}

	