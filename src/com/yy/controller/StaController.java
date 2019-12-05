package com.yy.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yy.dao.UsersDao;
import com.yy.entity.Pie;
import com.yy.service.UserchecksService;
@Controller
@RequestMapping(value="/sta")
public class StaController {
	@Autowired
	private UserchecksService userchecksService;
	@Autowired
	private UsersDao usersDao;
	
	
@RequestMapping(value="getPie",method=RequestMethod.POST)
@ResponseBody
	public List<Integer> getPie(){
	Integer selectAllCount = usersDao.selectAllCount();
	Integer check =userchecksService.selectJTCheckCount();
	
		List<Integer> a=new ArrayList<Integer>();
		
		a.add(check);//Ç©µ½
		a.add(selectAllCount-check);
		return a;
	}
}
