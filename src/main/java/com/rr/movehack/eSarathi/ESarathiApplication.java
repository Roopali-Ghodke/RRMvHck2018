package com.rr.movehack.eSarathi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages={"com.rr.movehack.eSarathi"})
public class ESarathiApplication {

	public static void main(String[] args) {
		SpringApplication.run(ESarathiApplication.class, args);
	}
}
