package com.yy.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.yy.entity.Fenye;
import com.yy.entity.Netfollows;
import com.yy.entity.Student;

public interface StudentService {
	Fenye<Student> selectFenyeStu(Fenye<Student> fenye);
	
	Integer updateStu(HttpServletRequest request,Student student);
	
	Integer delStu(Integer id);
	
	Integer addStu(Student student);
	
	/**
	 * 多条件查询
	 * @param fenye
	 * @return
	 */
Fenye<Student> selectOnlineStu(HttpServletRequest request,Fenye<Student> fenye);
/**
 * 查询我的学生
 * @param request
 * @param fenye
 * @return
 */
	Fenye<Student> selectMyStu(HttpServletRequest request, Fenye<Student> fenye);
/**
 * 查询所有未分配学生
 * @param student
 * @return
 */
Fenye selectStuAll(Fenye fenye);
/**
 * 分配资源
 * @param student
 * @return
 */
Integer updateStuByNet(HttpServletRequest request,Student student);
/**
 * 添加跟踪信息
 * @param request
 * @param student
 * @param content
 * @return
 */

Integer addNetfollows(HttpServletRequest request, Netfollows netfollows);
/**
 * 失效学生
 * @param student
 * @return
 */
Integer updateSetByidToVailAndBet(Student student);
/**
 * 批量分配学生
 * @param request
 * @param list
 * @return
 */
Integer updateStuByNetS(HttpServletRequest request, List<Integer> list,Integer netPusherId);



}
