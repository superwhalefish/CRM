package com.yy.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yy.dao.RoleModulesDao;
import com.yy.dao.RolesDao;
import com.yy.dao.UserRolesDao;
import com.yy.entity.Fenye;
import com.yy.entity.RoleModules;
import com.yy.entity.Roles;
import com.yy.entity.UserRoles;

@Service
public class RolesServiceImp implements RolesService {
	@Autowired
	private RolesDao rolesDao;
	@Autowired
	private UserRolesDao userRolesDao;
	@Autowired
	private RoleModulesDao roleModulesDao;

	@Override
	public List<Roles> selectRoles(List<Integer> list) {
		// TODO Auto-generated method stub
		return rolesDao.selectRoles(list);
	}

	@Override
	public Fenye<Roles> selectAllRoles(Fenye<Roles> fenye) {
		Integer total = rolesDao.selectCountRoles(fenye);
	    List<Roles> selectAllRoles = rolesDao.selectAllRoles(fenye);
		fenye.setRows(selectAllRoles);
		fenye.setTotal(total);
		return fenye;
	}

	@Override
	public Integer addRoles(Roles roles) {
		// TODO Auto-generated method stub
		List<Roles> role=rolesDao.selectByName(roles.getName());
		Integer i=null;
		if(role.size()>0){
			i=2;
		}else {
			i=rolesDao.addRoles(roles);
		}
		return i;
	}

	@Override
	public Integer updateRoles(Roles roles) {
		// TODO Auto-generated method stub
		return rolesDao.updateRoles(roles);
	}

	@Override
	public Integer delRoles(Integer id) {
		// TODO Auto-generated method stub
		//查询该角色是否已被赋予
		Integer i=0;
		List<UserRoles> selectUserRolesByRolesId = userRolesDao.selectUserRolesByRolesId(id);
		List<RoleModules> selectRoleModulesByRId = roleModulesDao.selectRoleModulesByRId(id);
		if(selectUserRolesByRolesId.size()>0 || selectRoleModulesByRId.size()>0){
			i=2;
		}else{
			i=rolesDao.delRoles(id);
		}
		return i;
	}

	@Override
	public List<Roles> selectrolebyid(Integer id) {
		// TODO Auto-generated method stub
		List<UserRoles> selectUserRoles = userRolesDao.selectUserRoles(id);
		List<Integer> urlist=new ArrayList<Integer>();
		for(int i=0;i<selectUserRoles.size();i++){
			urlist.add(selectUserRoles.get(i).getRoleId());
		}
		List<Roles> selectRoles = rolesDao.selectRoles(urlist);
		
		return selectRoles;
	}

}
