package com.yy.service;

import java.util.List;

import com.yy.entity.Fenye;
import com.yy.entity.Users;

public interface UsersService {
	/**
	 * �������ֲ�ѯ(��½)
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
	Fenye<Users> selectAllUsers(Fenye<Users> fenye);

	/**
	 * ������û�
	 * 
	 * @param users
	 * @return
	 */
	Integer addUsers(Users users);

	/**
	 * �����û�idɾ���û���Ϣ
	 * 
	 * @param id
	 * @return
	 */
	Integer deleteUsers(Integer id);
	/**
	 * �޸��û���Ϣ
	 * 
	 * @param users
	 * @return
	 */
	Integer updateUsers(Users users);
	/**
	 * �����������û���Ϣ
	 */
	Integer updateYonghujiesoByisLockout(Users users);
	/**
	 *  �û���Ϣ�����ܴa
	 */
	  Integer updateResetpas(Users users);
	/**
	 * ͨ��roleId��user
	 * @return
	 */
	Fenye<Users> selectUserByRolesId(Fenye<Users> fenye,Integer rolesId);
	/**
	 * ��ѯ����Ա��
	 * @return
	 */
	Fenye selectAllEmp();
}
