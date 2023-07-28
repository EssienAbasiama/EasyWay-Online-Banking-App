package com.abasi_online_easy_way_bank.interceptors;

import com.abasi_online_easy_way_bank.models.User;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Component
public class AppInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception{
        System.out.println("In Pre Handle Interceptor Method");
//        ToDo: Check Request URI:
        if(request.getRequestURI().startsWith("/app")) {
            System.out.println("Hello");
//            Get Session
            HttpSession session = request.getSession();
//            Get Token Stored in Session
            String token = (String)session.getAttribute("token");
            System.out.println(token);
            User user = (User)session.getAttribute("user");
//            ToDo Check if Authenticated;
//            boolean isAuthenticated = (boolean) session.getAttribute("authenticated");
//            ToDo: Validate Session Attribute / Objects
            if(token == null || user == null){
                response.sendRedirect("/login");
                return false;
            }
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request,
                           HttpServletResponse response,
                           Object handler,
                           ModelAndView modelAndView) {
        System.out.println("In Post Handle Interceptor Method");

    }
    @Override
    public void afterCompletion(HttpServletRequest request,
                                HttpServletResponse response,
                                Object handler,
                                Exception ex) throws Exception{
        System.out.println("In After Completion Interceptoor Method");
    }
}
