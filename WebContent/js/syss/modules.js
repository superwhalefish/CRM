	$(function() {
		init();
	});
	function init() {
		$("#treemenu").tree({
			url : "getModules",
			method : "POST",
			animate : true,
			lines : true,
			onContextMenu : function(e, node) {
				e.preventDefault();
				$('#treemenu').tree('select', node.target);
				var pnode = $('#treemenu').tree('getParent', node.target);
				if (pnode != null) {
					$('#mm').menu('show', {
						left : e.pageX,
						top : e.pageY
					});
				} else {
					$('#mm1').menu('show', {
						left : e.pageX,
						top : e.pageY
					});
				}
			}
		})
	}
	//删除子节点
	function ChildrenRemove() {
		var nodes = $('#treemenu').tree('getSelected');
	 	$.messager.confirm("确定删除", "确定删除子节点吗？", function(r) {
			if (r) {
				$.post("DeleteChildmodules", {
					id : nodes.id
				}, function(res) {
					if (res > 0) {
						if(res==1){
							$.messager.alert('提示', '删除成功！！！');
							init();
						}else{
							$.messager.alert('提示', '该模块已被占用,无法删除！！！');
						}
						
					}else{
						$.messager.alert('提示', '删除失败！！！');
					}
				}, "json")
			}
		}) 
	}
	/* 打开添加子节点的对话框*/
	function ParentAppend() {
		$("#addchildmodules_dialog").dialog("open");
	}
	
	/* 关闭新增框 */
	function addclears() {
		$("#addchildmodules_dialog").dialog("close");
	}
	//删除父节点
	function ParentRemove() {
		var nodes = $('#treemenu').tree('getSelected');
		var a = $('#treemenu').tree('isLeaf',nodes.target);
		if(a){
			$.messager.confirm("确定删除", "确定删除父节点吗？", function(r) {
				if (r) {
					$.post("DeleteParentmodules", {
						id : nodes.id
					}, function(res) {
						if (res > 0) {
							$.messager.alert('提示', '删除成功！！！');
							init();
						}
					}, "json")
				}
			}) 
		}else{
			$.messager.alert('提示', '该模块已被占用,无法删除！！！');
		}
 	
	}
	/* 添加父模块 */
	function addModuleInfo() {
		$("#addparentmodules_dialog").dialog("open");
	}
	
	/* 关闭新增框 */
	function addclear() {
		$("#addparentmodules_dialog").dialog("close");
	}