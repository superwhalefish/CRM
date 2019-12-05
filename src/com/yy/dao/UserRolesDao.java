package com.yy.dao;

import java.util.List;

import com.yy.entity.UserRoles;

public interface UserRolesDao {
	/**
	 * �����û�id��ѯ������ɫ
	 * @param id
	 * @return
	 */
List<UserRoles> selectUserRoles(Integer id);

/**
 * ���ݽ�ɫ��ѯ�û�
 * @param userRoles
 * @return
 */
List<UserRoles> selectByRolesId(List<Integer> list);

List<UserRoles> selectURByRidAndUid(UserRoles userRoles);
/**
 * ����rolesId��userId
 * @param id
 * @return
 */

List<UserRoles> selectUserRolesByRolesId(Integer id);
/**
 * ��ӽ�ɫȨ��
 * @param roles
 * @return
 */
Integer addUserRole(UserRoles roles);
/**
 * ɾ����ɫȨ��
 * @param roles
 * @return
 */
Integer delUserRole(UserRoles roles);

}
