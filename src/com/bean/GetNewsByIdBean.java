package com.bean;

import com.common.DbHandle;
import com.vo.News;

import java.sql.ResultSet;
import java.sql.SQLException;

public class GetNewsByIdBean {
    public News getNewsById(int id) throws SQLException{
        DbHandle db = new DbHandle();
        String sql = "select * from news where id=" + id;

        ResultSet rs = db.executeQuery(sql);

        News news = new News();
        if(rs.next()){
            String title = rs.getString("title");
            int userid = rs.getInt("userid");
            String username = rs.getString("username");
            String pubtime = rs.getString("pubtime");
            String content = rs.getString("content");
            int id1 = rs.getInt("id");

            news.setId(id1);
            news.setTitle(title);
            news.setContent(content);
            news.setUserid(userid);
            news.setUsername(username);
            news.setPubtime(pubtime);
        }
        db.close();

        return news;
    }
}
