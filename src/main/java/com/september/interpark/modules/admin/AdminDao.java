package com.september.interpark.modules.admin;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDao {

	@Inject
	@Resource(name ="sqlSession")
	private SqlSession sqlSession;
}
