package com.abasi_online_easy_way_bank.config;

import com.abasi_online_easy_way_bank.interceptors.AppInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
@ComponentScan(basePackages = {"com.abasi_online_easy_way_bank"})
public class AppConfig extends WebMvcConfigurationSupport {

    @Override
    protected void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("css/**","images/**","js/**")
                .addResourceLocations("classpath:/static/css/","classpath:/static/js/","classpath:/static/images/");
    }

    @Bean
    public InternalResourceViewResolver viewResolver() {
        InternalResourceViewResolver jspViewResolver = new InternalResourceViewResolver();
        jspViewResolver.setPrefix("/WEB-INF/jsp/");
        jspViewResolver.setSuffix(".jsp");
        jspViewResolver.setViewClass(JstlView.class);
//        jspViewResolver.setViewNames("register");
        return jspViewResolver;
    }

    @Override
    protected void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new AppInterceptor()).addPathPatterns("/app/*");
    }
}
