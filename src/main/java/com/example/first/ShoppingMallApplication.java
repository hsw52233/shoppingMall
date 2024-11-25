package com.example.first;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@SpringBootApplication
public class ShoppingMallApplication implements WebMvcConfigurer {
	@Autowired
	private CustomerInterceptor customerInterceptor;
	@Autowired
	private AdminInterceptor adminInterceptor;

	public static void main(String[] args) {
		SpringApplication.run(ShoppingMallApplication.class, args);
	}

	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(customerInterceptor).addPathPatterns("/customer/**")
				.excludePathPatterns("/customer/login").excludePathPatterns("/customer/home")
				.excludePathPatterns("/customer/register");
		registry.addInterceptor(adminInterceptor).addPathPatterns("/staff/**");
		WebMvcConfigurer.super.addInterceptors(registry);
	}

}
