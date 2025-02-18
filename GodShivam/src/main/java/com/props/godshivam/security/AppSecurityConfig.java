package com.props.godshivam.security;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;

@Configuration
@EnableWebSecurity
public class AppSecurityConfig extends WebSecurityConfigurerAdapter
{
	@Autowired
	private UserDetailsService userDetailsService;
	
	
	@Override
    protected void configure(HttpSecurity http) throws Exception
    {
//     http.httpBasic().disable();
//     http
//     .requestMatchers()
//        .antMatchers("/", "/Signin", "/logging")
//        .and()
//        .authorizeRequests()
//        .anyRequest()
//        .authenticated()
//        .and()
//        .formLogin()
//        .permitAll();
		
		
		http
		.csrf().disable()
		.authorizeRequests()
        .antMatchers("/**").permitAll()
        .anyRequest().authenticated();
	}
	 
//	  @Override
//	    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//	        auth.authenticationProvider(authProvider());
//	    }
//	    
	@Bean
	 public PasswordEncoder encoder() {
	     return new BCryptPasswordEncoder();
	 }
//	@Bean
//	public DaoAuthenticationProvider authProvider() {
//	    DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
//	    authProvider.setUserDetailsService(userDetailsService);
//	    authProvider.setPasswordEncoder(encoder());
//	    return authProvider;
//	}
	@Bean
	public AuthenticationProvider authProvider()
	{
		DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
		provider.setUserDetailsService(userDetailsService);
//		provider.setPasswordEncoder(NoOpPasswordEncoder.getInstance());
		provider.setPasswordEncoder(encoder());
		return provider;
	}
//	@Bean
//	@Override
//	protected UserDetailsService userDetailsService() 
//	{
//		List<UserDetails> users = new ArrayList<>();
//		users.add(User.withDefaultPasswordEncoder().username("Simmi").password("toto").roles("USER").build());
//		return new InMemoryUserDetailsManager(users);
//	}
}
