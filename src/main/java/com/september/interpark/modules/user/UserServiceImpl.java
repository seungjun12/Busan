package com.september.interpark.modules.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl  implements UserService{

	@Autowired
	UserDao dao;
	
	@Override
	public int insert(User dto) throws Exception {
		int result=dao.insert(dto);
		System.out.println("service result: " + result);
		return result;
	}

	
}
