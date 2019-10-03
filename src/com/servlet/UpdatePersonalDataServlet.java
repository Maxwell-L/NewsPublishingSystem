package com.servlet;

import com.bean.UpdatePersonalDataBean;
import com.vo.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class UpdatePersonalDataServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        //request.setCharacterEncoding("UTF-8");
        try{
            User user = (User)request.getSession().getAttribute("user");

            String username = request.getParameter("username");
            String password = user.getPassword();
            String type = user.getType();
            String sex = request.getParameter("sex");
            String profession = request.getParameter("profession");
            String[] temp = request.getParameterValues("favourite");
            String favourite = "";
            if(temp != null){
                for(int i = 0; i < temp.length; i++){
                    if(i == 0){
                        favourite = temp[0];
                    } else {
                        favourite += "," + temp[i];
                    }
                }
            }
            String note = request.getParameter("note");

            User newUser = new User();
            newUser.setId(user.getId());
            newUser.setUsername(username);
            newUser.setType(type);
            newUser.setSex(sex);
            newUser.setPassword(password);
            newUser.setProfession(profession);
            newUser.setFavourite(favourite);
            newUser.setNote(note);

            UpdatePersonalDataBean updatePersonalData = new UpdatePersonalDataBean();
            boolean flag = updatePersonalData.checkRepeatUsername(newUser);
            List<String> errorList = new ArrayList<>();
            if(!flag){
                errorList.add("此用户名已被注册！");
            }
            if(username == null || username.equals("")){
                errorList.add("用户名不能为空");
            }
            if(!errorList.isEmpty()){
                request.setAttribute("errorList", errorList);
                request.getRequestDispatcher("homeError.jsp").forward(request, response);
            } else {
                updatePersonalData.updatePersonalData(newUser);
                request.getSession().removeAttribute("user");
                request.getSession().setAttribute("user", newUser);
                request.getRequestDispatcher("personalData.jsp").forward(request, response);
            }
        } catch (Exception e){
            e.printStackTrace();
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

    }
}
