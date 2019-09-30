package com.bean;

import com.common.DbHandle;
import com.vo.News;

public class UpdateNewsBean {
    public boolean updateNews(News news){
        DbHandle db = new DbHandle();
        String sql = "update news set title='" + news.getTitle() + "',content='" + news.getContent() +
                "',userid='" + news.getUserid() + "', pubtime='" + news.getPubtime() + "', username='" +
                 news.getUsername() + "' where id =" + news.getId();
        int ret = db.executeUpdate(sql);
        db.close();
        return ret > 0;
    }
}
