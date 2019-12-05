package com.yy.dao;

import java.util.List;

import com.yy.entity.Fenye;
import com.yy.entity.Student;

public interface StudentDao {
    List<Student> selectAll(Fenye<Student> fenye);
	
	Integer selectCount(Fenye<Student> fenye);
	//分配学生
	Integer updateStuS(Student student);
	//修改学生信息
	Integer updateStu(Student student);
	
	Integer addStu(Student student);
	/**
	 * 删除学生
	 * @param id
	 * @return
	 */
	Integer delStu(Integer id);
	
	/**
	 * 多条件查询
	 * @param fenye
	 * @return
	 */
List<Student> selectOnlineStu(Fenye<Student> fenye);
	/**
	 * 查询总条数
	 * @param fenye
	 * @return
	 */
Integer CountOnlineStu(Fenye<Student> fenye);
/**
 * 查询我的学生总条数
 * @param fenye
 * @return
 */
	Integer CountMyStu(Fenye<Student> fenye);
/**
 * 查询我的学生
 * @param fenye
 * @return
 */
	List<Student> selectMyStu(Fenye<Student> fenye);
/**
 * 查詢所有未分配學生和已分配学生
 * @param fenye 
 * @return
 */
List<Student> selectStuAll(Fenye fenye);
/**
 * 查询管理学生
 * @param netPusherId
 * @return
 */
List<Student> selectMyStuBynetPusherId(Integer netPusherId);
/**
 * 查询学生是否分配
 * @param id
 * @return
 */
Student selectBySId(Integer id);
/**
 * 放弃对该学生的管理
 * @param student
 * @return
 */
Integer updateSetByidToVailAndBet(Student student);
/**
 * 查询指定数量未分配的学生
 * @param shuliang
 * @return
 */
List<Student> selectStuWei(Integer shuliang);
}
