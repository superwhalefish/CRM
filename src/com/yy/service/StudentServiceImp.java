package com.yy.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yy.dao.NetfollowsDao;
import com.yy.dao.NewsTitleDao;
import com.yy.dao.StudentDao;
import com.yy.dao.UsersDao;
import com.yy.entity.Fenye;
import com.yy.entity.Netfollows;
import com.yy.entity.NewsTitle;
import com.yy.entity.Student;
import com.yy.entity.Users;

@Service
public class StudentServiceImp implements StudentService{
	@Autowired
	private StudentDao studentDao;
	@Autowired
	private UsersDao usersDao;
	@Autowired
	private NetfollowsDao netfollowsDao;
	@Autowired
	private NewsTitleDao newsTitleDao;
	@Override
	public Fenye<Student> selectFenyeStu(Fenye<Student> fenye) {
		List<Student> selectAll = studentDao.selectAll(fenye);
		Integer selectCount = studentDao.selectCount(fenye);
		fenye.setTotal(selectCount);
		fenye.setRows(selectAll);
		return fenye;
	}
	

	@Override
	public Integer updateStu(HttpServletRequest request,Student student) {
		// TODO Auto-generated method stub
		Integer i=null;
			
			i= studentDao.updateStu(student);
		
		return i;
	}

	



	@Override
	public Integer addStu(Student student) {
		// TODO Auto-generated method stub
		return studentDao.addStu(student);
	}
	



	@Override
	public Fenye<Student> selectOnlineStu(HttpServletRequest request, Fenye<Student> fenye) {
		
		HttpSession session = request.getSession();
		//获取当前员工信息
		String name = (String) session.getAttribute("name");
		
		Users u = new Users();
		u.setLoginName(name);
		/* 根据名称查询用户信息 */
		List<Users> selectuser = usersDao.selectByname(u);
		
		fenye.setUserId(selectuser.get(0).getId());
		//查询该员工所管理的学生
		List<Student> selectOnlineStu =studentDao.selectOnlineStu(fenye);
		Integer total = studentDao.CountOnlineStu(fenye);
		fenye.setRows(selectOnlineStu);
		fenye.setTotal(total);
		return fenye;
	}
  
	@Override
	public Integer delStu(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public Fenye<Student> selectMyStu(HttpServletRequest request,
			Fenye<Student> fenye) {
		
		HttpSession session = request.getSession();
		String name = (String) session.getAttribute("name");
		Users u = new Users();
		u.setLoginName(name);
		/* 根据名称查询用户信息 */
		List<Users> selectuser = usersDao.selectByname(u);
		fenye.setUserId(selectuser.get(0).getId());
		List<Student> selectMyStu =studentDao.selectMyStu(fenye);
		Integer total = studentDao.CountMyStu(fenye);
		fenye.setRows(selectMyStu);
		fenye.setTotal(total);
		return fenye;
	}


	@Override
	public Fenye<Student> selectStuAll(Fenye fenye) {
		List<Student> stuAllbyunetPusherId=studentDao.selectStuAll(fenye);
		fenye.setRows(stuAllbyunetPusherId);
		return fenye;
	}


	@Override
	public Integer updateStuByNet(HttpServletRequest request,Student student) {
		// TODO Auto-generated method stub
		Integer i=null;
		Student netstucount=studentDao.selectBySId(student.getId());
		if(netstucount.getNetPusherId()!=null){
			//已分配
			i=2;
		}else{
			i=studentDao.updateStuS(student);
			//记录分配信息
			if(i>0){
				HttpSession session = request.getSession();
				String name = (String) session.getAttribute("name");
				Users u = new Users();
				u.setLoginName(name);
				// 根据名称查询用户信息 
				List<Users> selectuser = usersDao.selectByname(u);
				Date date = new Date();
				SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				String format = sdf.format(date);
				NewsTitle addNews = new NewsTitle();
				addNews.setJinLiId(selectuser.get(0).getId());
				addNews.setJingLiName(selectuser.get(0).getLoginName());
				addNews.setYuanGongId(student.getNetPusherId());
				addNews.setAddTime(format);
				addNews.setStuId(student.getId());
				newsTitleDao.addNews(addNews);
			}
			
		}
		return i;
	}


	@Override
	public Integer addNetfollows(HttpServletRequest request,
			Netfollows netfollows) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String name = (String) session.getAttribute("name");
		Users u = new Users();
		u.setLoginName(name);
		/* 根据名称查询用户信息 */
		List<Users> selectuser = usersDao.selectByname(u);
		Date date = new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String format = sdf.format(date);
		netfollows.setFollowTime(format);
		netfollows.setUserId(selectuser.get(0).getId());
		Integer a=netfollowsDao.addNetfollows(netfollows);
		return a;
	}


	@Override
	public Integer updateSetByidToVailAndBet(Student student) {
		// TODO Auto-generated method stub
		Integer i=studentDao.updateSetByidToVailAndBet(student);
		return i;
	}


	@Override
	public Integer updateStuByNetS(HttpServletRequest request,
			List<Integer> list,Integer netPusherId) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String name = (String) session.getAttribute("name");
		Users u = new Users();
		u.setLoginName(name);
		Date date = new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String format = sdf.format(date);
		List<Users> selectuser = usersDao.selectByname(u);
		Integer k=0;
		for(int i=0;i<list.size();i++){
			Student student = new Student();
			student.setId(list.get(i));
			student.setNetPusherId(netPusherId);
			k=studentDao.updateStuS(student);
			if(k>0){
				NewsTitle addNews = new NewsTitle();
				addNews.setJinLiId(selectuser.get(0).getId());
				addNews.setJingLiName(selectuser.get(0).getLoginName());
				addNews.setYuanGongId(netPusherId);
				addNews.setAddTime(format);
				addNews.setStuId(student.getId());
				newsTitleDao.addNews(addNews);
			}
		}
		return k;
	}



	

}
