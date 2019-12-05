<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/global.js"></script>
<script src="../js/love.js"></script>
<script type="text/javascript"
	src="../js/jquery-easyui-1.4.3/datagrid-export.js"></script>
<script type="text/javascript" src="../js/stu/myStu.js">
</script>
<script type="text/javascript">

function lookstu() {
	$("#win").dialog("open")
}
function test(row){//接受文本框this自身的所有的值
	var checked=$('p input:checkbox:checked');//获取p标签所有选中的复选框
	checked.each(function (i) {//依次存储到localStorage里面
	    localStorage.setItem(i,this.value);
	    localStorage.setItem('length',i);
	});

	console.log(localStorage.getItem('length'));//控制台输出
	if(row.checked==true){
		$('#tabStu').datagrid('showColumn', row.value);//显示
	}
	else{
		$('#tabStu').datagrid('hideColumn', row.value);//隐藏
	}
}

	
$(function () {
    //取得本地存储的被选中checkbox的个数，循环将checkbox选中
     var length=localStorage.getItem('length');//获取localStorage数据
     for(var i=0;i<=length;i++){
        var a=localStorage.getItem(i);
        $("p input:checkbox[value="+a+"]").attr("checked","checked");//选中状态
    }
     var checked=$('p input:checkbox:not(:checked)');//获取所有未选中的复选框
     checked.each(function () {//遍历
    
$('#tabStu').datagrid('hideColumn', this.value);//将没选中的列隐藏起来
}); 
    
}); 

$(function(){
var b=$("#time option:checked").val();

})
$(function(){//下拉框高度自适应
$('.easyui-combobox').combobox({
// 定义用户是否可以直接输入文本到字段中。
    editable:false,
    // 自适应高度。
    panelHeight: 'auto',
    // 设置需要固定的高度(适用于1.4或以上版本)。
    panelMaxHeight: 100
});
})

