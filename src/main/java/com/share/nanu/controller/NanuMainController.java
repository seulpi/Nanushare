package com.share.nanu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.share.nanu.service.MainService;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@RestController
public class NanuMainController {
	
	@Autowired
	private MainService mainService;
	
	@RequestMapping("/main")
	public ModelAndView nanumain(ModelAndView mov) throws Exception {
		/* model.addAttribute("daymoney", mainService.getContent(dnvo.getDntdate())); */
		
		mov.setViewName("main/mainview"); 
		/* mov.setViewName("test"); */
		mov.addObject("daymoney", mainService.getMoney());
		mov.addObject("weekmoney", mainService.getWeekMoney());
		mov.addObject("mapvm", mainService.getvm());
		return mov;
	}
	
	@RequestMapping("/machine")
	public ModelAndView offlineVm (ModelAndView mov) throws Exception {
		mov.setViewName("main/vm"); 
		
		return mov;
	}

}
