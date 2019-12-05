package com.yy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yy.dao.ParentModulesDao;
import com.yy.entity.Modules;
import com.yy.entity.ParentModules;

@Service
public class ParentModulesServiceImp implements ParentModulesService {
	@Autowired
	private ParentModulesDao parentModulesDao;

	@Override
	public List<ParentModules> selectByparentId(List<Integer> list) {
		// TODO Auto-generated method stub
		return parentModulesDao.selectByparentId(list);
	}

	@Override
	public List<ParentModules> selectParentModulesAll() {
		// TODO Auto-generated method stub
		return parentModulesDao.selectParentModules();
	}
	
	@Override
	public Integer addParentModules(ParentModules parentModules) {
		// TODO Auto-generated method stub
		Integer i=null;
		List<ParentModules> p=parentModulesDao.selectByName(parentModules.getText());
		if(p.size()>0){
			i=2;
		}else{
			i=parentModulesDao.addParentModules(parentModules);
		}
		return i;
	}

	@Override
	public Integer deleteParentModules(Integer id) {
		// TODO Auto-generated method stub
		return parentModulesDao.deleteParentModules(id);
	}

}
