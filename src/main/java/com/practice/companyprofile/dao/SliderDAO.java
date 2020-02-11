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
 * Created by RadwanAnik on 2/5/2020.
 */
@Service
public class SliderDAO {

    JdbcTemplate template;

    @Autowired
    public void setDataSource(DataSource dataSource){
        template= new JdbcTemplate(dataSource);
    }
    public void addSliderContent(SliderDomain sliderDomain){

        String sql ="INSERT INTO slider_content(title,subTitle) values ('"+sliderDomain.getTitle()+"','"+sliderDomain.getSubTitle()+"')";
        template.update(sql);

    }

    public List<SliderDomain> getSlider(){
        String SQL = "select * from slider_content";

        List <SliderDomain> slider= template.query(SQL, new ResultSetExtractor<List<SliderDomain>>() {

            public List<SliderDomain> extractData(ResultSet resultSet) throws SQLException, NumberFormatException ,DataAccessException {

                List<SliderDomain> list = new ArrayList<SliderDomain>();
                while (resultSet.next()){

                    SliderDomain e = new SliderDomain();
                    e.setId(resultSet.getInt("id"));
                    e.setTitle(resultSet.getString("title"));
                    e.setSubTitle(resultSet.getString("subTitle"));

                    list.add(e);
                }

                return list;
            }

        });
        return slider;
    }





}
