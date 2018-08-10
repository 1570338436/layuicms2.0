package com.powernode.util;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

import org.apache.ibatis.session.SqlSession;

public class TransactionInvocationHandler implements InvocationHandler {

	private Object target;

	public TransactionInvocationHandler(Object target) {
		this.target = target;
	}

	@Override
	public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {

		Object obj = null;
		SqlSession sqlSession = null;

		try {

			sqlSession = SqlSessionUtil.getSqlSession();
			obj = method.invoke(target, args);

			sqlSession.commit();
		} catch (Exception e) {
			SqlSessionUtil.rollback(sqlSession);
			e.printStackTrace();
			throw e.getCause();
		}

		SqlSessionUtil.close(sqlSession);
		
		return obj;
	}

	public Object getProxy() {
		return Proxy.newProxyInstance(target.getClass().getClassLoader(), target.getClass().getInterfaces(), this);
	}

}
