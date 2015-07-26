package org.utd.TwitterAnalysis.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DiseaseController {
		
	@RequestMapping("/flu")
	ModelAndView fluPage() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("diseases/flu");		
		return modelAndView;
	}
	
	@RequestMapping("/cancer")
	ModelAndView cancerPage() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("diseases/cancer");		
		return modelAndView;
	}
	
	@RequestMapping("/asthma")
	ModelAndView asthmaPage() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("diseases/asthma");		
		return modelAndView;
	}
	
	@RequestMapping("/aids")
	ModelAndView aidsPage() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("diseases/aids");		
		return modelAndView;
	}
	
	@RequestMapping("/arthritis")
	ModelAndView arthritisPage() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("diseases/arthritis");		
		return modelAndView;
	}
	
	@RequestMapping("/alzheimer")
	ModelAndView alzheimerPage() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("diseases/alzheimer");		
		return modelAndView;
	}
	
	@RequestMapping("/diabetes")
	ModelAndView diabetesPage() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("diseases/diabetes");		
		return modelAndView;
	}
	
	@RequestMapping("/tuberculosis")
	ModelAndView tuberculosisPage() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("diseases/tuberculosis");		
		return modelAndView;
	}
	
	@RequestMapping("/obesity")
	ModelAndView obesityPage() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("diseases/obesity");		
		return modelAndView;
	}
	
	@RequestMapping("/epilepsy")
	ModelAndView epilepsyPage() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("diseases/epilepsy");		
		return modelAndView;
	}
	
}
