package com.yy.service;

import java.util.List;

import com.yy.entity.RoleModules;

public interface RoleModulesService {
	/**
	 * ���ݽ�ɫ��ѯ����Ӧ�����ģ��
	 * @param roleId
	 * @return
	 */
	List<RoleModules> selectRoleModules(List<Integer> list);
	/**
	 * ��ӽ�ɫģ��
	 * @return
	 */
	Integer addRoleModiles(String parentIds,Integer rId);
}
