package com.roncoo.education.user.service.test;

import com.alibaba.druid.filter.config.ConfigTools;

public class DruidUtil {

    public static void main(String[] args) throws Exception {
        String password = "12345678";
        System.out.println(ConfigTools.encrypt(password));
    }

}
