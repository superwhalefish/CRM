package com.yy.service;

import java.util.List;

import com.yy.entity.Fenye;
import com.yy.entity.Roles;

public interface RolesService {
	/**
	 * ��ѯ�û���ɫ
	 * @param list
	 * @return
	 */
	List<Roles> selectRoles(List<Integer> list);
	
	Fenye<Roles> selectAllRoles(Fenye<Roles> fenye);
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
	
	List<Roles> selectrolebyid(Integer id);
	
}
