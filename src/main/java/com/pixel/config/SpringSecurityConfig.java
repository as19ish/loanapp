package com.pixel.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	@Qualifier("customEmployeeDetailsService")
	private UserDetailsService customEmployeeDetailsService;
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth)
			throws Exception {
		auth.userDetailsService(customEmployeeDetailsService).passwordEncoder(passwordEncoder());
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable().authorizeRequests()
				.antMatchers("/login").permitAll()
				.antMatchers("/addemployee")
				.access("hasAuthority('admin')")
				.antMatchers("/emplist")
				.access("hasAuthority('admin')")
				.antMatchers("/upload-leads")
				.access("hasAuthority('admin')")
				.antMatchers("/add-leads")
				.access("hasAuthority('admin')")
				.antMatchers("/signup")
				.access("hasAuthority('admin')")
				.antMatchers("/toggle_status/**")
				.access("hasAuthority('admin')")
				.antMatchers("/fetch-lead")
				.access("hasAuthority('employee')")
				.anyRequest().authenticated().and()
				.formLogin()
				.loginProcessingUrl("/j_spring_security_check").loginPage("/login")
				.failureUrl("/login?error=true")
				.usernameParameter("username").passwordParameter("password")
				.and().logout()
				.logoutSuccessUrl("/login")
				.and()
				.httpBasic();
	}
	
	@Bean
	PasswordEncoder passwordEncoder(){
		
		return new NoPasswordEncoder();
	}
}
