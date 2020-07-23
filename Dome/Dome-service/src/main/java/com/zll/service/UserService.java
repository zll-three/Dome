package com.zll.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zll.pojo.Role;
import com.zll.pojo.User;

public interface UserService {
	  /**
     * 查询用户信息
     * @return
     */
	   public List<User> getUserList(User user);
	  /**
	   * 解除用户绑定
	   * @param userId
	   * @return
	   */
	   public int delUser(@Param("userId")Integer userId);
	   /**
	    * 查询全部角色绑定下拉菜单
	    * @return
	    */
	   public List<Role> getRoleList();
	   /**
	    * 修改用户信息
	    * @param user
	    * @return
	    */
	   public int upUser(User user);
	   /**
	    * 修改绑定
	    * @param userId
	    * @param roleId
	    * @return
	    */
	   public int upUr(@Param("userId")Integer userId,@Param("roleId")Integer roleId);
	   /**
	    * 新增用户
	    * @param user
	    * @return
	    */
	   public int addUser(User user);
	   /**
	    * 新曾绑定
	    * @param userId
	    * @param roleId
	    * @return
	    */
	   public int addUr(@Param("userId")Integer userId,@Param("roleId")Integer roleId);
}
