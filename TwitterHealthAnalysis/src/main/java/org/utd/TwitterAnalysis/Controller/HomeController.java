package org.utd.TwitterAnalysis.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping(value = { "/" , "/home" })
	ModelAndView welcomePage() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("welcome");		
		return modelAndView;
	}
	
	@RequestMapping(value = { "/contact" })
	ModelAndView contactPage() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("contact");		
		return modelAndView;
	}
	
	@RequestMapping(value = { "/about" })
	ModelAndView aboutPage() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("about");		
		return modelAndView;
	}
}
