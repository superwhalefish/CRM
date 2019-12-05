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
	return value == 1 ? "已上门" : "未上门";
}

function formatterisPay(value, row, index) {
	return value == 1 ? "已缴费" : "未缴费";
}

function formatterisReturnMoney(value, row, index) {
	return value == 1 ? "已退费" : "未退费";
}

function formatterisInClass(value, row, index) {
	return value == 1 ? "已进班" : "未进班";
}

function formatterisDel(value, row, index) {
	return value == 1 ? "已删除" : "未删除";
}

function formatterisBaoBei(value, row, index) {
	return value == 1 ? "已报备" : "未报备";
}

$(function() {
	initStu();
})

function initStu() {
	$("#tabStu").datagrid({
		//发送路径
		url : "selectOnline",
		//提交方式
		method : "post",
		fitColumns : true,
		toolbar : "#tabBar",
		pagination : true,
		//携带参数
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

function formattercaozuo(value, row, index) {
	return "<a href='javascript:void(0)' onclick='edit(" + index
			+ ")'>编辑</a>   <a href='javascript:void(0)' onclick='chakan("
			+ index
			+ ")'>查看</a> <a href='javascript:void(0)' onclick='Netfollows("
			+ index + ")'>跟踪</a>  <a href='javascript:void(0)' onclick='delwin("
			+ index + ")'>删除</a>";
}
var gz;
function Netfollows(index) {
	gz = index;
	$("#gzDialog").dialog("open");
}
function gengzongClear(){
	$("#gzDialog").dialog("close");
}
function genzongSave() {
	var data = $("#tabStu").datagrid("getData");
	var row = data.rows[gz];
	$.post("addgengzong", {
		studentId : row.id,
		studentName : row.name,
		content : $("#gzcontent").val(),
		followState : $("#followState").combobox('getValue'),
		followType : $("#followType").combobox('getValue'),

	}, function(res) {
		if (res > 0) {
			$("#gzDialog").dialog("close");
			$.messager.alert("提示", "跟踪成功");
		} else {
			$.messager.alert("提示", "跟踪异常");
		}
	}, "json")
	{

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
	$("#updateFrm").form("load", row);
	$("#updateDialog").dialog("open")

}

function updateSave() {
	$.post("updateStu", {
		id : $("#updateid").val(),
		name : $("#updateName").val(),
		sex : $("#updatesex").combobox("getValue"),
		age : $("#updateage").val(),
		createTime : $("#updatecreateTime").datetimebox('getValue'),
		record : $("#updateRecord").val(),
		isReturnVist : $("#updateisReturnVist").combobox("getValue"),
		isHome : $("#updateisHome").combobox("getValue"),
		homeTime : $("#updatehomeTime").datetimebox('getValue'),
		isValid : $("#updateisValid").combobox("getValue"),
		lostValid : $("#updatelostValid").val(),
		money : $("#updatemoney").val(),
		preMoneyTime : $("#updatepreMoneyTime").datetimebox('getValue'),
		isPay : $("#updateisPay").combobox("getValue"),
		payTime : $("#updatepayTime").datetimebox('getValue'),
		preMoney : $("#updatepreMoney").val(),
		isReturnMoney : $("#updateisReturnMoney").combobox("getValue"),
		returnMoneyReason : $("#updatereturnMoneyReason").val(),
		isInClass : $("#updateisInClass").combobox("getValue"),
		inClassTime : $("#updateinClassTime").datetimebox('getValue'),
		inClassContent : $("#updateinClassContent").val(),
		content : $("#updateziXunName").val(),
	}, function(res) {
		if (res > 0) {
			$("#tabStu").datagrid("reload");
			$("#updateDialog").dialog("close");
			$.messager.alert("提示", "修改成功");
		} else {
			$.messager.alert("提示", "修改失败");
		}
	}, "json")
}

function updateClear() {
	$("#updateDialog").dialog("close");
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
