package com.object.myhealthy.dao;



import com.object.myhealthy.entity.User;


/**
 * @author :hly
 * @date :2018/6/21
 */
public interface UserDao {
    public User findUser(String username);
}
