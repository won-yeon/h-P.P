package com.spring.test;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class scheduler {
	
	
	@Scheduled(cron="1 * 0 * * *")
	public void test() {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String formDate =format.format(date);
		System.out.println(formDate);
	}
}
