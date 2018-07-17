package com.object.myhealthy.service.serviceImpl;


import com.object.myhealthy.dao.UserDao;
import com.object.myhealthy.entity.User;
import com.object.myhealthy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author :hly
 * @date :2018/6/21
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
   public UserDao userDao;

    @Override
    public User findUser(String username) {
        return userDao.findUser(username);
    }
}
