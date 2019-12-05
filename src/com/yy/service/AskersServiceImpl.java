package com.yy.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yy.dao.AskersDao;
import com.yy.dao.NewsTitleDao;
import com.yy.dao.StudentDao;
import com.yy.entity.Askers;
import com.yy.entity.Fenye;
import com.yy.entity.NewsTitle;
import com.yy.entity.Student;

@Service
public class AskersServiceImpl implements AskersService {
	@Autowired
	private AskersDao askersDao;
	@Autowired
	private StudentDao studentDao;
	@Autowired
	private NewsTitleDao newsTitleDao;
	@Override
	public Fenye<Askers> selectAllAskers(Fenye<Askers> fenye) {
		// TODO Auto-generated method stub
		Integer total = askersDao.selectCountAskers(fenye);
		List<Askers> selectAllAskers = askersDao.selectAllAskers(fenye);
		fenye.setTotal(total);
		fenye.setRows(selectAllAskers);
		return fenye;
	}

	@Override
	public Integer updateWeights(Askers askers) {
		// TODO Auto-generated method stub
		return askersDao.updateWeights(askers);
	}

	@Override
	public Fenye selectEmpName(Fenye<Askers> fenye) {
		// TODO Auto-generated method stub
		List<Askers> selectEmpName = askersDao.selectEmpName(fenye);
		Integer selectEmpNameCount = askersDao.selectEmpNameCount(fenye);
		fenye.setRows(selectEmpName);
		fenye.setTotal(selectEmpNameCount);
		return fenye;
	}

	@Override
	public Integer zodongFenpei(Integer shuliang) {
		// TODO Auto-generated method stub
		Integer k=0;
		List<Student> slist=studentDao.selectStuWei(shuliang);
		List<Integer> stuList=new ArrayList<Integer>();
		for(int i=0;i<slist.size();i++){
			stuList.add(slist.get(i).getId());
		}
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String format = sdf.format(date);
		List<Askers> a=askersDao.selectJinTian(format);
		List<Integer> alist=new ArrayList<Integer>();
		for(int i=0;i<a.size();i++){
			alist.add(a.get(i).getUserid());
		}
		int emp = alist.size();
		int stu = stuList.size();
		if(stu>0){
			if(emp>0){
				for(int i=0;i<stu;i++){
						Student student = new Student();
						student.setId(stuList.get(i));
						if(i<emp){
							int b=i;
							student.setNetPusherId(alist.get(b));
						}else{
							int s=(i%emp);
							if(s==0){
								int as=0;
								student.setNetPusherId(alist.get(as));
							}else{
								student.setNetPusherId(alist.get(s));
							}
						}
						Integer updateStuS = studentDao.updateStuS(student);
						if(updateStuS>0){
							SimpleDateFormat sdf1=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
							String format1 = sdf1.format(date);
							NewsTitle addNews = new NewsTitle();
							addNews.setYuanGongId(student.getNetPusherId());
							addNews.setAddTime(format1);
							addNews.setStuId(student.getId());
							newsTitleDao.addNews(addNews);
							k=1;
						}
				}
			}else{
				k=2;
			}
		}else{
			k=3;
		}
		
		
		return k;
	}
}
