package com.team.idea.societySecureUI;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.idea.team.validator.DailyGuestValidator;

@Configuration
public class Application {

	private DailyGuestValidator dailyGuestValidator; 
	
    @Bean
    public DailyGuestValidator dailyGuestValidator() {
    	dailyGuestValidator = new DailyGuestValidator();
        return dailyGuestValidator;
    }
}
