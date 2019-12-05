package com.yy.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yy.entity.Askers;
import com.yy.entity.Fenye;
import com.yy.entity.Student;
import com.yy.service.AskersService;
import com.yy.service.StudentService;
import com.yy.service.UsersService;

@Controller
@RequestMapping(value = "/emp")
public class AskersController {
	@Autowired
	private Fenye fenye;
	@Autowired
	private AskersService askersService;
	@Autowired
	private StudentService studentService;
	@Autowired
	private UsersService usersService;
	@RequestMapping(value = "getAskerAlls", method = RequestMethod.POST)
	@ResponseBody
	public Fenye<Askers> getAskerAlls(Integer page, Integer rows,Askers askers) {
		fenye.setPage((page - 1) * rows);
		fenye.setPageSize(rows);
		fenye.setAskers(askers);
		fenye = askersService.selectAllAskers(fenye);
		return fenye;
	}
	@RequestMapping(value = "selectEmpName", method = RequestMethod.POST)
	@ResponseBody
	public Fenye<Askers> selectEmpName(Integer page, Integer rows) {
		fenye.setPage((page - 1) * rows);
		fenye.setPageSize(rows);
		fenye = askersService.selectEmpName(fenye);
		return fenye;
	}
	
	@RequestMapping(value = "updateWeight", method = RequestMethod.POST)
	@ResponseBody
	public Integer updateWeight(Askers askers) {

		return askersService.updateWeights(askers);
	}
	
	@RequestMapping(value="getStuAll",method=RequestMethod.POST)
	@ResponseBody
	public Fenye getStuAll(Integer page,Integer rows,Student student){
		fenye.setPage((page - 1) * rows);
		fenye.setPageSize(rows);
		fenye.setStudent(student);
		fenye = studentService.selectStuAll(fenye);
		return fenye;
		
	}
	@RequestMapping(value="getempAll",method=RequestMethod.POST)
	@ResponseBody
	public Fenye getempByUid(){
		
		return usersService.selectAllEmp();
	}
	@RequestMapping(value="updateStuNetIdById",method=RequestMethod.POST)
	@ResponseBody
	public Integer updateStuNetIdById(HttpServletRequest request,Student student){
		fenye.setStudent(student);
		return studentService.updateStuByNet(request,student);
		
	}
	//updateStuNetIdByIdS
	
	@RequestMapping(value="updateStuNetIdByIdS",method=RequestMethod.POST)
	@ResponseBody
	public Integer updateStuNetIdByIdS(HttpServletRequest request,String StuIds,Integer netPusherId){
		String[] split = StuIds.split(",");
		List<Integer> list=new ArrayList<Integer>();
		for(int i=0;i<split.length;i++){
			int parseInt = Integer.parseInt(split[i]);
			list.add(parseInt);
		}
		return studentService.updateStuByNetS(request,list,netPusherId);
		
	}
	//shuliang
	@RequestMapping(value="zidongfenpei",method=RequestMethod.POST)
	@ResponseBody
	public Integer shuliang(Integer shuliang){
		Integer a=askersService.zodongFenpei(shuliang);
		return a;
	}
}
