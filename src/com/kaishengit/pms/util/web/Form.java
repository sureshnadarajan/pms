package com.kaishengit.pms.util.web;

import java.util.Enumeration;
import javax.servlet.http.HttpServletRequest;
import jodd.bean.BeanUtil;


public class Form {

	@SuppressWarnings("rawtypes")
	public static Object bind(Class<?> clazz, HttpServletRequest request) {
		
		Enumeration names = request.getParameterNames();
		Object obj = null;
		try {
			obj = clazz.newInstance();
			while(names.hasMoreElements()) {
				String propertyName = names.nextElement().toString();
				String propertyValue = request.getParameter(propertyName);
				if(BeanUtil.hasProperty(obj, propertyName)) {
					BeanUtil.setProperty(obj, propertyName, propertyValue);
				}
			}
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (SecurityException e) {
			e.printStackTrace();
		}
		return obj;
	}

	

}
