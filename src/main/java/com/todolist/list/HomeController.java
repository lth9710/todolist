package com.todolist.list;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Autowired
	private HomeDAO dao;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home() {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("home");
		return mav;
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView input() {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("register");
		return mav;
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView register(HomeDTO homeDTO) {

		ModelAndView mav = new ModelAndView();
		/*homeDTO.setTitle(req.getParameter("title"));
		homeDTO.setContent(req.getParameter("content"));*/
		dao.insert(homeDTO);
		mav.setViewName("home");
		return mav;
	}

	/*
	 * @RequestMapping(value= "/ajax", method = RequestMethod.POST)
	 * 
	 * @ResponseBody public HomeDTO input(String title,String content,HomeDTO
	 * homeDTO) {
	 * 
	 * homeDTO.setTitle(title); homeDTO.setContent(content);
	 * 
	 * System.out.println(title); return homeDTO; }
	 */

}
