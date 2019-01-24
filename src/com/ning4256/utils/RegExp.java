package com.ning4256.utils;

import java.util.regex.Pattern;

public class RegExp {
    //用户名的正则匹配

    private final static String REGEX_USERNAME = "^[a-zA-Z]\\w{5,20}$";
 
    // 密码的正则匹配

    private final static String REGEX_PASSWORD = "^[a-zA-Z0-9]{6,20}$";
 
    // 手机号的正则匹配

    private final static String REGEX_MOBILE = "^((17[0-9])|(14[0-9])|(13[0-9])|(15[^4,\\D])|(18[0-9]))\\d{8}$";
    
    //	验证是否为用户名
    public static boolean isUsername(String username) {
        return Pattern.matches(REGEX_USERNAME, username);
    }
 
    /**
     * 
     * 
     * @param password
     * @return password?true:false;
     */
    public static boolean isPassword(String password) {
        return Pattern.matches(REGEX_PASSWORD, password);
    }
 
    /**
     * 
     * 
     * @param mobile
     * @return mobile?true:false;
     */
    public static boolean isMobile(String mobile) {
        return Pattern.matches(REGEX_MOBILE, mobile);
    }
 
}
