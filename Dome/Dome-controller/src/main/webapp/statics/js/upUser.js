function upUser(id) {
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
		"url" : contextPath+"/upUser",
		"type" : "post",
		"data" :{userName:name,roleId:roleId,userId:id}, 
		"dataType" : "json",
		"success" : success,
		"error" : error,
	});
	
	// 修改成功回调函数
	function success(data) {
		if(data.upUserResult == "true"){
			alert("修改成功");
          location.href = contextPath+"/index";
		}else if(data.upUserResult == "false"){
			$("#ts").html("<font>修改失败</font>");
		}
	}
	//请求失败回调函数
	function error(date) {
		alert("请求失败!");
	}
}