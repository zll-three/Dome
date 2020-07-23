function addUser() {
	var name = $("#name").val();
	var roleId = $("#roleId").val();
	if (name == "") {
		alert("姓名不能为空");
		return false;
	}
	else if (roleId == 0) {
		alert("请选择角色");
		return false;
	}
	
	
	$.ajax({
		"url" : contextPath+"/addUser",
		"type" : "post",
		"data" : {userName:name,roleId:roleId},
		"dataType" : "json",
		"success" : success,
		"error" : error,
	});
	
	// 增加成功回调函数
	function success(data) {
		if(data.addUserResult == "true"){
			alert("添加成功");
          location.href = contextPath+"/index";
		}else if(data.addUserResult == "false"){
			$("#ts").html("<font>添加失败</font>");
		}
	}
	//请求失败回调函数
	function error(date) {
		alert("请求失败!");
	}
}