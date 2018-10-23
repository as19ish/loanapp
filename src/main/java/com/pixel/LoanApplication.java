package com.pixel;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"com.pixel"})
public class LoanApplication extends SpringBootServletInitializer{

	public static void main(String[] args) {
		SpringApplication.run(LoanApplication.class, args);
	}
}
