package com.practice.companyprofile.dao;

import com.practice.companyprofile.model.AboutDomain;
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

    public List<AboutDomain> getAbout(){

        String SQL = "Select * from about_content";

        List<AboutDomain> about = template.query(SQL, new ResultSetExtractor<List<AboutDomain>>() {
            @Override
            public List<AboutDomain> extractData(ResultSet resultSet) throws SQLException, DataAccessException {

                List<AboutDomain> aboutData = new ArrayList<AboutDomain>();

                while (resultSet.next()){
                    AboutDomain e = new AboutDomain();
                    e.setId(resultSet.getInt("Id"));
                    e.setSubTitle(resultSet.getString("subTitle"));
                    e.setImgTitle(resultSet.getString("imgTitle"));

                    aboutData.add(e);
                }
                return aboutData;
            }
        });
        return about;

    }





}
