package com.object.myhealthy.service;

import com.object.myhealthy.entity.User;
import org.springframework.stereotype.Service;

/**
 * @author :hly
 * @date :2018/6/21
 */

public interface UserService {
    public User findUser(String username);
}
