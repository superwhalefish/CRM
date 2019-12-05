$(function() {
	init();
})

function shuaxin() {
	$("#userCheck").datagrid({
		url : 'getUsercheckAll',
		method : 'post',
		pagination : true,
		toolbar : '#userchecksTool',
		queryParams : {
			userName : "",
			checkInTime : "",
			isCancel : "",
			checkOutTime : "",
		}
	})
}
function formattercaozuo(value, row, index) {
	return "<a href='javascript:void(0)' onclick='qiant(" + index + ")'>签出</a>";
}
function qiant(index) {
	var data = $("#userCheck").datagrid("getData");
	var row = data.rows[index];
	if (row.isCancel == "未签出") {
		$.post("updateUserCheckQC", {
			isCancel : "已签出",
			Id : row.id
		}, function(res) {
			if (res > 0) {
				$("#userCheck").datagrid("reload");
				$.messager.alert("提示", "签出成功");

			} else {
				$.messager.alert("提示", "签出失败");
			}
		}, "json");
	} else {
		$.messager.alert("提示", "请勿重复操作");
	}

}