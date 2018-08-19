package com.rr.movehack.eSarathi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = { "com.rr.movehack.eSarathi" })
public class ESarathiApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(ESarathiApplication.class, args);
	}

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(ESarathiApplication.class);
	}
}
