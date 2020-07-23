function delUser(id) {
	var dele = confirm("确定要删除吗？");
	if (dele == true) {
		      //删除
				$.ajax({
					type : "post",
					url : contextPath+"/delUser",
					data:{id:id},
					dataType : "json",
					success : success,
					error : error,
				});
				// 删除成功回调函数
				function success(data) {		
					if(data.delUserResult == "true"){
						alert("删除成功");
                      location.href = contextPath+"/index";
					}else if(data.delUserResult == "false"){
						$("#ts").html("<font>删除失败</font>");
					}
				}
				//请求失败回调函数
				function error(date) {
					alert("请求失败!");
				}
	}
}