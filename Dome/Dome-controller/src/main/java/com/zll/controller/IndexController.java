package com.zll.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.zll.pojo.Role;
import com.zll.pojo.User;
import com.zll.service.UserService;

@Controller
public class IndexController {
         @Resource
         private UserService userService;
         
         //主页显示数据
         @RequestMapping("/index")
         public String index(Model model,User user) {
        	 user.setUserId(0);
        	 List<User> getUserList=userService.getUserList(user);
        	 model.addAttribute("getUserList", getUserList);
        	 
			 return "Homepage";
        	 
         }
         //增加用户跳转
         @RequestMapping("/add")
         public String add(Model model) {
        	 List<Role> getRoleList=userService.getRoleList();
        	 model.addAttribute("getRoleList", getRoleList);
			return "addUser";
        	 
        	 
         }
       //增加
         @RequestMapping("/addUser")
      	@ResponseBody
      	public Object addUser(User user,@RequestParam(value = "roleId",required = false) String roleId) {
      		HashMap<String, String> resultMap = new HashMap<String, String>();
      		int count =userService.addUser(user);
      		int num=userService.addUr(user.getUserId(),Integer.parseInt(roleId));
      		if(count>0&&num>0) {
      			resultMap.put("addUserResult", "true");

      		} else {
      			resultMap.put("addUserResult", "false");
      		}
      		return JSONArray.toJSONString(resultMap);
      		
      	}
         //解除
         @RequestMapping("/delUser")
       	@ResponseBody
       	public Object delUser(@RequestParam(value = "id", required = false) String id) {
       		HashMap<String, String> resultMap = new HashMap<String, String>();
       		System.out.println(id);
       		int count=userService.delUser(Integer.parseInt(id));
       		if(count>0) {
       			resultMap.put("delUserResult", "true");

       		} else {
       			resultMap.put("delUserResult", "false");
       		}
       		return JSONArray.toJSONString(resultMap);
       		
       	}
         //修改跳转
         @RequestMapping("/up")
         public String up(Model model,@RequestParam(value = "userId", required = false) String userId) {
        	 User user=new User();
        	 user.setUserId(Integer.parseInt(userId));
        	 List<Role> getRoleList=userService.getRoleList();
        	 List<User> getUserList=userService.getUserList(user);
        	 model.addAttribute("getRoleList", getRoleList);
        	 model.addAttribute("getUserList", getUserList);
			return "upUser";
        	 
        	 
         }
         //修改
         @RequestMapping("/upUser")
      	@ResponseBody
      	public Object upUser(User user,@RequestParam(value = "roleId",required = false) String roleId,
      			@RequestParam(value = "userId",required = false) String userId) {
      		HashMap<String, String> resultMap = new HashMap<String, String>();
      		int count =userService.upUser(user);
      		int num=userService.upUr(Integer.parseInt(userId), Integer.parseInt(roleId));
      		if(count>0&&num>0) {
      			resultMap.put("upUserResult", "true");

      		} else {
      			resultMap.put("upUserResult", "false");
      		}
      		return JSONArray.toJSONString(resultMap);
      		
      	}
}