$(function(){
	jinri()
})
function jinri(){
	$.post("getJinTianPerson",{},function(res){
		if(res>0){
			$.messager
			.show({
				title : '消息提示',
				timeout : 5000,
				showType : 'slide',
				msg : '<font size=\"2\" color=\"#666666\"><strong>温馨提示，截至到上次签到新增学生'+res+'人'
			});
		}
		
	},"json")

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
</script>
</head>
<body>
	<!-- 设置隐藏列 -->
<div id="win" class="easyui-window" title="设置" style="width:600px;height:400px"   
        data-options="iconCls:'icon-save',modal:true,closed:true"> 
		<p>
		<input type="checkbox"  value="id" onclick="test(this)"/> 编号 
		<input type="checkbox"  value="name" onclick="test(this)"/> 姓名
		<input type="checkbox"  value="sex" onclick="test(this)"/> 性别 
		<input type="checkbox"  value="age" onclick="test(this)"/>年龄  
		<br>
		<input type="checkbox"  value="phone" onclick="test(this)"/>电话
		<input type="checkbox"  value="status" onclick="test(this)"/>学历 
		<input type="checkbox"  value="state" onclick="test(this)"/>状态
		<input type="checkbox"  value="dafen" onclick="test(this)"/>打分
		<br>
		<input type="checkbox"  value="address" onclick="test(this)"/>地址 
		<input type="checkbox"  value="qq" onclick="test(this)"/>QQ
		<input type="checkbox"  value="weixin" onclick="test(this)"/>微信  
		<input type="checkbox"  value="record" onclick="test(this)"/>课程 
		<br>
		<input type="checkbox"  value="msgSource" onclick="test(this)"/>消息来源
		<input type="checkbox"  value="sourceUrl" onclick="test(this)"/>来源网站 
		<input type="checkbox"  value="sourceKeyWorld" onclick="test(this)"/>来源关键词
		<input type="checkbox"  value="content" onclick="test(this)"/>在线备注
		<br>
		<!-- <input type="checkbox"  value="netPusherId" onclick="test(this)"/>推销者 
		<input type="checkbox"  value="askerId" onclick="test(this)"/>发问者  -->
		
		<input type="checkbox"  value="createTime" onclick="test(this)"/>创建时间 
		<input type="checkbox"  value="learnForward" onclick="test(this)"/>来源部门  
		<input type="checkbox"  value="isReturnVist" onclick="test(this)"/>是否回访 </td>
		<input type="checkbox"  value="firstVistTime" onclick="test(this)"/>首次回访时间 
		<br>
		<input type="checkbox"  value="isHome" onclick="test(this)"/>是否上门 
		<input type="checkbox"  value="homeTime" onclick="test(this)"/>上门时间 
		<input type="checkbox"  value="isValid" onclick="test(this)"/>是否有效 
		<input type="checkbox"  value="lostValid" onclick="test(this)"/>无效原因
		<br>
		<input type="checkbox"  value="isPay" onclick="test(this)"/>是否缴费 
		<input type="checkbox"  value="payTime" onclick="test(this)"/>缴费时间 
		<input type="checkbox"  value="isReturnMoney" onclick="test(this)"/>是否退费
		<input type="checkbox"  value="returnMoneyReason" onclick="test(this)"/>退费原因
		<input type="checkbox"  value="money" onclick="test(this)"/>金额  
		<br>
		<input type="checkbox"  value="isInClass" onclick="test(this)"/>是否进班 
		<input type="checkbox"  value="inClassTime" onclick="test(this)"/>进班时间 
		<input type="checkbox"  value="inClassContent" onclick="test(this)"/>进班备注 
		<input type="checkbox"  value="askerContent" onclick="test(this)"/>askerContent 
		 <br>
		<input type="checkbox"  value="isDel" onclick="test(this)"/>是否删除 
		<input type="checkbox"  value="formPart" onclick="test(this)"/>来源部门 
		<input type="checkbox"  value="concern" onclick="test(this)"/>学员关注 
		<input type="checkbox"  value="isBaoBei" onclick="test(this)"/>是否报备 
		<br>
		
		<input type="checkbox"  value="preMoney" onclick="test(this)"/>定金金额 
		<input type="checkbox"  value="preMoneyTime" onclick="test(this)"/>定金时间 
		
		<input type="checkbox"  value="ziXunName" onclick="test(this)"/>咨询师 
		<input type="checkbox"  value="createUser" onclick="test(this)"/>创建者  
		
		
	</p>
	</div>
	
	
	<div id="gzDialog" class="easyui-dialog"
		style="width: 200px; height: 250px"
		data-options="title:'跟踪信息',modal:true,closed:true,
			buttons:[{
				text:'保存',
				handler:function(){
					genzongSave();
				}
			},{
				text:'关闭',
				handler:function(){
					gengzongClear();
				}
			}]">
		<table>
			<tr>
				<td>回访情况:</td>
				<td><select id="followState" class="easyui-combobox">
						<option value="">--请选择--</option>
						<option value="思量">思量</option>
						<option value="上门未报名">上门未报名</option>
						<option value="报名未进班">报名未进班</option>
				</select></td>


			</tr>
			<tr>
				<td>跟踪方式:</td>
				<td><select id="followType" class="easyui-combobox">
						<option value="">--请选择--</option>
						<option value="面谈">面谈</option>
						<option value="网络">网络</option>
						<option value="电话">电话</option>
				</select></td>
			</tr>
			<tr style="text-align: center;">
				<td colspan="2">内容</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;"><textarea rows="3"
						cols="25" id="gzcontent"></textarea></td>
			</tr>
		</table>

	</div>
	
	
	
	
	<!-- <a href="javascript:void(0)" onclick="a()"></a> -->
	<table id="tabStu" class="easyui-datagrid">
		<thead>
			<tr>

				<!--Name：学生名字    record:课程方向		lostValid:无效原因		createTime:创建时间
		isHome:是否上门	homeTime:上门时间		money:定金金额		preMoneyTime:定金时间
		ispay:是否缴费	paymoney:缴费时间 		money:缴费金额	isReturnMoney:是否退费	
		returnMoneyReason:退费原因		isInClass:是否进班	inClassTime:进班时间
		inClassConteent:进班备注	ZiXunName:咨询师备注（跟踪者）	followTime:跟踪时间
		nextFollowTime:下一次跟踪时间
		isReturnVist：是否回访
	  -->
				<th data-options="field:'asd',checkbox:true"></th>
				<th data-options="field:'id',title:'ID'"></th>
				<th data-options="field:'name',title:'名称'"></th>
				<th data-options="field:'sex',title:'性别',formatter:formattersex"></th>
				<th data-options="field:'age',title:'年龄'"></th>
				<th data-options="field:'phone',title:'电话'"></th>
				<th data-options="field:'status',title:'学历'"></th>
				<th data-options="field:'state',title:'状态',formatter:formatterstate"></th>
				<th data-options="field:'dafen',title:'打分'"></th>
				<th data-options="field:'msgSource',title:'消息来源'"></th>
				<th data-options="field:'sourceUrl',title:'来源网站'"></th>
				<th data-options="field:'sourceKeyWorld',title:'来源关键词'"></th>
				<th data-options="field:'address',title:'地址'"></th>
				<!-- <th data-options="field:'netPusherId',title:'推销者ID'"></th>
				<th data-options="field:'askerId',title:'发布者ID'"></th> -->
				<th data-options="field:'qq',title:'QQ'"></th>

				<th data-options="field:'weixin',title:'微信 '"></th>
				<th data-options="field:'content',title:'在线备注'"></th>
				<th data-options="field:'createTime',title:'创建时间'"></th>
				<th data-options="field:'learnForward',title:'来源部门'"></th>

				<th data-options="field:'record',title:'课程方向'"></th>


				<th data-options="field:'firstVistTime',title:'首次回访时间'"></th>
				<th
					data-options="field:'isHome',title:'是否上门',formatter:formatterisHome"></th>
				<th data-options="field:'homeTime',title:'上门时间'"></th>
				<th data-options="field:'lostValid',title:'无效原因'"></th>

				<th data-options="field:'payTime',title:'缴费时间'"></th>
				<th data-options="field:'money',title:'金额（定金/缴费）'"></th>

				<th
					data-options="field:'isReturnMoney',title:'是否退费',formatter:formatterisReturnMoney"></th>
				<th
					data-options="field:'isInClass',title:'是否进班',formatter:formatterisInClass"></th>
				<th data-options="field:'inClassTime',title:'进班时间'"></th>
				<th data-options="field:'inClassContent',title:'进班备注'"></th>
				<th data-options="field:'askerContent',title:'退费原因'"></th>
				<th
					data-options="field:'isDel',title:'是否删除',formatter:formatterisDel"></th>
				<th data-options="field:'formPart',title:'来源部门'"></th>

				<th data-options="field:'concern',title:'学员关注'"></th>
				<th
					data-options="field:'isBaoBei',title:'是否报备',formatter:formatterisBaoBei"></th>
				<th data-options="field:'ziXunName',title:'咨询师名称'"></th>
				<th data-options="field:'createUser',title:'录入人'"></th>
				<th data-options="field:'returnMoneyReason',title:'退费原因'"></th>
				<th data-options="field:'preMoney',title:'定金金额'"></th>
				<th data-options="field:'preMoneyTime',title:'定金时间'"></th>
				<th
					data-options="field:'isPay',title:'是否缴费',formatter:formatterisPay"></th>
				<th
					data-options="field:'isValid',title:'是否有效',formatter:formatterisValid"></th>
				<th
					data-options="field:'isReturnVist',title:'是否回访',formatter:formatterisReturnVist"></th>
				<th
					data-options="field:'formattercaozuo',title:'操作',formatter:formattercaozuo"></th>
			</tr>
		</thead>
	</table>



	<!--
		姓名关键字、电话、咨询师、是否缴费、是否有效、
		是否回访、QQ、创建时间/上门时间/首次回访时间/缴费时间/进班时间
	  -->

	<!-- 数据表格tab的工具条 -->
	<div id="tabBar">
		<!-- <a href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-add'" onclick="add()">新增</a> -->
		名称:<input type="text" class="easyui-textbox" id="name" /> 电话：<input
			class="easyui-textbox" type="text" id="phone"> 咨询师：<input
			class="easyui-textbox" type="text" id="ziXunName"> QQ：<input
			type="text" class="easyui-textbox" id="qq"> 创建时间：<input
			type="text" class="easyui-datebox" id="createTime"> 上门时间：<input
			type="text" class="easyui-datebox" id="homeTime"> 首次回访时间：<input
			type="text" class="easyui-datebox" id="firstVistTime"> 缴费时间：<input
			type="text" class="easyui-datebox" id="payTime"> 进班时间：<input
			type="text" class="easyui-datebox" id="inClassTime"> 是否缴费：<select
			id="isPay" class="easyui-combobox" name="是否缴费">
			<option value=" ">---请选择---</option>
			<option value="1">已缴费</option>
			<option value="2">未缴费</option>
		</select> 是否有效：<select id="isValid" class="easyui-combobox" name="是否有效">
			<option value=" ">---请选择---</option>
			<option value="1">有效</option>
			<option value="2">无效</option>
		</select> 是否回访：<select id="isReturnVist" class="easyui-combobox" name="是否回访">
			<option value=" ">---请选择---</option>
			<option value="1">已回访</option>
			<option value="2">未回访</option>
		</select>
		<%--  类别：<select class="easyui-combobox" id="looktid">
			<option value="">--请选择--</option>
			<c:forEach items="${type}" var="a">
			<option value="${a.tid }">${a.tname}</option>
			</c:forEach>
			</select>  --%>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			onclick="lookstu()">显示</a> <a href="javascript:void(0)"
			onclick="initStu()" class="easyui-linkbutton"
			data-options="iconCls:'icon-search'">搜索</a>  <a
			class="easyui-linkbutton" plain="true" onclick="exportExcel()"
			id="serach" data-options="iconCls:'icon-print'">导出excel</a>
	</div>

	<!-- 添加  -->
	<div id="add-dialog" class="easyui-dialog"
		style="width: 300px; height: 300px"
		data-options="title:'新建学员窗口',modal:true,closed:true,
					buttons:[{
						text:'保存',
						handler:function(){bcStu()}
					},{
						text:'关闭',
						handler:function(){clearStu()}
					}]">
		<form>
			<table>
					<tr>
						<td><label for="name">姓名:</label></td>
						<td><input class="easyui-validatebox" type="text"
							id="addname" /></td>
					</tr>

					<tr>
						<td><label for="name">性别:</label></td>
						<td><select id="addsex" class="easyui-combobox">
								<option value="">---请选择---</option>
								<option value="1">男</option>
								<option value="2">女</option>
						</select></td>
					</tr>

					<tr>
						<td><label for="name">年龄:</label></td>
						<td><input class="easyui-validatebox" type="text" id="addage" />
						</td>
					</tr>

					<tr>
						<td><label for="name">电话:</label></td>
						<td><input class="easyui-validatebox" type="text"
							id="addphone" /></td>
					</tr>

					<tr>
						<td><label for="name">学历:</label></td>
						<td><input class="easyui-validatebox" type="text"
							id="addstatus" /></td>
					</tr>

					
			</table>
		</form>
	</div>
	<!-- 查看   -->
	<div id="chakan-dialog" class="easyui-dialog"
		style="width: 600px; height: 300px"
		data-options="title:'学员信息窗口',modal:true,closed:true,
					buttons:[{
						text:'关闭',
						handler:function(){closeStu()}
					}]">
		<form id="chakan-frm">
			<table>
				<thead>
					<tr>
						<td><label for="name">创建时间:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text"
							name="createTime" /></td>
					</tr>
					<tr>
						<td><label for="name">学员姓名:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text" name="name" />
						</td>
					</tr>
					<tr>
						<td><label for="name">学员电话:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text"
							name="phone" /></td>
					</tr>
					<tr>
						<td><label for="name">性别:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text" name="sex" />
						</td>
					</tr>
					<tr>
						<td><label for="name">年龄:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text" name="age" />
						</td>
					</tr>
					<tr>
						<td><label for="name">学历:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text"
							name="status" /></td>
					</tr>
					<tr>
						<td><label for="name">个人状态:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text"
							name="state" /></td>
					</tr>
					<tr>
						<td><label for="name">来源渠道:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text"
							name="msgSource" /></td>
					</tr>
					<tr>
						<td><label for="name">来源网址:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text"
							name="sourceUrl" /></td>
					</tr>
					<tr>
						<td><label for="name">来源关键词:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text"
							name="sourceKeyWorld" /></td>
					</tr>
					<tr>
						<td><label for="name">姓名（咨询）:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text"
							name="ziXunName" /></td>
					</tr>
					<tr>
						<td><label for="name">所在区域:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text"
							name="address" /></td>
					</tr>
					<tr>
						<td><label for="name">微信:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text"
							name="weixin" /></td>
					</tr>
					<tr>
						<td><label for="name">学员QQ:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text" name="qq	" />
						</td>
					</tr>
					<tr>
						<td><label for="name">来源部门:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text"
							name="learnForward" /></td>
					</tr>
					<tr>
						<td><label for="name">是否报备:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text"
							name="isBaoBei" /></td>
					</tr>
					<tr>
						<td><label for="name">课程方向:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text"
							name="record" /></td>
					</tr>
					<tr>
						<td><label for="name">是否有效:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text"
							name="isValid" /></td>
					</tr>
					<tr>
						<td><label for="name">打分:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text"
							name="dafen" /></td>
					</tr>
					<tr>
						<td><label for="name">是否回访:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text"
							name="isReturnVist" /></td>
					</tr>
					<tr>
						<td><label for="name">首次回访时间:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text"
							name="firstVistTime" /></td>
					</tr>
					<tr>
						<td><label for="name">是否上门:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text"
							name="isHome" /></td>
					</tr>
					<tr>
						<td><label for="name">上门时间:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text"
							name="homeTime" /></td>
					</tr>
					<tr>
						<td><label for="name">无效原因:</label></td>
						<td><input class="easyui-validatebox" type="text"
							name="lostValid" /></td>
					</tr>
					<tr>
						<td><label for="name">是否缴费:</label></td>
						<td><input class="easyui-validatebox" type="text"
							name="isPay" /></td>
					</tr>
					<tr>
						<td><label for="name">缴费时间:</label></td>
						<td><input class="easyui-validatebox" type="text"
							name="payTime" /></td>
					</tr>
					<tr>
						<td><label for="name">金额:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text"
							name="money" /></td>
					</tr>
					<tr>
						<td><label for="name">是否退费:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text"
							name="isReturnMoney" /></td>
					</tr>
					<tr>
						<td><label for="name">是否进班:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text"
							name="isInClass" /></td>
					</tr>
					<tr>
						<td><label for="name">进班时间:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text"
							name="inClassTime" /></td>
					</tr>
					<tr>
						<td><label for="name">进班备注:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text"
							name="inClassContent" /></td>
					</tr>
					<tr>
						<td><label for="name">退费原因:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text"
							name="askerContent" /></td>
					</tr>
					<tr>
						<td><label for="name">定金金额:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text"
							name="preMoney" /></td>
					</tr>
					<tr>
						<td><label for="name">定金时间:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text"
							name="preMoneyTime" /></td>
					</tr>
				</thead>
			</table>
		</form>
	</div>

	<!-- 修改 -->
	<div id="edit-dialog" class="easyui-dialog"
		style="width: 600px; height: 300px"
		data-options="title:'我的对话框',modal:true,closed:true,
					buttons:[{
						text:'保存',
						handler:function(){updateStu()}
					},{
						text:'关闭',
						handler:function(){updateClear()}
					}]">
		<form id="edit-frm">
			<table>
				<thead>
					<tr>
						<td><label for="name">编号:</label></td>
						<td><input readonly="readonly" class="easyui-validatebox" type="text" name="id"
							id="updateid" /></td>
					</tr>
					<tr>
						<td><label for="name">姓名:</label></td>
						<td><input class="easyui-validatebox" type="text" name="name"
							id="updatename" /></td>
					</tr>
					<tr>
						<td><label for="name">性别:</label></td>
						<td>
							<select id="updatesex" name="sex" class="easyui-combobox">   
								    <option value="">---请选择---</option>   
								    <option value="1">男</option>   
								    <option value="2">女</option>   
								</select>
							
							</td>
					</tr>
					<!-- <tr>
							<td>
								<label for="name">性别:</label>
							</td>
							<td>
								<select id="updatesex" class="easyui-combobox">   
								    <option value="">---请选择---</option>   
								    <option value="1">男</option>   
								    <option value="2">女</option>   
								</select>
							</td>
						</tr> -->


					<tr>
						<td><label for="name">年龄:</label></td>
						<td><input class="easyui-validatebox" type="text" name="age"
							id="updateage" /></td>
					</tr>
					<tr>
						<td><label for="name">电话:</label></td>
						<td><input class="easyui-validatebox" type="text"
							name="phone" id="updatephone" /></td>
					</tr>
					<tr>
						<td><label for="name">学历:</label></td>
						<td><input class="easyui-validatebox" type="text"
							name="status" id="updatestatus" /></td>
					</tr>
					<tr>
						<td><label for="name">状态:</label></td>
						<td>
							<select id="updatestate" name="state" class="easyui-combobox">   
								    <option value="">---请选择---</option>   
								    <option value="1">状态无</option>   
								    <option value="2">状态有</option>   
								</select>
							
							</td>
					</tr>
					<tr>
						<td><label for="name">来源渠道:</label></td>
						<td><input class="easyui-validatebox" type="text"
							name="msgSource" id="updatemsgSource" /></td>
					</tr>
					<tr>
						<td><label for="name">来源网站:</label></td>
						<td><input class="easyui-validatebox" type="text"
							name="sourceUrl" id="updatesourceUrl" /></td>
					</tr>
					<tr>
						<td><label for="name">来源关键词:</label></td>
						<td><input class="easyui-validatebox" type="text"
							name="sourceKeyWorld" id="updatesourceKeyWorld" /></td>
					</tr>
					<tr>
						<td><label for="name">所在区域:</label></td>
						<td><input class="easyui-validatebox" type="text"
							name="address" id="updateaddress" /></td>
					</tr>
					<tr>
						<td><label for="name">学员关注:</label></td>
						<td><input class="easyui-validatebox" type="text"
							name="concern" id="updateconcern" /></td>
					</tr>
					<tr>
						<td><label for="name">来源部门:</label></td>
						<td><input class="easyui-validatebox" type="text"
							name="learnForward" id="updatelearnForward" /></td>
					</tr>
					<tr>
						<td><label for="name">学员QQ:</label></td>
						<td><input class="easyui-validatebox" type="text" name="qq"
							id="updateqq" /></td>
					</tr>
					<tr>
						<td><label for="name">微信号:</label></td>
						<td><input class="easyui-validatebox" type="text"
							name="weixin" id="updateweixin" /></td>
					</tr>
					<tr>
						<td><label for="name">是否报备:</label></td>
						<td>
							
							<select id="updateisBaoBei" name="isBaoBei" class="easyui-combobox">   
								    <option value="">---请选择---</option>   
								    <option value="1">已报备</option>   
								    <option value="2">未报备</option>   
								</select>
							
							</td>
					</tr>
					<tr>
						<td><label for="name">咨询师:</label></td>
						<td><input class="easyui-validatebox" type="text"
							name="ziXunName" id="updateziXunName" /></td>
					</tr>
					<tr>
						<td><label for="name">录入人:</label></td>
						<td><input class="easyui-validatebox" type="text"
							name="createUser" id="updatecreateUser" /></td>
					</tr>

				</thead>
			</table>
		</form>
	</div>
<div id="delDialog" class="easyui-dialog"
		style="width: 200px; height: 250px"
		data-options="title:'失效',modal:true,closed:true,
			buttons:[{
				text:'保存',
				handler:function(){
					delsave();
				}
			},{
				text:'关闭',
				handler:function(){
					delClear();
				}
			}]">
		<table>
		
			<tr style="text-align: center;">
				<td colspan="2">原因</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;"><textarea rows="3"
						cols="25" id="delcontent"></textarea></td>
			</tr>
		</table>

	</div>
</body>
</html>