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


	/* 新建学员窗口 */
/*	function addStu() {
		$("#add-dialog").dialog("open");
	}*/
	/* 学员窗口取消 */
/*	function clearStu() {
		$("#add-dialog").dialog("close");
	}*/
	/* 保存新建学员 */
/*	function bcStu() {

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
	}*/

	function formattercaozuo(value, row, index) {
		return "<a href='javascript:void(0)' onclick='edit(" + index
				+ ")'>编辑</a>   <a href='javascript:void(0)' onclick='chakan("
				+ index + ")'>查看</a>   <a href='javascript:void(0)' onclick='Netfollows("
			+ index + ")'>跟踪</a>";
	}
	
	var gz;
	function Netfollows(index) {
		gz = index;
		$("#gzDialog").dialog("open");
	}
	function gengzongClear(){
		$("#gzDialog").dialog("close");
	}
	
	
	
	
	function updateStu() {
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

	

	function updateClear() {
		$("#edit-dialog").dialog("close");
	}

	//导出excel
	function exportExcel() {
		$('#tabStu').datagrid('toExcel', 'yy.xls'); // export to excel
	}


	var del;
	function delwin(index){
		del=index;
		$("#delDialog").dialog("open");
	}


	function delsave(){
		var index=del;
		var data = $("#tabStu").datagrid("getData");
		var row = data.rows[index];
		$.messager.confirm("确定进行该操作？","操作后将失去对学生的管理！！！",function(r){
			if(r){
				$.post("delStu",{
					id:row.id,
					lostValid:$("#delcontent").val()
				},function(res){
					if(res>0){
						 $("#tabStu").datagrid("reload");
						$("#delDialog").dialog("close");
						$.messager.alert("提示", "操作成功");
					}
				},"json")
			}
		})
	}
	function delClear(){
		$("#delDialog").dialog("close");
	}
