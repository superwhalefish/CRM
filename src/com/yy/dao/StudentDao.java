package com.yy.dao;

import java.util.List;

import com.yy.entity.Fenye;
import com.yy.entity.Student;

public interface StudentDao {
    List<Student> selectAll(Fenye<Student> fenye);
	
	Integer selectCount(Fenye<Student> fenye);
	//����ѧ��
	Integer updateStuS(Student student);
	//�޸�ѧ����Ϣ
	Integer updateStu(Student student);
	
	Integer addStu(Student student);
	/**
	 * ɾ��ѧ��
	 * @param id
	 * @return
	 */
	Integer delStu(Integer id);
	
	/**
	 * ��������ѯ
	 * @param fenye
	 * @return
	 */
List<Student> selectOnlineStu(Fenye<Student> fenye);
	/**
	 * ��ѯ������
	 * @param fenye
	 * @return
	 */
Integer CountOnlineStu(Fenye<Student> fenye);
/**
 * ��ѯ�ҵ�ѧ��������
 * @param fenye
 * @return
 */
	Integer CountMyStu(Fenye<Student> fenye);
/**
 * ��ѯ�ҵ�ѧ��
 * @param fenye
 * @return
 */
	List<Student> selectMyStu(Fenye<Student> fenye);
/**
 * ��ԃ����δ����W�����ѷ���ѧ��
 * @param fenye 
 * @return
 */
List<Student> selectStuAll(Fenye fenye);
/**
 * ��ѯ����ѧ��
 * @param netPusherId
 * @return
 */
List<Student> selectMyStuBynetPusherId(Integer netPusherId);
/**
 * ��ѯѧ���Ƿ����
 * @param id
 * @return
 */
Student selectBySId(Integer id);
/**
 * �����Ը�ѧ���Ĺ���
 * @param student
 * @return
 */
Integer updateSetByidToVailAndBet(Student student);
/**
 * ��ѯָ������δ�����ѧ��
 * @param shuliang
 * @return
 */
List<Student> selectStuWei(Integer shuliang);
}
