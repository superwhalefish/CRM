	$(function() {
		$("#tt")
				.tree(
						{
							url : "index/tree",
							method : "POST",
							animate : true,
							lines : true,
							onClick : function(node) {
								var isLeaf = $('#tt').tree('isLeaf', node.text);
								if (isLeaf) {
									var flag = $('#tta').tabs('exists',
											node.text);
									if (flag) {
										$('#tta').tabs('select', node.text);
									} else {
										var root = $('#tt').tree('getParent',
												node.target)
										if (root != null) {
											$('#tta')
													.tabs(
															'add',
															{
																title : node.text,
																closable: true,
																content : "<iframe src='"
																		+ node.path
																		+ ".jsp' style='width:100%;height:600px;'/>"
															});
										}
									}
								}

							}
						});
	})

	function fixHeight(percent) {
		return (document.body.clientHeight) * percent;
	}

	function fixWidth(percent) {
		return (document.body.clientWidth - 5) * percent;
	}

	function exit() {
		$('#mm').menu('show', {
			left : fixWidth(0.43),
			top : fixHeight(0.09)
		});
	}
	function person() {

		$("#dd").dialog("open");
	}
	
	function clear() {
		$("#dd").dialog("close");
	}
	function remove() {
		$.messager.confirm('提示', '您想要退出该系统吗？', function(r) {
			if (r) {
				$.post("logout", {}, function(res) {
					if (res > 0) {
						$.messager.alert("提示", "已安全退出");
						window.location.href = "login.jsp";
					}
				}, "json")
			}
		});
	}

	function editpsw() {
		$("#Psw").dialog("open");

	}
	function savePsw() {
		var flag = $("#pswFrm").form("validate");
		if(flag){
			$.messager.confirm("信息提示", "确定修改密码？", function(r) {
				if (r) {
					$.post("index/updatePsw", {
						passWord :$("#newPsw").val()
					}, function(res) {
						if(res>0){
							$.messager.alert("提示","修改成功");
							$("#Psw").dialog("close");
						}else{
							$.messager.alert("提示","修改失败");
						}
					}, "json")
				}
			})
			
		}else{
			$.messager.alert("提示","不允许提交空值");
		}
	}
	function clearPsw() {
		$("#Psw").dialog("close");
	}
	function initpsw() {
		$.messager.confirm("信息提示", "确定初始化密码？", function(r) {
			if (r) {
				$.post("index/updatePsw", {
					passWord : "ysd123"
				}, function(res) {
					if(res){
						$.messager.alert("提示","初始化成功");
						$("#Psw").dialog("close");
					}else{
						$.messager.alert("提示","修改失败");
					}
				}, "json")
			}
		})
	}
	function pin() {
		var btn = document.getElementById("qd");
		if(btn.innerText=="已签到"){
			piny();
		}else{
			$.post("index/addUserCheck",{checkState:"已签到"},function(res){
				if(res>0){
					if(res==1){
						$.messager.alert("提示","签到成功");
						//数据库拿出
						btn.innerHTML = "已签到";
					}else if(res==3){
						$.messager.alert("提示","还未到上班时间");
					}
					
				}else{
					if(res==0){
						$.messager.alert("提示","签到异常");
					}else{
						$.messager.alert("提示","上班迟到");
						btn.innerHTML = "已签到";
					}
					
				}
			},"json")  
		}
	}
	function piny() {
		
		$.messager.alert("提示","今日已签到");
	}
	function pout(){
		var btn = document.getElementById("qc");
		if(btn.innerText=="已签出"){
			 pouty();
		}else{
			 $.post("index/updateUserCheck",{isCancel:"已签出"},function(res){
					if(res>0){
						if(res==1){
							btn.innerHTML = "已签出";
							$.messager.alert("提示","签出成功");
						}else{
							$.messager.alert("提示","还未到下班时间");
						}
						
					}else{
						$.messager.confirm("提示","今日还未签到，无法签出",function(r){
							if(r){
								$.messager.confirm("提示","是否签到",function(a){
									if(a){
										 pin();
									}
								})
								
							}
						})
					}
				},"json"); 
		}
		
	}
	function pouty(){
		$.messager.alert("提示","今日已签出");
	}