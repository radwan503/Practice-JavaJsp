package com.practice.companyprofile.dao;

import com.practice.companyprofile.model.MessageUser;
import com.practice.companyprofile.model.SliderDomain;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Service;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


/**
 * Created by RadwanAnik on 1/11/2020.
 */
@Service
public class MessageDAO {

    JdbcTemplate template;

    @Autowired
    public void setDataSource(DataSource dataSource){
        template= new JdbcTemplate(dataSource);
    }

    public void save(MessageUser p){

        String sql ="insert into message_user(firstName,lastName,email,message) values ('"+p.getFirstName()+"','"+p.getLastName()+"','"+p.getEmail()+"','"+p.getMessage()+"')";
        template.update(sql);

    }

    public List<MessageUser> getAllUser(){
        return template.query("select * from message_user", new ResultSetExtractor<List<MessageUser>>() {
            @Override
            public List<MessageUser> extractData(ResultSet resultSet) throws SQLException, DataAccessException {
                List<MessageUser> list = new ArrayList<MessageUser>();
                while (resultSet.next()){
                    MessageUser e = new MessageUser();
                    e.setId(resultSet.getInt(1));
                    e.setFirstName(resultSet.getString(2));
                    e.setLastName(resultSet.getString(3));
                    e.setEmail(resultSet.getString(4));
                    e.setMessage(resultSet.getString(5));

                    list.add(e);
                }
                return list;
            }

        });
    }

    public MessageUser getUserById(int id){
        return template.query("select * from message_user where Id="+id, new ResultSetExtractor <MessageUser>() {
            @Override
            public MessageUser extractData(ResultSet resultSet) throws SQLException, DataAccessException {
                MessageUser e = new MessageUser();
                while (resultSet.next()){
                    e.setId(resultSet.getInt(1));
                    e.setFirstName(resultSet.getString(2));
                    e.setLastName(resultSet.getString(3));
                    e.setEmail(resultSet.getString(4));
                    e.setMessage(resultSet.getString(5));
                }
                return e;
            }

        });
    }

    public void update(MessageUser p){
        String sql = "update message_user set firstName='"+p.getFirstName()+"',lastName='"+p.getLastName()+"',email='"+p.getEmail()+"',message='"+p.getMessage()+"' WHERE ID="+p.getId()+"";
        template.update(sql);
    }

    public void delete(int id){
        String sql = "delete from message_user where ID="+id+"";
        template.update(sql);
    }







}
