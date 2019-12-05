package com.yy.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yy.dao.AskersDao;
import com.yy.dao.RolesDao;
import com.yy.dao.UserRolesDao;
import com.yy.dao.UserchecksDao;
import com.yy.entity.Askers;
import com.yy.entity.Fenye;
import com.yy.entity.Roles;
import com.yy.entity.UserRoles;
import com.yy.entity.Userchecks;
import com.yy.entity.Users;

@Service
public class UserchecksServiceImp implements UserchecksService {
	@Autowired
	private UserchecksDao userchecksDao;
	@Autowired
	private AskersDao askersDao;
	@Autowired
	private UserRolesDao userRolesDao;
	@Autowired
	private RolesDao rolesDao;
	
	@Autowired
	private UsersService usersService;
	@Override
	public Integer addUsercheck(HttpServletRequest request) {
		
		Userchecks userchecks=new Userchecks();
		HttpSession session = request.getSession();
		String name = (String) session.getAttribute("name");
		Users u = new Users();
		u.setLoginName(name);
		/* 根据名称查询用户信息 */
		UserRoles userRoles = new UserRoles();
		
		
		List<Users> selectuser = usersService.selectByname(u);
		userRoles.setUserId(selectuser.get(0).getId());
		List<UserRoles> selectURByRidAndUid = userRolesDao.selectURByRidAndUid(userRoles);
		List<Integer> urlist = new ArrayList<Integer>();
		for (int i = 0; i < selectURByRidAndUid.size(); i++) {
				urlist.add(selectURByRidAndUid.get(i).getRoleId());
		}
		List<Roles> selectRoles = rolesDao.selectRoles(urlist);
		
		Integer k=0;
		List<UserRoles> selectUserRoles = userRolesDao.selectUserRoles(selectuser.get(0).getId());
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
		String cTime = sdf.format(date);
		String ymr = sdf1.format(date);
		String lTime=ymr+" 06:00:00";
		String bTime=ymr+" 09:00:00";
		userchecks.setUserId(selectuser.get(0).getId());
		userchecks.setUserName(name);
		userchecks.setCheckInTime(cTime);
		userchecks.setCheckState(request.getParameter("checkState"));
		userchecks.setIsCancel("未签出");
		try {
			long time6 = sdf.parse(lTime).getTime();
			long timeC = sdf.parse(cTime).getTime();
			long time8 = sdf.parse(bTime).getTime();
			if((timeC-time6)>0){
				if((time8-timeC)>0){
					k=userchecksDao.addUsercheck(userchecks);
					if(k>0){
						if(selectUserRoles.get(0).getRoleId()!=1 && selectUserRoles.get(0).getRoleId()!=4){
							Askers askers = new Askers();
							askers.setAskerName(name);
							askers.setRoleName(selectRoles.get(0).getName());
							askers.setWeight(selectuser.get(0).getQuanZhong());
							askers.setCheckState(request.getParameter("checkState"));
							askers.setCheckInTime(cTime);
							askers.setUserid(selectuser.get(0).getId());
							askersDao.addAskersUsername(askers);
						}
					}
				}else{
					//你迟到了
					Integer a=userchecksDao.addUsercheck(userchecks);
					if(a>0){
						if(selectUserRoles.get(0).getRoleId()!=1 && selectUserRoles.get(0).getRoleId()!=4){
							Askers askers = new Askers();
							askers.setAskerName(name);
							askers.setRoleName(selectRoles.get(0).getName());
							askers.setWeight(selectuser.get(0).getQuanZhong());
							askers.setCheckState(request.getParameter("checkState"));
							askers.setCheckInTime(cTime);
							askers.setUserid(selectuser.get(0).getId());
							askersDao.addAskersUsername(askers);
						}
					}
					
						k=-1;
				}
			}else{
				
				k=3;
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return k;
	}
	@Override
	public List<Userchecks> selectCheckUserJinTian(HttpServletRequest request) {
		Userchecks userchecks=new Userchecks();
		HttpSession session = request.getSession();
		String name = (String) session.getAttribute("name");
		Users u = new Users();
		u.setLoginName(name);
		List<Users> selectuser = usersService.selectByname(u);
		userchecks.setUserId(selectuser.get(0).getId());
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String format = sdf.format(date);
		userchecks.setCheckInTime(format);
		return userchecksDao.selectCheckUserJinTian(userchecks);
	}
	@Override
	public Integer updateUserCheck(HttpServletRequest request) {
		Integer i=0;
		Userchecks userchecks=new Userchecks();
		HttpSession session = request.getSession();
		String name = (String) session.getAttribute("name");
		Users u = new Users();
		u.setLoginName(name);
		/* 根据名称查询用户信息 */
		List<Users> selectuser = usersService.selectByname(u);
		Date date = new Date();
	
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
		String checkTime = sdf1.format(date);
		userchecks.setUserName(name);
		userchecks.setCheckInTime(checkTime);
		userchecks.setUserId(selectuser.get(0).getId());
		List<Userchecks> selectCheckUserJinTian = userchecksDao.selectCheckUserJinTian(userchecks);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String CheckOutTime = sdf.format(date);
		String slTime=checkTime+" 18:00:00";
		try {
			long time18 = sdf.parse(slTime).getTime();
			long time2 = sdf.parse(CheckOutTime).getTime();
			if((time2-time18)>0){
				if(selectCheckUserJinTian.size()>0){
					String isCancel = request.getParameter("isCancel");
				
					userchecks.setCheckOutTime(CheckOutTime);
					userchecks.setIsCancel(isCancel);
					userchecks.setCheckInTime(selectCheckUserJinTian.get(0).getCheckInTime());
					userchecksDao.updateUserCheck(userchecks);
					i=1;
				}
			}else{
				i=3;
			}      
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
	@Override
	public Fenye<Userchecks> selectCheckUser(Fenye<Userchecks> fenye) {
		List<Userchecks> selectCheckUser = userchecksDao.selectCheckUser(fenye);
		Integer selectCheckUserCount = userchecksDao.selectCheckUserCount(fenye);
		fenye.setTotal(selectCheckUserCount);
		fenye.setRows(selectCheckUser);
		return fenye;
	}
	@Override
	public Integer updateUserCheckQC(Userchecks userchecks) {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String format = sdf.format(date);
		userchecks.setCheckOutTime(format);
		return userchecksDao.updateUserCheckQC(userchecks);
	}
	@Override
	public Integer updateuserCheckQianchuS(List<Integer> list) {
		// TODO Auto-generated method stub
		List<Userchecks> ulist=new ArrayList<Userchecks>();
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String format = sdf.format(date);
		Integer k=0;
		for(int i=0;i<list.size();i++){
			Userchecks userchecks = new Userchecks();
			Integer id = list.get(i);
			userchecks.setId(id);
			userchecks.setCheckOutTime(format);
			userchecks.setIsCancel("已签出");
			ulist.add(userchecks);
			k=userchecksDao.updateUserCheckQianChuS(userchecks);
		}
		return k;
	}
	@Override
	public Integer selectJTCheckCount() {
		// TODO Auto-generated method stub
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String format = sdf.format(date);
		Integer us=userchecksDao.selectJT(format);
		return us;
	}

}
