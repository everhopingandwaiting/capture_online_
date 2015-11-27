package cn.spring.common.component;

import java.io.File;
import java.util.Locale;

import lombok.extern.slf4j.Slf4j;

import org.springframework.web.servlet.View;
import org.thymeleaf.spring4.view.ThymeleafViewResolver;
import org.thymeleaf.templateresolver.ServletContextTemplateResolver;

@Slf4j
public class ThymeleafViewResolverEx extends ThymeleafViewResolver {

	@Override
	public View resolveViewName(String viewName, Locale locale) throws Exception {

		ServletContextTemplateResolver servletContextTemplateResolver = (ServletContextTemplateResolver)this.getWebApplicationContext().getBean("templateResolver");
		servletContextTemplateResolver.initialize();
		String prefix = servletContextTemplateResolver.getPrefix().substring(1);
		String suffix = servletContextTemplateResolver.getSuffix();
		
		//String str = getClass().getResource("/").toString().replace("file:/", "").replace("/WEB-INF/classes/", "");
		//log.info("*****************************" + str);
//		log.info("-----------------------------" + this.getServletContext().getRealPath("/"));
		File file = new File(this.getServletContext().getRealPath("/") + prefix + viewName + suffix);
		if (!file.exists()){
			return null;
		}
		return super.resolveViewName(viewName, locale);
	}
}
