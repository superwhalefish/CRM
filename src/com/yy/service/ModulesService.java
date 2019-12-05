package com.yy.service;

import java.util.List;

import com.yy.entity.Modules;
import com.yy.entity.TreeParent;

public interface ModulesService {
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
 * ��ѯ����ģ��
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
 * ����rid��ѯ����ģ��
 * @param id
 * @return
 */
List<Integer> selectModuleByRid(Integer id);
}
