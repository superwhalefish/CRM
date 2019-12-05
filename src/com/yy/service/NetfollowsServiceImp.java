package com.yy.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yy.dao.NetfollowsDao;
import com.yy.dao.UserRolesDao;
import com.yy.dao.UsersDao;
import com.yy.entity.Fenye;
import com.yy.entity.Netfollows;
import com.yy.entity.UserRoles;
import com.yy.entity.Users;

@Service
public class NetfollowsServiceImp implements NetfollowsService {
	@Autowired
	private NetfollowsDao netfollowsDao;
	@Autowired
	private UsersDao usersDao;
	@Autowired
	private UserRolesDao userRolesDao;
	@Override
	public Fenye<Netfollows> selectNetfollows(HttpServletRequest request,
			Fenye<Netfollows> fenye) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String name = (String) session.getAttribute("name");
		Users u = new Users();
		u.setLoginName(name);
		/* 根据名称查询用户信息 */
		List<Users> selectuser = usersDao.selectByname(u);
		List<UserRoles> selectUserRoles = userRolesDao.selectUserRoles(selectuser.get(0).getId());
		Integer sc=0;
		for(int i=0;i<selectUserRoles.size();i++){
			if(selectUserRoles.get(i).getRoleId()==4){
				sc=11;
			}
		}
		
		if(sc==11){
			fenye.setUserId(0);
		}else{
			fenye.setUserId(selectuser.get(0).getId());
		}
		List<Netfollows> selectNetfollows = netfollowsDao
				.selectNetfollows(fenye);
		fenye.setRows(selectNetfollows);  
		
		Integer countNetfollows = netfollowsDao.countNetfollows(fenye);
		fenye.setTotal(countNetfollows);
		return fenye;
	}

}
