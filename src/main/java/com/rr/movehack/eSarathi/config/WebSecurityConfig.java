package com.rr.movehack.eSarathi.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	
//	@Override
//    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//        auth.inMemoryAuthentication()
//          .withUser("u").password("p").roles("USER");
//    }
 
    @Override
    protected void configure(HttpSecurity http) throws Exception {
    	http
		.authorizeRequests()
			/*.antMatchers( "/resources/**" ,             
                "/css/**").permitAll()*/
		.antMatchers( "/signup").permitAll()	
		.anyRequest().authenticated()
			.and()
		.formLogin()
			.loginPage("/loginpage") 
			.defaultSuccessUrl("/details")
			.failureUrl("/loginpage?error=y")
			.permitAll()
		.and()
			.logout()
//			.logoutSuccessUrl("/logoutpage")
			.invalidateHttpSession(true) ;     
    }
  
//    @Bean
//    public PasswordEncoder passwordEncoder() {
//        return new BCryptPasswordEncoder();
//    }
	
    @Bean
    public UserDetailsService userDetailsService() {
    	// ensure the passwords are encoded properly
    	UserBuilder users = User.withDefaultPasswordEncoder();
    	InMemoryUserDetailsManager manager = new InMemoryUserDetailsManager();
    	manager.createUser(users.username("u").password("p").roles("USER").build());
    	manager.createUser(users.username("admin").password("password").roles("USER","ADMIN").build());
    	return manager;
    }
    
//	@Override
//	protected void configure(HttpSecurity http) throws Exception {
//		
//		
//		http.userDetailsService(userDetailsService())
//		.csrf().disable()
//		.authorizeRequests().antMatchers("/", "/welcome").permitAll().and()
//		.authorizeRequests()
//		.antMatchers("/statement").hasRole("USER")
//		.and()
//		.formLogin()
//		.loginPage("/loginpage")
//		.loginProcessingUrl("/login")
//		.defaultSuccessUrl("/statement")
//		.failureUrl("/error")
//		.permitAll()
//		.and()
//		.logout()
//		.logoutSuccessUrl("/logout");
//		
//		http.authorizeRequests().antMatchers("/", "/welcome").permitAll().anyRequest().authenticated().and().formLogin()
//				.loginPage("/login").permitAll().and().logout().logoutUrl("/logout").permitAll().and()
//				.authorizeRequests().antMatchers("/statement").hasAnyRole("USER");
//	}
//
//	@Bean
//	@Override
//	public UserDetailsService userDetailsService() {
//		UserDetails user = User.withDefaultPasswordEncoder().username("user").password("password").roles("USER")
//				.build();
//
//		return new InMemoryUserDetailsManager(user);
//	}
}