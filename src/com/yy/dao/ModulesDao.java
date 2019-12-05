package com.yy.dao;

import java.util.List;

import com.yy.entity.Modules;

public interface ModulesDao {
	/**
	 * ���ݽ�ɫid����������ģ��
	 * @param list
	 * @return
	 */
List<Modules> selectModules(List<Integer> list);
/**
 * ���ݸ��������ģ��
 * @param parentId
 * @return
 */
List<Modules> selectModulesByParentId(Integer parentId);

/**
 * ��ѯ��������
 * @return
 */
List<Modules> selectChildrenModules();

/**
 * ����ӽڵ�
 * 
 * @param modules
 * @return
 */
Integer addModules(Modules modules);

/**
 * ����idɾ��ģ���ӽڵ�
 * 
 * @param id
 * @return
 */
Integer deleteModules(Integer id);
/**
 * �������Ʋ�ѯ�Ƿ����
 * @param text
 * @return
 */
List<Modules> selectByname(String text);

}
