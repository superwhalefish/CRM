package com.yy.service;


import javax.servlet.http.HttpServletRequest;

import com.yy.entity.Fenye;
import com.yy.entity.Netfollows;

public interface NetfollowsService {
	/**
	 * ��ѯ������
	 * @param fenye
	 * @return
	 */
	Fenye<Netfollows> selectNetfollows(HttpServletRequest request,Fenye<Netfollows> fenye);
}
