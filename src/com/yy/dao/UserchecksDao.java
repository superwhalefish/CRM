package com.yy.dao;

import java.util.List;

import com.yy.entity.Fenye;
import com.yy.entity.Userchecks;

public interface UserchecksDao {
	//���ǩ����Ϣ
	Integer addUsercheck(Userchecks userchecks);
	//��ѯ����ǩ��
	List<Userchecks> selectCheckUserJinTian(Userchecks userchecks);
	//���ǩ����Ϣ
	Integer updateUserCheck(Userchecks userchecks);
	//��ѯǩ�����
	List<Userchecks> selectCheckUser(Fenye<Userchecks> fenye);
	//��ѯǩ��������
	Integer selectCheckUserCount(Fenye<Userchecks> fenye);
	//����ǿ��ǩ��
	Integer updateUserCheckQC(Userchecks userchecks);
	//����ǩ��
	Integer updateUserCheckQianChuS(Userchecks userchecks);
	//���ݲ�ѯ�û���ѯ���ǩ��ʱ��
	String selectUsercheckByuserid(Integer id);
	//
	Integer selectJT(String format);
	
	
}
