package com.uca.capas.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.dao.StudentDAO;
import com.uca.capas.domain.Student;

@Controller
public class MainController {
	
	@Autowired
	private StudentDAO studentDao;
	
	@RequestMapping("/")
	public ModelAndView initMain(){
		ModelAndView mav = new ModelAndView();
		Student student= new Student();
		mav.addObject("student",student);		
		mav.setViewName("main");
		return mav;
	}

	@RequestMapping("/formData")
	public ModelAndView form(@ModelAttribute Student student,HttpServletRequest request) {
		ModelAndView mav= new ModelAndView();

			try {
			 student = studentDao.findOne(Integer.valueOf(request.getParameter("cStudent")));
			}
			catch(Exception e){
				e.printStackTrace();
			}				
				mav.addObject("student",student);
				mav.addObject("message","Datos de estudiante");
				mav.setViewName("form");					
		
		return mav;
	}


}
