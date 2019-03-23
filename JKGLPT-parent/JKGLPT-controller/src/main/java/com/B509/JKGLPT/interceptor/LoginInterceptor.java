package com.B509.JKGLPT.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.B509.JKGLPT.constant.SessionContants;
import com.B509.JKGLPT.pojo.User;

public class LoginInterceptor implements HandlerInterceptor {

    // 日志
    private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

    /**
     * 3、渲染后
     */
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object obj, Exception e)
            throws Exception {
    }

    /**
     * 2、方法后
     */
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object obj, ModelAndView e)
            throws Exception {
    }

    /**
     * 1、方法前 返回true放行
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object obj) throws Exception {
        User user = (User) request.getSession().getAttribute(SessionContants.SESSION_USER);
        if (null == user) {
            request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
            logger.info("未登录去登录页面。。。");
            return false;
        }
        return true;
    }

}
