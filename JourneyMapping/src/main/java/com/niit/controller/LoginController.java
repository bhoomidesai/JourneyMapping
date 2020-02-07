package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.StudentDAO;
import com.niit.model.Student;


@Controller
public class LoginController {
	Student student=null;
	@Autowired
	StudentDAO studentDAO;
	
	@RequestMapping(value = "/")
	public String gotoHome(Model model){
		return "index";
	}
	@RequestMapping(value = "/login1")
	public String gotoLogin(Model model){
		return "home";
	}
	@RequestMapping(value ="/login")
	public ModelAndView searchStudent(@RequestParam("studentID") String attribute, Model m){
		student = new Student();
		m.addAttribute("sid", attribute); 
		ModelAndView mav = new ModelAndView("home") ;
		student = (Student) studentDAO.searchStudents(attribute);
		mav.addObject("student", student);
		System.out.println("Name : "+attribute+student.getStudentName());
        return mav;
    }


}
