package com.yy.dao;

import java.util.List;

import com.yy.entity.Fenye;
import com.yy.entity.Netfollows;

public interface NetfollowsDao {
	/**
	 * ��ѯ������
	 * @param fenye
	 * @return
	 */
List<Netfollows> selectNetfollows(Fenye<Netfollows> fenye);
/**
 * ������
 * @param fenye
 * @return
 */
Integer countNetfollows(Fenye<Netfollows> fenye);
/**
 * ��Ӹ��ټ�¼
 * @param netfollows
 * @return
 */
Integer addNetfollows(Netfollows netfollows);
}
