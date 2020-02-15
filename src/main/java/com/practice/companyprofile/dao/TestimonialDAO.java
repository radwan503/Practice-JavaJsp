package com.practice.companyprofile.dao;

import com.practice.companyprofile.model.AboutDomain;
import com.practice.companyprofile.model.TestimonialDomain;
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
 * Created by RadwanAnik on 2/14/2020.
 */

@Service
public class TestimonialDAO {

    JdbcTemplate template;

    @Autowired
    public void setDataSource(DataSource dataSource){
        template= new JdbcTemplate(dataSource);
    }

    public void addTestimonialContent(TestimonialDomain testimonialDomain){

        String sql = "INSERT INTO testimonial_content(testimonialSectionTitle,testimonialDetails,testimonialUserName) VALUES ('"+testimonialDomain.getTestimonialSectionTitle()+"','"+testimonialDomain.getTestimonialDetails()+"','"+testimonialDomain.getTestimonialUserName()+"')";

        template.update(sql);

    }

    public List<TestimonialDomain> getTestimonial(){

        String SQL = "Select * from testimonial_content";

        List<TestimonialDomain> testimonial = template.query(SQL, new ResultSetExtractor<List<TestimonialDomain>>() {
            @Override
            public List<TestimonialDomain> extractData(ResultSet resultSet) throws SQLException, DataAccessException {

                List<TestimonialDomain> testimonialData = new ArrayList<TestimonialDomain>();

                while (resultSet.next()){
                    TestimonialDomain e = new TestimonialDomain();
                    e.setId(resultSet.getInt("Id"));
                    e.setTestimonialSectionTitle(resultSet.getString("testimonialSectionTitle"));
                    e.setTestimonialDetails(resultSet.getString("testimonialDetails"));
                    e.setTestimonialUserName(resultSet.getString("testimonialUserName"));

                    testimonialData.add(e);
                }
                return testimonialData;
            }
        });
        return testimonial;

    }

}
