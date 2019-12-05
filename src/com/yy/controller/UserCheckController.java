package com.yy.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yy.entity.Fenye;
import com.yy.entity.Userchecks;
import com.yy.service.UserchecksService;

@Controller
@RequestMapping(value = "/emp")
public class UserCheckController {
	@Autowired
	private UserchecksService userchecksService;
	@Autowired
	private Fenye<Userchecks> fenye;

	@RequestMapping(value = "getUsercheckAll", method = RequestMethod.POST)
	@ResponseBody
	public Fenye<Userchecks> getUserChecks(Integer page, Integer rows,
			Userchecks userchecks) {
		fenye.setPage((page - 1) * rows);
		fenye.setPageSize(rows);
		fenye.setUserchecks(userchecks);
		return userchecksService.selectCheckUser(fenye);
	}
	@RequestMapping(value = "updateUserCheckQC", method = RequestMethod.POST)
	@ResponseBody
	public Integer updateUserCheckQC(Userchecks userchecks){
		return userchecksService.updateUserCheckQC(userchecks);
		
	}
	@RequestMapping(value = "pliangqianchu", method = RequestMethod.POST)
	@ResponseBody
	public Integer updateUserCheckQC(String usercheckIds){
		String[] split = usercheckIds.split(",");
		List<Integer> list=new ArrayList<Integer>();
		for(int i=0;i<split.length;i++){
			int parseInt = Integer.parseInt(split[i]);
			list.add(parseInt);
		}
		return userchecksService.updateuserCheckQianchuS(list);
		
	}
}
