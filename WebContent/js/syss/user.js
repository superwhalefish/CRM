	$(function() {
		init();
	})
	function init() {
		$("#usersTab").datagrid({
			url : 'getUserAlls',
			method : 'post',
			pagination : true,
			singleSelect : true,
			toolbar : '#usersTool',
			queryParams : {
				userName : $("#userName").val(),
				startTime : $("#startTime").datetimebox('getValue'),
				endTime : $("#endTime").datetimebox('getValue'),
				isclose : $("#isLockOut").combobox('getValue')
			}
		})
	}
	function formattercaozuo(value, row, index) {
		return "<a href='javascript:void(0)' onclick='set("
				+ index
				+ ")'>设置<a/>  <a href='javascript:void(0)' onclick='update("
				+ index
				+ ")'>修改<a/>  <a href='javascript:void(0)' onclick='deletes("
				+ index
				+ ")'>删除<a/>  <a href='javascript:void(0)' class='easyui-linkbutton'  onclick='RestPasUesr("
				+ index + ")'>重置密碼</a> "

	}

	function RestPasUesr(index) {

		var rows = $("#usersTab").datagrid('getData').rows[index];
		var resetPassword = rows.resetPassword;
		var id = rows.id;
		$.post("ResetUserPas", {
			passWord : "ysd123",
			id : id
		}, function(res) {
			if (res > 0) {
				$('#usersTab').datagrid('reload');
				$.messager.alert("提示", "密碼重置成功");
			} else {
				$.messager.alert("提示", "密碼重置失败");
			}
		})
	}
	/* 打开添加的对话框 */
	function add() {
		$("#addusersDialog").dialog("open");
	}
	/* 添加用户 */
	function addUsersSubmit() {
		var flag = $("#addusersDialog").form("validate");
		if (flag) {
			$.post("addAllUsers", {
				loginName : $("#loginName").val(),
				passWord : $("#passWord").val(),
				protectEmail : $("#protectEmail").val(),
				protectMTel : $("#protectMTel").val()
			}, function(res) {
				if (res > 0) {
					$('#usersTab').datagrid('reload');
					$('#addusersDialog').dialog("close");
					$.messager.alert("提示","新增成功!!!!")
				} else {
					$.messager.alert("提示","新增失败!!!!")
				}
			}, "json")
		} else {
			$.messager.alert("提示", "请完善您要添加的数据！！！");
		}

	}
	/* 取消添加的对话框 */
	function addUsersClose() {
		$('#addusersDialog').dialog("close");
	}
	/* 删除用户 */
	function deletes(index) {
		var datas = $("#usersTab").datagrid("getData");
		var row = datas.rows[index];
		$.messager.confirm('确认删除', '您确认想要删除吗？', function(r) {
			if (r) {
				$.post("deleteAllUsers", {
					id : row.id
				}, function(res) {
					if (res > 0) {
						$('#usersTab').datagrid('reload');
						$.messager.alert('提示', '删除成功！！！');
					}
				}, "json")
			}
		});
	}
	/* 修改用户信息 */
	function update(index) {
		var datas = $("#usersTab").datagrid("getData");
		var row = datas.rows[index];
		//填充表单
		$("#updateusersFrm").form("load", row)
		//打开弹窗
		$("#updateusersDialog").dialog("open");
	}
	function updateUsersSubmit() {
		$.post("updateAllUsers", {
			id : $("#id1").val(),
			loginName : $("#loginName1").val(),
			protectEmail : $("#protectEmail1").val(),
			protectMTel : $("#protectMTel1").val()
		}, function(res) {
			if (res > 0) {
				$('#usersTab').datagrid('reload');
				$('#updateusersDialog').dialog("close");
				$.messager.alert('提示',"修改成功!!!!")
			} else {
				$.messager.alert('提示',"修改失败!!!!")
			}
		}, "json")
	}
	/* 取消修改的对话框 */
	function updateUsersClose() {
		$('#updateusersDialog').dialog("close");
	}
	function formatterisLockOut(value, row, index) {
		return value == 1 ? '是' : '否';
	}
	function suodingisLockOut(value, rows, index) {
		return rows.isLockOut == 1 ? "锁定" : "未锁定"
	}
	function suoding(value, row, index) {
		return '<a href="javascript:void(0)" class="easyui-linkbutton"  onclick="suodingYonghu('
				+ index
				+ ')">锁定用户</a>   <a href="javascript:void(0)" class="easyui-linkbutton"  onclick="jiesuoYonghu('
				+ index + ')">解锁用户 </a>'
	}

	function suodingYonghu(index) {
		var id = $("#usersTab").datagrid('getData').rows[index].id;
		var isLockOut = $("#usersTab").datagrid('getData').rows[index].isLockOut;
		if (isLockOut != 1) {
			$.post("OpenCloseUser", {
				id : id,
				isLockOut : 1
			}, function(res) {
				if (res > 0) {
					$('#usersTab').datagrid('reload');
					$.messager.alert("提示", "用户锁定成功");
				} else {
					$.messager.alert("提示", "该用户锁定失败");
				}
			})
		} else {
			alert("该用户已被锁定")
		}

	}
	function jiesuoYonghu(index) {
		var id = $("#usersTab").datagrid('getData').rows[index].id;
		var isLockOut = $("#usersTab").datagrid('getData').rows[index].isLockOut;
		if (isLockOut == 1) {
			$.post("OpenCloseUser", {
				id : id,
				isLockOut : 2
			}, function(res) {
				if (res > 0) {
					$('#usersTab').datagrid('reload');
					$.messager.alert("提示", "用户解锁成功");
				} else {
					$.messager.alert("提示", "解锁失败");
				}
			})
		} else {
			alert("该用户未被锁定")
		}

	}

	//查询网络咨询师
	function WLZSH() {
		$("#usersTab").datagrid({
			url : 'getUserByRolesId',
			method : 'post',
			pagination : true,
			singleSelect : true,
			toolbar : '#usersTool',
			queryParams : {
				roleId : 2
			}
		})

	}
	//查询咨询师
	function ZSH() {
		$("#usersTab").datagrid({
			url : 'getUserByRolesId',
			method : 'post',
			pagination : true,
			singleSelect : true,
			toolbar : '#usersTool',
			queryParams : {
				roleId : 3
			}
		})
	}
	function ZSHJL() {
		$("#usersTab").datagrid({
			url : 'getUserByRolesId',
			method : 'post',
			pagination : true,
			singleSelect : true,
			toolbar : '#usersTool',
			queryParams : {
				roleId : 4
			}
		})
	}
	//设置角色权限
	var a;
	function set(index) {
		a=index;
		var data = $("#usersTab").datagrid("getData");
		var row = data.rows[index];
		$("#setFrm").window("setTitle", "正在设置" + row.LoginName + "权限信息");
		$("#allrole").datagrid({
			url : "getRolesAll",
			method : "post",
			singleSelect : true,
		});
		$("#myrole").datagrid({
			url : "getuRoles",
			method : "post",
			singleSelect : true,
			queryParams : {
				id : row.id
			}
		});
		$("#setFrm").window("open");
	}

	function reload() {
		init();
	}
	
	function addUserToRole(){
		var d = $("#usersTab").datagrid("getData");
		var data = d.rows[a];
		var row = $("#allrole").datagrid("getSelected");
		if(row) {
			$.post("addUserRole", {
				userId: data.id,
				roleId: row.id,
			}, function(res) {
				if(res>0) {
					if(res ==10){
						$.messager.alert("提示", "请勿做无效操作！！！")
					}
					$("#myrole").datagrid("reload");
				}else{
					$.messager.alert("提示", "赋予失败！！！")
				}
			}, "json")
		} else {
			$.messager.alert("提示", "请选择！！！")
		} 
	}
	function delUserToRole(){
		var d = $("#usersTab").datagrid("getData");
		var data = d.rows[a];
		var row = $("#myrole").datagrid("getSelected");
		if(row) {
			$.post("delUserRole", {
				userId: data.id,
				roleId: row.id,
			}, function(res) {
				if(res>0) {
					$("#myrole").datagrid("reload");
				}
			}, "json")
		} else {
			$.messager.alert("提示", "请选择！！！")
		}
	}