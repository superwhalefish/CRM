$(function() {
		init();
	})
	function init() {
		$("#rolesTab").datagrid({
			url : 'getRoles',
			method : 'post',
			pagination : true,
			singleSelect : true,
			queryParams : {
				rolesName : $("#rolesName").val(),
			}
		})
	}
	function formattercaozuo(value, row, index) {
		return "<a href='javascript:void(0)' onclick='look(" + index
				+ ")'>查看<a/> <a href='javascript:void(0)' onclick='set("
				+ index
				+ ")'>设置<a/>  <a href='javascript:void(0)' onclick='del("
				+ index
				+ ")'>删除<a/>  <a href='javascript:void(0)' onclick='edit("
				+ index + ")'>编辑<a/>"
	}
	/* 删除角色 */
	function del(index) {
		var arr = $("#rolesTab").datagrid("getData");
		var row = arr.rows[index];
		$.messager.confirm('确认删除', '确认删除吗？', function(r) {
			if (r) {
				$.post("DelRoles", {
					id : row.id
				}, function(res) {
					if (res > 0) {
						if(res==2){
							$("#rolesTab").datagrid("reload");
							$.messager.alert("提示", "该角色已被占用,无法删除");
						}else{
							$("#rolesTab").datagrid("reload");
							$.messager.alert("提示", "删除成功");	
						}
					}
				}, "json")
			}
		});

	}
	/* 添加角色 */
	function add() {

		$("#add_dialog").dialog("open");
	}
	/* 提交新增角色信息 */

	/* 关闭新增框 */
	function addclear() {
		$("#add_dialog").dialog("close");
	}

	/* 打开角色修改框 */
	var ed;
	function edit(index) {
		ed = index;
		var arr = $("#rolesTab").datagrid("getData");
		var row = arr.rows[index];
		$("#edit_frm").form("load", row);
		$("#edit_dialog").dialog("open");

	}

	function editsave() {
		var arr = $("#rolesTab").datagrid("getData");
		var row = arr.rows[ed];
		$.post("UpudeRoles", {
			id : row.id,
			name : $("#name1").val()
		}, function(res) {
			if (res > 0) {
				$("#rolesTab").datagrid("reload");
				$("#edit_dialog").dialog("close");
				$.messager.alert("提示", "修改成功");
			}

		}, "json")
	}
	/* 关闭角色修改框 */
	function editclear() {
		$("#edit_dialog").dialog("close");
	}

	function set(index) {
		var data = $("#rolesTab").datagrid("getData");

		var row = data.rows[index];

		$("#modalTree").tree({
			url : "getModules",
			method : 'post',
			checkbox : true,
			onLoadSuccess : function() {
				$.post("getModulesByRid", {
					id : row.id
				}, function(res) {
					for (var i = 0; i < res.length; i++) {
						var node = $('#modalTree').tree('find', res[i]);
						var a = $('#modalTree').tree('isLeaf',node.text);
						if (a) {
							$('#modalTree').tree('check', node.target);
						}
					}
					

				}, "json")
			}
		})

		$("#modalWindow").dialog("setTitle", "设置" + row.name + "的权限")
		$("#modalWindow").dialog("open")
	}

	function setModal() {
		var row = $("#rolesTab").datagrid("getSelected");
		var nodes = $("#modalTree").tree("getChecked",
				[ 'checked', 'indeterminate' ]);
		var parentids = "";
		for (var i = 1; i < nodes.length; i++) {
			if (parentids == "") {
				parentids = parentids + nodes[i].id
			} else {
				parentids = parentids + "," + nodes[i].id
			}
		}
		$.post("addRoleModiles", {
			parentIds : parentids,
			rId : row.id,
		}, function(res) {
			if (res > 0) {
				$.messager.alert("提示", "设置成功")
				$("#modalTree").tree("reload");
				$("#modalWindow").window("close");
			}
		}, "json")

	}
	function look(index) {
		$("#window_user").window("open")
		var data = $("#rolesTab").datagrid("getData");
		var row = data.rows[index];
		$("#setFrm").window("setTitle", "正在查看拥有" + row.name + "角色的员工信息");
		$("#userByRole").datagrid({
			url : 'getUserByRolesId',
			method : 'post',
			pagination : true,
			singleSelect : true,
			queryParams : {
				roleId : row.id
			}
		});

	}