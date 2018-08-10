package com.powernode.util;

import java.io.IOException;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionUtil {

	private static ThreadLocal<SqlSession> t = new ThreadLocal<SqlSession>();
	private static SqlSessionFactory factory;

	static {

		try {
			factory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream("mybatics-config.xml"));
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	public static SqlSession getSqlSession() {
		SqlSession sqlSession = t.get();
		if (sqlSession == null) {
			sqlSession = factory.openSession();
			t.set(sqlSession);
		}
		return sqlSession;

	}

	public static void rollback(SqlSession sqlSession) {
		if (sqlSession != null) {
			sqlSession.rollback();
		}
	}

	public static void close(SqlSession sqlSession) {
		if (sqlSession != null) {
			sqlSession.close();
			t.remove();
		}
	}

}
