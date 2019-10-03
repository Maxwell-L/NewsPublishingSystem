package com.servlet;

import com.bean.ChangePasswordBean;
import com.sun.xml.internal.ws.policy.privateutil.PolicyUtils;
import com.vo.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ChangePasswordServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        //request.setCharacterEncoding("UTF-8");
        try{
            String password = request.getParameter("password");
            String newPassword = request.getParameter("newPassword");
            String reNewPassword = request.getParameter("reNewPassword");

            User user = (User)request.getSession().getAttribute("user");

            ChangePasswordBean changePassword = new ChangePasswordBean();
            //判断原密码是否正确

            boolean flag = changePassword.checkOldPassword(user, password);


            //错误信息列表
            List<String> errorList = new ArrayList<>();
            if(!flag){
                errorList.add("原密码错误!");
            }
            if(newPassword == null || newPassword.length() < 6 || newPassword.length() > 18){
                errorList.add("密码必须在6到18位之间!");
            }
            if(!newPassword.equals(reNewPassword)){
                errorList.add("两次密码输入不一致!");
            }

            //根据是否有错误信息进行跳转
            if(!errorList.isEmpty()){
                request.setAttribute("errorList", errorList);
                request.getRequestDispatcher("homeError.jsp").forward(request, response);
            } else { // 没有错误信息
                User newUser = new User();
                // 更换密码
                newUser.setPassword(newPassword);

                // 其它信息与原来一致
                newUser.setUsername(user.getUsername());
                newUser.setSex(user.getSex());
                newUser.setType(user.getType());
                newUser.setId(user.getId());
                newUser.setFavourite(user.getFavourite());
                newUser.setNote(user.getNote());
                newUser.setProfession(user.getProfession());

                boolean isChangeSuccessful = changePassword.changePassword(newUser);

                if(isChangeSuccessful){
                    // 更新session中用户信息
                    request.getSession().removeAttribute("user");
                    request.getSession().setAttribute("user", newUser);

                    // 返回首页
                    request.getRequestDispatcher("content.jsp").forward(request, response);
                }else{
                    System.out.println("修改密码失败");
                }
            }
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

    }
}
