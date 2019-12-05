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
	 * ��������ѯ
	 * @param fenye
	 * @return
	 */
Fenye<Student> selectOnlineStu(HttpServletRequest request,Fenye<Student> fenye);
/**
 * ��ѯ�ҵ�ѧ��
 * @param request
 * @param fenye
 * @return
 */
	Fenye<Student> selectMyStu(HttpServletRequest request, Fenye<Student> fenye);
/**
 * ��ѯ����δ����ѧ��
 * @param student
 * @return
 */
Fenye selectStuAll(Fenye fenye);
/**
 * ������Դ
 * @param student
 * @return
 */
Integer updateStuByNet(HttpServletRequest request,Student student);
/**
 * ��Ӹ�����Ϣ
 * @param request
 * @param student
 * @param content
 * @return
 */

Integer addNetfollows(HttpServletRequest request, Netfollows netfollows);
/**
 * ʧЧѧ��
 * @param student
 * @return
 */
Integer updateSetByidToVailAndBet(Student student);
/**
 * ��������ѧ��
 * @param request
 * @param list
 * @return
 */
Integer updateStuByNetS(HttpServletRequest request, List<Integer> list,Integer netPusherId);



}
