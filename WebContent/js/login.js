
	var username, userpsw, str;

	
	function createNewCode() {
		var arr = [ '0', '1', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c',
				'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o',
				'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
		str = "";
		var strlength = 4;
		for (var i = 0; i < strlength; i++) {
			var num = Math.floor(Math.random() * arr.length);
			str += arr[num];
		}
		;
		var btn = document.getElementById("rightcode");
		btn.value = str;
	};

	function setCookie(_name, val, expires) {
		var d = new Date();
		d.setDate(d.getDate() + expires);
		document.cookie = _name + "=" + val + ";path=/;expires="
				+ d.toGMTString();
	}//获取cookie
	function getCookie(_name) {

		var cookie = document.cookie;
		var arr = cookie.split("; ");
		for (var i = 0; i < arr.length; i++) {

			var newArr = arr[i].split("=");
			if (newArr[0] == _name) {
				return newArr[1];
			}
		}
		return "";
	}
	/*
	      如何将json对象转换为字符串
	          JSON.stringify(对象);
	          返回值是一个字符串
	      如何将字符串转换为json对象
	          JSON.parse(字符串)
	          返回值是对象
	 */

	if (getCookie("init")) {
		var cookie = JSON.parse(getCookie("init"));
		username = cookie.name;
		userpsw = cookie.pass;
	}

	function submitForm() {

		if ($("#check").is(":checked")) {
			var obj = {};
			obj.name = $("#username").val();
			obj.pass = $("#userpsw").val();
			var a = JSON.stringify(obj);
			setCookie("init", a, 7);
		}
		var name = $("#username").val();
		var pwd = $("#userpsw").val();
		var yan = $("#yan").val();
		var flag = $("#frm").form("validate");
		if (flag) {
			if (str == yan) {
				login(name, pwd);

			} else {
				$.messager.alert("提示", "验证码错误");
			}
		} else {
			$.messager.alert("提示", "输入内容为空");
		}
	}

	function login(name, pwd) {
		$.post("ulogin", {
			un : name,
			pwd : pwd
		}, function(res) {
			if (res == 0) {
				$.messager.alert("提示", "该用户不存在");
			} else if (res == 1) {
				window.location.href = "index.jsp";
			} else if (res == 3) {
				$.messager.alert("提示", "该用户已被锁定");
			} else {
				$.messager.alert("提示", "密码错误");
			}

		}, "json")
	}
	$(function() {
		createNewCode();
		if (username != null) {
			$('#uwin').panel('close');
			$.messager
					.show({
						title : '消息提示',
						timeout : 5000,
						showType : 'slide',
						msg : '<font size=\"2\" color=\"#666666\"><strong>是否登陆上次保存账号?'
								+ '<br clear=left>'
								+ '<br><span  style=\"padding-left:60px\"></span><input type=\"button\" value=\"登陆\" onClick=\"showlogin()\">'
								+ '<span  style=\"padding-left:20px\"></span><input type=\"button\" value=\"清除记录\" onClick=\"closeshow()\">'

					});
			$('#uwin').panel('open');

		}
		

	})

	function showlogin() {
		$('#uwin').panel('close');
		$("#frm").form("load", {
			name : username,
			psw : userpsw
		});
		login(username, userpsw);
	}

	function closeshow() {
		$('#uwin').panel('open');
		$.messager.show({
			title : '消息提示',
			timeout : 5000,
			showType : 'slide',
			msg : '已清空上次登陆记录'
		});
		setCookie("init","",0);
	}