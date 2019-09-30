package com.servlet;

import com.bean.DeleteNewsBean;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class DeleteNewsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.valueOf(request.getParameter("id"));
        String title = request.getParameter("title");
        String username = request.getParameter("username");
        try{
            DeleteNewsBean deleteNews = new DeleteNewsBean();
            boolean flag = deleteNews.deleteNews(id);
            if(flag){
                QueryNewsServlet queryNews = new QueryNewsServlet();
                request.setAttribute("title", title);
                request.setAttribute("username", username);
                queryNews.doPost(request, response);
            } else {
                List<String> errorList = new ArrayList<>();
                errorList.add("删除新闻失败！");
                request.setAttribute("errorList", errorList);
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
        }catch(Exception e){
            System.out.println("删除新闻失败");
            e.printStackTrace();
        }

    }
}
