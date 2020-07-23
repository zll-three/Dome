package com.zll.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zll.mapper.UserMapper;
import com.zll.pojo.Role;
import com.zll.pojo.User;

@Service
public class UserServiceImpl implements UserService{
              @Resource
              private UserMapper userMapper;

			@Override
			public List<User> getUserList(User user) {
				// TODO Auto-generated method stub
				return userMapper.getUserList(user);
			}

			@Override
			public int delUser(Integer userId) {
				// TODO Auto-generated method stub
				return userMapper.delUser(userId);
			}

			@Override
			public List<Role> getRoleList() {
				// TODO Auto-generated method stub
				return userMapper.getRoleList();
			}

			@Override
			public int upUser(User user) {
				// TODO Auto-generated method stub
				return userMapper.upUser(user);
			}

			@Override
			public int upUr(Integer userId, Integer roleId) {
				// TODO Auto-generated method stub
				return userMapper.upUr(userId, roleId);
			}

			@Override
			public int addUser(User user) {
				// TODO Auto-generated method stub
				return userMapper.addUser(user);
			}

			@Override
			public int addUr(Integer userId, Integer roleId) {
				// TODO Auto-generated method stub
				return userMapper.addUr(userId, roleId);
			}
}
