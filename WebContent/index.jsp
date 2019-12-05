<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>CRM系统</title>
<style type="text/css">
a{
text-decoration: none;
}
</style>
<script src="js/global.js"></script>
<script src="js/snow.js"></script>
<script src="js/index.js"></script>
<script src="js/love.js"></script>
<script type="text/javascript">

function save() {
	$.messager.confirm("确认信息", "确定修改？", function(r) {
		if (r) {
			
			 var re = /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/; 
			 var TEL_REGEXP = /^1([38]\d|5[0-35-9]|7[3678])\d{8}$/;
			 if(re.test($("#pkemail").val())){
				 if(TEL_REGEXP.test($("#pktel").val())){
					 $.post("index/updateTelAndEmail", {
							protectEmail : $("#pkemail").val(),
							protectMTel : $("#pktel").val()
						}, function(res) {
							if (res > 0) {
								$.messager.alert("提示", "信息保存");
								$("#dd").dialog("close");
							} else {
								$.messager.alert("提示", "保存失败");
								$("#dd").dialog("close");
							}
						}, "json")
				 }else{
					 $.messager.alert("提示", "手机格式不正确")
				 }
			 }else{
				 $.messager.alert("提示", "邮箱格式不正确")
			 }
			
		}

	})

}

</script>
<%-- <canvas id="christmasCanvas"
	style="top: 0px; left: 0px; z-index: 5000; position: fixed; pointer-events: none;"></canvas> --%>

</head>
<body style="background-image: url('img/c.jpg');">
<%HttpSession s= request.getSession();%>
	<div id="Psw" class="easyui-dialog" title="个人空间"
		style="width: 240px; height: 300px;"
		data-options="modal:true,closed:true,buttons:[{
				text:'保存',
				iconCls:'icon-save',
				handler:function(){
				savePsw()
				}
			},{
				text:'取消',
				iconCls:'icon-clear',
				handler:function(){
				clearPsw()
				}
			}]">
		<form id="pswFrm">
			<table>

				<tr>
					<td colspan="2"><h2>个人密码修改</h2></td>

				</tr>
				<tr>
					<td>新密码:</td>
					<td><input type="password" id="newPsw"
						class="easyui-validatebox" data-options="required:true" /></td>
				</tr>
			</table>
		</form>

	</div>

	<div style="margin: 20px 0;"></div>
	<div id="dd" class="easyui-dialog" title="个人空间"
		style="width: 240px; height: 300px;"
		data-options="modal:true,closed:true,buttons:[{
				text:'保存',
				iconCls:'icon-save',
				handler:function(){
				save()
				}
			},{
				text:'取消',
				iconCls:'icon-clear',
				handler:function(){
				clear()
				}
			}]">
		<form id="psfrm">
			<table>
				<tr style="text-align: center;">
					<td colspan="2"><h3>个人信息</h3></td>
				</tr>
				<tr >
				<td>签到状态：</td>
					<td  style="font-size: 12px"><%if(s.getAttribute("qdstate")!=null){%>
					<a href="javascript:void(0)"
						onclick="piny()" id="qd">
						<%=s.getAttribute("qdstate") %>
						</a>
						<%}else{ %>
						<a href="javascript:void(0)"
						onclick="pin()" id="qd">
						未签到
						</a>
						<%} %>
					
						&ensp;&ensp;<a href="javascript:void(0)"
						id="qc" onclick="pout()">
						<%if(s.getAttribute("qdstate")==null){%>
						未签出
						<%} %>
						${qcstate}
						</a>
						
						</td>
				</tr>
				<c:forEach items="${user}" var="u">
				
					<tr>
						<td>姓名：</td>
						<td>${u.loginName}</td>
					</tr>
					<tr>
						<td>职业：</td>
						<c:forEach items="${RolesName}" var="r">
							<td>${r.name}</td>
						</c:forEach>
					</tr>
					<tr>
						<td>电话：</td>
						<td><input type="text" class="easyui-textbox" id="pktel"
							value="${u.protectMTel}" /></td>
					</tr>
					<tr>
						<td>邮箱：</td>
						<td><input type="text" class="easyui-textbox" id="pkemail"
							value="${u.protectEmail}" /></td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="2">密码功能区块：</td>
				</tr>
				<tr>
					<td colspan="2"><hr></td>
				</tr>
				<tr>
					<td><a href="javascript:void(0)" onclick="editpsw()"
						class="easyui-linkbutton" data-options="iconCls:'icon-cut'">改</a></td>
					<td><a href="javascript:void(0)" onclick="initpsw()"
						class="easyui-linkbutton" data-options="iconCls:'icon-reload'">初始</a></td>
				</tr>
			</table>
		</form>
	</div>
	<div class="easyui-layout" style="width: 100%; height: 700px;">
		<div data-options="region:'north'" style="height: 50px">
			<div style="text-align: center;">
				<h2 style="text-align: center;">
					欢迎<a href="javascript:void(0)" onclick="exit()">${name}</a>登陆whale资源管理系统
				</h2>
				<div id="mm" class="easyui-menu" style="width: 120px;">
					<div onclick="person()" data-options="iconCls:'icon-more'">个人空间</div>
					<div onclick="remove()" data-options="iconCls:'icon-clear'">安全退出</div>
				</div>

			</div>
			
		</div>
		<div data-options="region:'south',split:true" style="height: 50px;"></div>
		<div data-options="region:'west',split:true" title="导航菜单"
			style="width: 150px;">
			<div id="menuTree">
				<ul id="tt" class="easyui-tree"
					data-options="iconCls:'icon-save',collapsible:true"></ul>
			</div>
			<div id="mm" class="easyui-menu" style="width: 120px;">
				<div onclick="append()" data-options="iconCls:'icon-add'">追加</div>
				<div onclick="remove()" data-options="iconCls:'icon-remove'">移除</div>
			</div>

		</div>
		<div id="centerTabs" data-options="region:'center',iconCls:'icon-ok'"
			style="width: 530px;">
			<div id="tta" class="easyui-tabs"></div>
		</div>
	</div>
</body>
</html>