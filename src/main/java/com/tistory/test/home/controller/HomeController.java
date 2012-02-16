package com.tistory.test.home.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Value("#{db['db.driverclassname']}")
	private String defaultString;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/home.web", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! the client locale is " + locale.toString());
		logger.info("spring el " + defaultString);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home/home";
	}
	
	@RequestMapping(value = "/aaa.web", method = RequestMethod.GET)
	public String aaa(Locale locale, Model model) {
		logger.info("Welcome home! the client locale is " + locale.toString());
		logger.info("spring el " + defaultString);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home/aaa";
	}
	
	@RequestMapping(value = "/bbb.web", method = RequestMethod.GET)
	public String bbb(Locale locale, Model model) {
		logger.info("Welcome home! the client locale is " + locale.toString());
		logger.info("spring el " + defaultString);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home/bbb";
	}
	
	@RequestMapping(value = "/ekeditorPage.web", method = RequestMethod.GET)
	public String ekeditorPage(Locale locale, Model model) {
		logger.info("Welcome home! the client locale is " + locale.toString());
		logger.info("spring el " + defaultString);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home/ekeditorPage";
	}
	
}
