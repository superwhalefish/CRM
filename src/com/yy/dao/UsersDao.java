package com.yy.dao;

import java.util.List;

import com.yy.entity.Fenye;
import com.yy.entity.Users;

public interface UsersDao {
	/**
	 * �������Ʋ�ѯ�û��Ƿ����(��½)
	 * 
	 * @param u
	 * @return
	 */
	List<Users> selectByname(Users u);
	/**
	 * �����û���½��Ϣ
	 * @param u
	 * @return
	 */
	Integer updateUserLoginInfo(Users u);
	/**
	 * ��ҳ��ѯ�����û���Ϣ
	 * 
	 * @param fenye
	 * @return
	 */
	List<Users> selectAllUsers(Fenye<Users> fenye);

	/**
	 * ��ҳ��������ѯ
	 * 
	 * @param fenye
	 * @return
	 */
	Integer selectCountUsers(Fenye<Users> fenye);

	/**
	 * ������û�
	 * 
	 * @param users
	 * @return
	 */
	Integer addUsers(Users users);

	/**
	 * �޸��û���Ϣ
	 * 
	 * @param users
	 * @return
	 */
	Integer updateUsers(Users users);

	/**
	 * �����û�idɾ���û���Ϣ
	 * 
	 * @param id
	 * @return
	 */
	Integer deleteUsers(Integer id);
	/**
	 * �����������û���Ϣ
	 */
	Integer updateYonghujiesoByisLockout(Users users);
	/**
	 * ��������
	 * @param users
	 * @return
	 */
	Integer updateResetpas(Users users);
	/**
	 * ��ѯ����Ա��
	 * @return
	 */
	List<Users> selectAllEmp(List<Integer> list);
	/**
	 * ��ѯԱ������
	 * @return
	 */
	Integer selectAllCount();
}
