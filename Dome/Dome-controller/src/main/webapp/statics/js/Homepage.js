function add(){
	
	$.ajax({
		 type : "get",
		 url: contextPath+"/add",
		 async : false,  //同步请求
		 cache: false,
		 success: function(data){
		  $("#aa").html(data);
		 }
		  })
}
function up(userId){
	$.ajax({
		 type : "get",
		 data:{userId:userId},
		 url: contextPath+"/up",
		 async : false,  //同步请求
		 cache: false,
		 success: function(data){
		  $("#aa").html(data);
		 }
		  })
}