package com.yy.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.yy.entity.Fenye;
import com.yy.entity.Userchecks;


public interface UserchecksService {
	//���ǩ����Ϣ
	Integer addUsercheck(HttpServletRequest request);
	//��ѯǩ�����
	List<Userchecks> selectCheckUserJinTian(HttpServletRequest request);
	//���ǩ����Ϣ
	Integer updateUserCheck(HttpServletRequest request);
	//��ѯǩ�����
	Fenye<Userchecks> selectCheckUser(Fenye<Userchecks> fenye);
	//����ǿ���˳�
	Integer updateUserCheckQC(Userchecks userchecks);
	//����ǩ��
	Integer updateuserCheckQianchuS(List<Integer> list);
	//��ѯ����ǩ������
	Integer selectJTCheckCount();
}
