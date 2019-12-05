package com.yy.service;

import java.util.List;

import com.yy.entity.UserRoles;

public interface UserRolesService {
	/**
	 * �����û�id��ѯ������ɫ
	 * @param id
	 * @return
	 */
	List<UserRoles> selectUserRoles(Integer id);
	/**
	 * ����rolesId��ѯ�û�id
	 * @param id
	 * @return
	 */
	List<UserRoles> selectUserRolesByRolesId(Integer id);
	/**
	 * ��ӽ�ɫȨ��
	 * @param roles
	 * @return
	 */
	Integer addUserRole(UserRoles userRoles);
	/**
	 * ɾ����ɫȨ��
	 * @param roles
	 * @return
	 */
	Integer delUserRole(UserRoles userRoles);

	
}
