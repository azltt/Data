package com.azl.service.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.azl.mapper.UserMapper;
import com.azl.pojo.User;
import com.azl.pojo.UserExample;
import com.azl.pojo.UserExample.Criteria;
import com.azl.service.user.UserService;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserMapper userMapper;

	@Override
	public User getByUsername(String username) {
		UserExample userExample=new UserExample();
		
		Criteria createCriteria = userExample.createCriteria();
		createCriteria.andUserNameEqualTo(username);
		List<User> users = userMapper.selectByExample(userExample);
		if(users.size()>0) {
			return users.get(0);
			
		}else {
			return null;
		}
	}

}
