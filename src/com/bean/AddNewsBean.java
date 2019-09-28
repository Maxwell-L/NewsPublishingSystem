package com.bean;

import com.common.DbHandle;
import com.vo.News;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AddNewsBean {
    public boolean addNews(News news){
        DbHandle db = new DbHandle();
        String sql = "insert into news(title, content, userid, pubtime) values('" + news.getTitle()
                + "','" + news.getContent() + "','" + news.getUserid() + "','" +
                news.getPubtime() + "')";
        int ret = db.executeUpdate(sql);
        db.close();
        return ret > 0;
    }
}

