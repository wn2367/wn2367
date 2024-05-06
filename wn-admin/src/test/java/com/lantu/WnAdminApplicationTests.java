package com.lantu;

import com.lantu.sys.entity.User;
import com.lantu.sys.mapper.UserMapper;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;
import java.util.List;

@SpringBootTest
class WnAdminApplicationTests {

    @Resource
    private UserMapper userMapper;

    @Test
    void textMapper() {
        List<User> users = userMapper.selectList(null);
        users.forEach(System.out::println);

    }

}
