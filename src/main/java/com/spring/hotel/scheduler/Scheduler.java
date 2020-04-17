package com.spring.hotel.scheduler;

import javax.inject.Inject;

import org.springframework.scheduling.annotation.Scheduled;

import org.springframework.stereotype.Component;

import com.spring.hotel.service.AdminService;

@Component
public class Scheduler {

	
	@Inject
	AdminService service;
	
	@Scheduled(cron="0 0 15 * * *")
	public void SchdulderTest() {
		service.autoRoomState();
	}
}
