package com.yy.service;

import com.yy.entity.Askers;
import com.yy.entity.Fenye;

public interface AskersService {
	/**
	 * ��ҳ��ѯ�����û���Ϣ
	 * 
	 * @param fenye
	 * @return
	 */
	Fenye<Askers> selectAllAskers(Fenye<Askers> fenye);

	/**
	 * �޸�Ա����������Ϣ
	 * 
	 * @param askers
	 * @return
	 */
	Integer updateWeights(Askers askers);
/**
 * ��ѯԱ��
 * @param fenye
 * @return
 */
	Fenye selectEmpName(Fenye<Askers> fenye);
/**
 * �Զ�����
 * @param shuliang
 * @return
 */
Integer zodongFenpei(Integer shuliang);
}
