package com.yy.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yy.entity.Fenye;
import com.yy.entity.Netfollows;
import com.yy.service.NetfollowsService;

@Controller
@RequestMapping(value="/stu")
public class NetfollowsController {
	@Autowired
	private Fenye<Netfollows> fenye;
	@Autowired
	private NetfollowsService netfollowsService;
	@RequestMapping(value="selectNetfollows",method=RequestMethod.POST)
	@ResponseBody
	public Fenye<Netfollows> selectNetfollows(HttpServletRequest request,Netfollows netfollows,Integer page,Integer rows,String startTime,String endTime){
		fenye.setPage((page-1)*rows);
		fenye.setPageSize(rows);
		fenye.setPage((page-1)*rows);
		fenye.setPageSize(rows);
		fenye.setNetfollows(netfollows);
		fenye.setStartTime(startTime);
		fenye.setEndTime(endTime);
		fenye=netfollowsService.selectNetfollows(request,fenye);
		return fenye;
		
	}
}
