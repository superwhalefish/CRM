package com.yy.dao;

import java.util.List;

import com.yy.entity.Askers;
import com.yy.entity.Fenye;

public interface AskersDao {
	/**
	 * 分页查询所有用户信息
	 * 
	 * @param fenye
	 * @return
	 */
	List<Askers> selectAllAskers(Fenye<Askers> fenye);

	/**
	 * 分页多条件查询
	 * 
	 * @param fenye
	 * @return
	 */
	Integer selectCountAskers(Fenye<Askers> fenye);
	/**
	 * 添加分量表员工信息
	 * @param askers
	 * @return
	 */
	Integer addAskersUsername(Askers askers);
	/**
	 * 修改员工分量的信息
	 * 
	 * @param askers
	 * @return
	 */
	Integer updateWeights(Askers askers);
	/**
	 * 查询员工
	 * @param fenye
	 * @return
	 */
	List<Askers> selectEmpName(Fenye fenye);
	/**
	 * 查询员工总数
	 * @param fenye
	 * @return
	 */
	Integer selectEmpNameCount(Fenye fenye);
/**
 * 查询今天签到员工
 * @param format
 * @return
 */
	List<Askers> selectJinTian(String format);
}
