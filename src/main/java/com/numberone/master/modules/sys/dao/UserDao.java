/**
 * Copyright &copy; 2012-2016 <a href="https://shop450532966.taobao.com/">NumberOne</a> All rights reserved.
 */
package com.numberone.master.modules.sys.dao;

import java.util.List;
import java.util.Map;

import com.numberone.master.common.persistence.CrudDao;
import com.numberone.master.common.persistence.annotation.MyBatisDao;
import com.numberone.master.modules.sys.entity.User;

/**
 * 用户DAO接口
 * @author numberone
 * @version 2014-05-16
 */
@MyBatisDao
public interface UserDao extends CrudDao<User> {
	
	
	
	
	/**
	 * 根据监测点名查询监测点信息
	 */
	
	List<Map<String, Object>> getMonitorInformation(String name);
	
	/**
	 * 根据id更新表格
	 */
	Integer updateGrid(Map<String, Object> map);
	/**
	 * 根据id更新状态
	 */
	Integer updateStatus(Map<String, Object> map);
	/**
	 *根据id删除grid某一行
	 */
	Integer gridDelete(Integer id);
	/**
	 * 查询电话号码列表
	 */
	List<Map<String, Object>> queryPhoneList();
	/**
	 * 根据id删除电话号码
	 */
	Integer deletePhoneNum(Integer id);
	/**
	 * 新增电话号码
	 */
	Integer insertPhoneNum(String phoneNum);
	/**
	 * 获取所有指标信息
	 */
	List<Map<String, Object>>  getAllMonitorInformation();
	
	
	/**
	 * 根据登录名称查询用户
	 * @param loginName
	 * @return
	 */
	public User getByLoginName(User user);

	/**
	 * 通过OfficeId获取用户列表，仅返回用户id和name（树查询用户时用）
	 * @param user
	 * @return
	 */
	public List<User> findUserByOfficeId(User user);
	
	/**
	 * 查询全部用户数目
	 * @return
	 */
	public long findAllCount(User user);
	
	/**
	 * 更新用户密码
	 * @param user
	 * @return
	 */
	public int updatePasswordById(User user);
	
	/**
	 * 更新登录信息，如：登录IP、登录时间
	 * @param user
	 * @return
	 */
	public int updateLoginInfo(User user);

	/**
	 * 删除用户角色关联数据
	 * @param user
	 * @return
	 */
	public int deleteUserRole(User user);
	
	/**
	 * 插入用户角色关联数据
	 * @param user
	 * @return
	 */
	public int insertUserRole(User user);
	
	/**
	 * 更新用户信息
	 * @param user
	 * @return
	 */
	public int updateUserInfo(User user);

}
