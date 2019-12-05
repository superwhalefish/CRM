package com.yy.dao;

import java.util.List;

import com.yy.entity.RoleModules;
import com.yy.entity.UserRoles;

public interface RoleModulesDao {
	/**
	 * ���ݽ�ɫ��ѯ����Ӧ�����ģ��
	 * @param roleId
	 * @return
	 */
List<RoleModules> selectRoleModules(List<Integer> list);
/**
 * ����rId��ѯ����ģ��
 * @param rId
 * @return
 */
	List<RoleModules> selectRoleModulesByRId(Integer rId);
	/**
	 * ��ӽ�ɫ����ģ��
	 * @param roleModules
	 * @return
	 */
	Integer addRoleModules(RoleModules roleModules);
	/**
	 * ɾ����ɫģ��
	 * @param haharoleModules
	 * @return
	 */
Integer delectRolModule(Integer rid);
/**
 * ��ѯģ���Ƿ�ռ��
 * @param id
 * @return
 */
	Integer selectRoleModulesByMId(Integer id);
	
}
