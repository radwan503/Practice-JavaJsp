package com.practice.companyprofile.dao;

import com.practice.companyprofile.model.BlogDomain;
import com.practice.companyprofile.model.CounterDomain;
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
 * Created by RadwanAnik on 2/15/2020.
 */

@Service
public class BlogDAO {

    JdbcTemplate template;

    @Autowired
    public void setDataSource(DataSource dataSource){
        template= new JdbcTemplate(dataSource);
    }

    public void addBlogContent(BlogDomain blogDomain){

        String sql ="INSERT INTO blog_content(blogSectionTitle,blogPostTitle,blogPostDetails,blogPostTime) " +
                "VALUES ('"+blogDomain.getBlogSectionTitle()+"','"+blogDomain.getBlogPostTitle()+"','"+blogDomain.getBlogPostDetails()+"','"+blogDomain.getBlogPostTime()+"')";

        template.update(sql);

    }

    public List<BlogDomain> getCounter(){

        String SQL = "Select * from blog_content";

        List<BlogDomain> blog = template.query(SQL, new ResultSetExtractor<List<BlogDomain>>() {
            @Override
            public List<BlogDomain> extractData(ResultSet resultSet) throws SQLException, DataAccessException {

                List<BlogDomain> blogData = new ArrayList<BlogDomain>();

                while (resultSet.next()){
                    BlogDomain e = new BlogDomain();
                    e.setId(resultSet.getInt("Id"));
                    e.setBlogSectionTitle(resultSet.getString("blogSectionTitle"));
                    e.setBlogPostTitle(resultSet.getString("blogPostTitle"));
                    e.setBlogPostDetails(resultSet.getString("blogPostDetails"));
                    e.setBlogPostTime(resultSet.getString("blogPostTime"));


                    blogData.add(e);
                }
                return blogData;
            }
        });
        return blog;

    }

}
