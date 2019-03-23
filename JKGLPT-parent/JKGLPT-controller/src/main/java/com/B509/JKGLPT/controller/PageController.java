package com.B509.JKGLPT.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("page")
public class PageController {
	/**
	 * 跳转页面逻辑
	 * @param pageName
	 * @return
	 */
	@RequestMapping(value="{pageName}",method=RequestMethod.GET)
	public String toPage(@PathVariable("pageName") String pageName){
		return pageName;
	}
}
