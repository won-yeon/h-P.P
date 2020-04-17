package com.spring.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {
	
	@RequestMapping(value= {"index","/"})
	public String home() {
		return "index";
	}
	
	@RequestMapping("login")
	public String loginHome() {
		return "checkLogin";
	}
	
	@RequestMapping("fitness")
	public String fitness() {
		return "gallery/fitness";
	}
	
	@RequestMapping("restaurant")
	public String restaurant() {
		return "gallery/restaurant";
	}
	
	@RequestMapping("swim")
	public String swim() {
		return "gallery/swim";
	}
	@RequestMapping("reservation")
	public String reservation() {
		return "reservation/reservation";
	}
	@RequestMapping("executive")
	public String roomEx() {
		return "room/executive";
	}
	@RequestMapping("standard")
	public String roomSt() {
		return "room/standard";
	}
	@RequestMapping("sweet")
	public String roomSw() {
		return "room/sweet";
	}
	@RequestMapping("event")
	public String event() {
		return "event/event";
	}
	
	@RequestMapping("eventList")
	public String eventList() {
		return "event/eventList";
	}
	
	@RequestMapping("reservation/step")
	public String reserv() {
		return "reservation/reservation";
	}
	
	@RequestMapping("adminLogin")
	public String adminLogin() {
		return "adminLogin";
	}
	
	
}
