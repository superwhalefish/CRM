package com.yy.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yy.entity.Fenye;
import com.yy.entity.Netfollows;
import com.yy.entity.Student;
import com.yy.service.StudentService;

@Controller
@RequestMapping(value="/stu")
public class MyStuController {
	@Autowired
	private StudentService studentService;
	@Autowired
	private Student student;
	@Autowired
	private Fenye<Student> fenye;
	
	
	@RequestMapping(value="selectMyStu",method=RequestMethod.POST)
	@ResponseBody
	public Fenye<Student> selectMyStu(HttpServletRequest request,Student student,Integer page,Integer rows){
		fenye.setPage((page - 1) * rows);
		fenye.setPageSize(rows);
		fenye.setStudent(student);
		fenye = studentService.selectMyStu(request, fenye);
		return fenye;
		
	}
	
	@RequestMapping(value="addgengzong",method=RequestMethod.POST)
	@ResponseBody
	public Integer addgengzong(HttpServletRequest request,Netfollows netfollows){
		Integer i=studentService.addNetfollows(request, netfollows);
		return i;
		
	}	
	
	//
	@RequestMapping(value="delStu",method=RequestMethod.POST)
	@ResponseBody
	public Integer delStu(Student student){
		
		return studentService.updateSetByidToVailAndBet(student);
		
	}
	
	
}
