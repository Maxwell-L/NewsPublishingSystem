package com.bean;

import com.common.DbHandle;
import com.vo.User;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginBean {
    public User login(String username, String password) throws SQLException{
        DbHandle db = new DbHandle();
        String sql = "select * from user where username='" + username + "' and password='" + password + "'";
        ResultSet rs = db.executeQuery(sql);

        User user = new User();
        if(rs.next()){
            int userid = rs.getInt("id");
            String username1 = rs.getString("username");
            String password1 = rs.getString("password");
            String sex = rs.getString("sex");
            String profession = rs.getString("profession");
            String favourite = rs.getString("favourite");
            String note = rs.getString("note");
            String type = rs.getString("type");

            user.setId(userid);
            user.setUsername(username1);
            user.setPassword(password1);
            user.setSex(sex);
            user.setProfession(profession);
            user.setFavourite(favourite);
            user.setNote(note);
            user.setType(type);

            db.close();
            return user;
        } else {
            db.close();
            return null;
        }
    }
}
