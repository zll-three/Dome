package com.zll.test;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.zll.pojo.Role;
import com.zll.pojo.User;
import com.zll.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)  
@ContextConfiguration(locations = "classpath:applicationContext-mybatis.xml")  
public class test {
	@Resource
	private UserService userService;
	@Test
	public void Ts() {
		User ur=new User();
		ur.setUserId(0);
		 List<User> getUserList=userService.getUserList(ur);
		 System.out.println("用户数据----");
		 for(User user:getUserList) {
			 System.out.println("用户id:"+user.getUserId()+"用户姓名"+user.getUserName());
			 
		 }
		
		 //角色下拉菜单测试
		 System.out.println("");
		 System.out.println("角色下拉菜单----");
		 List<Role> getRoleList=userService.getRoleList();
		 for(Role role: getRoleList) {
			 System.out.println(role.getRoleName());
		 }
		 //数据回显
		 System.out.println("");
		 System.out.println("用户回显数据----");
		 User usr=new User();
			usr.setUserId(1);
			 List<User> getUserlist=userService.getUserList(usr);
			
			 for(User us:getUserlist) {
				 System.out.println("用户id:"+us.getUserId()+"用户姓名"+us.getUserName());
				 
			 }
			 
			 /*删除测试
			 System.out.println("");
			 System.out.println("删除用户关联----");
			 int count =userService.delUser(1);
			 if(count>0) {
				 System.out.println("删除成功!");
			 }	 
			 */
			 //修改用户并修改角色
			 System.out.println("");
			 System.out.println("修改-----");
			 User u=new User();
			 u.setUserId(1);
			 u.setUserName("张思");
			 int count=userService.upUser(u);
			 int num=userService.upUr(u.getUserId(), 2);
			 if(count>0 &&num>0) {
				 System.out.println("修改成功!");
			 }	 
			 
			 //增加测试
			 System.out.println("");
			 System.out.println("增加-----");
			 User s=new User();
			 s.setUserName("李名");
			 int count1=userService.addUser(s);
			 int num1=userService.addUr(s.getUserId(), 2);
			 if(count1>0 &&num1>0) {
				 System.out.println("增加成功!");
			 }	
	}
}
