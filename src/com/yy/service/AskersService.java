package com.yy.service;

import com.yy.entity.Askers;
import com.yy.entity.Fenye;

public interface AskersService {
	/**
	 * 分页查询所有用户信息
	 * 
	 * @param fenye
	 * @return
	 */
	Fenye<Askers> selectAllAskers(Fenye<Askers> fenye);

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
	Fenye selectEmpName(Fenye<Askers> fenye);
/**
 * 自动分配
 * @param shuliang
 * @return
 */
Integer zodongFenpei(Integer shuliang);
}
