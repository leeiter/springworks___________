package com.biz.rbooks.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
// 추상 메서드
/*
 * tomcat이 작동하면서 제일 먼저 호출(AbstractAnnotationConfigDispatcherServletInitializer를 찾아서)할 클래스
 * web.xml를 찾는데 <failOnMissingWebXml>false</failOnMissingWebXml>를 확인하게 된다.
 * 그 이후에 순서대로 실행
 * 
 */
public class ProjectInit extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub // web.xml 에 있는 context param
		return new Class[] {RootConfig.class}; // RootC
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		// TODO Auto-generated method stub // web.xml에 servlet 부분
		
		// Class[] servlet = new Class[] {WebConfig.class};
		
		
		
		
		
		// return servlet;
		
		return new Class[] {WebServletConfig.class, MybatisConfig.class};
	}

	@Override
	protected String[] getServletMappings() {
		// TODO Auto-generated method stub  // web.xml에 servlet-mapping 부분
		
		// String[] mapping = new String[] {"/", "*.do"}; // 주소창에 어떻게 추가를 시킬 것인가
		
		
		// return mapping;
		
		return new String[] {"/", "*.do"};
	}

}
