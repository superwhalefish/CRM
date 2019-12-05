package com.yy.dao;

import java.util.List;

import com.yy.entity.Modules;
import com.yy.entity.ParentModules;

public interface ParentModulesDao {
	/**
	 * ��ѯ����
	 * @param list
	 * @return
	 */

List<ParentModules> selectByparentId(List<Integer> list);

/**
 * ��ѯ���и���
 * @return
 */
List<ParentModules> selectParentModules();

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
/**
 * �������Ʋ�ѯģ���Ƿ����
 * @param text
 * @return
 */
List<ParentModules> selectByName(String text);
}
