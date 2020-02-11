package com.practice.companyprofile.dao;

import com.practice.companyprofile.model.AboutDomain;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import javax.sql.DataSource;

/**
 * Created by RadwanAnik on 2/7/2020.
 */
@Service
public class AboutDAO {

    JdbcTemplate template;

    @Autowired
    public void setDataSource(DataSource dataSource){
        template= new JdbcTemplate(dataSource);
    }

    public void addAboutContent(AboutDomain aboutDomain){

        String sql ="INSERT INTO about_content(subTitle,imgTitle) VALUES ('"+aboutDomain.getSubTitle()+"','"+aboutDomain.getImgTitle()+"')";

        template.update(sql);

    }




}
