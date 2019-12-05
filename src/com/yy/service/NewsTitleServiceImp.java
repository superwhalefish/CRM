package com.yy.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yy.dao.NewsTitleDao;
import com.yy.dao.UserchecksDao;
import com.yy.dao.UsersDao;
import com.yy.entity.Fenye;
import com.yy.entity.NewsTitle;
import com.yy.entity.UserRoles;
import com.yy.entity.Userchecks;
import com.yy.entity.Users;

@Service
public class NewsTitleServiceImp implements NewsTitleService {
	@Autowired
	private NewsTitleDao newsTitleDao;
	@Autowired
	private UsersDao usersDao;
	@Autowired
	private UserchecksDao userchecksDao;

	@Override
	public Integer selectNewsJinTian(HttpServletRequest request) {
		// TODO Auto-generated method stub
		NewsTitle newsTitle = new NewsTitle();
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String format = sdf.format(date);
		HttpSession session = request.getSession();
		String name = (String) session.getAttribute("name");
		Users u = new Users();
		u.setLoginName(name);
		/* 根据名称查询用户信息 */
		
		List<Users> selectuser = usersDao.selectByname(u);
		Integer id = selectuser.get(0).getId();
		 String selectUsercheckByuserid = userchecksDao.selectUsercheckByuserid(id);
		newsTitle.setYuanGongId(id);
		newsTitle.setJintian(selectUsercheckByuserid);
		newsTitle.setAddTime(format);
		Integer selectNewsJinTian = newsTitleDao.selectNewsJinTian(newsTitle);
		return selectNewsJinTian;
	}

}
