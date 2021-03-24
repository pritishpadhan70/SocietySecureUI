package com.team.idea.societySecureUI;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages={"com.team.idea.*"})
public class SocietySecureUiApplication {

	public static void main(String[] args) {
		SpringApplication.run(SocietySecureUiApplication.class, args);
	}

}
