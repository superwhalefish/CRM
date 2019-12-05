package com.yy.dao;

import java.util.List;




import com.yy.entity.Fenye;
import com.yy.entity.Roles;

public interface RolesDao {
	/**
	 * ��ѯ�û���ɫ
	 * @param list
	 * @return
	 */
	List<Roles> selectRoles(List<Integer> list);
	/**
	 * ��ҳ��ѯ��ɫ������
	 * @param fenye
	 * @return
	 */
	Integer selectCountRoles(Fenye<Roles> fenye);
	/**
	 * ��ѯ��ɫ
	 * @param fenye
	 * @return
	 */
	List<Roles> selectAllRoles(Fenye<Roles> fenye);
	/**
	 * ��ӽ�ɫ
	 * @param roles
	 * @return
	 */
	Integer addRoles(Roles roles);
	/**
	 * �޸Ľ�ɫ
	 * @param roles
	 * @return
	 */
	Integer updateRoles(Roles roles);
	/**
	 * ɾ����ɫ
	 * @param id
	 * @return
	 */
	Integer delRoles(Integer id);
	/**
	 * ���ݽ�ɫ���ֲ�ѯ��ɫ�Ƿ����
	 * @param name
	 * @return
	 */
	List<Roles> selectByName(String name);

	
}
