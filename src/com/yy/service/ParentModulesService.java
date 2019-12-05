package com.yy.service;

import java.util.List;

import com.yy.entity.Modules;
import com.yy.entity.ParentModules;

public interface ParentModulesService {
	/**
	 * ��ѯ����
	 * @param pId
	 * @return
	 */
List<ParentModules> selectByparentId(List<Integer> list);

/**
 * ��ѯ���и���
 * @return
 */
List<ParentModules> selectParentModulesAll();
/**
 * ��Ӹ�ģ��
 * 
 * @param parentModules
 * @return
 */
Integer addParentModules(ParentModules parentModules);
/**
 * ����idɾ�����ڵ�
 * 
 * @param id
 * @return
 */
Integer deleteParentModules(Integer id);
}
