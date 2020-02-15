package com.practice.companyprofile.dao;

import com.practice.companyprofile.model.ContactDomain;
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
public class ContactDAO {

    JdbcTemplate template;

    @Autowired
    public void setDataSource(DataSource dataSource){
        template= new JdbcTemplate(dataSource);
    }

    public void addContactContent(ContactDomain contactDomain){

        String sql ="INSERT INTO contact_content(contactSectionTitle,aboutCompany,companyEmail,contactNumber,contactLocation) " +
                "VALUES ('"+contactDomain.getContactSectionTitle()+"','"+contactDomain.getAboutCompany()+"','"+contactDomain.getCompanyEmail()+"','"+contactDomain.getContactNumber()+"','"+contactDomain.getContactLocation()+"')";

        template.update(sql);

    }


    public List<ContactDomain> getContact(){

        String SQL = "Select * from contact_content";

        List<ContactDomain> counter = template.query(SQL, new ResultSetExtractor<List<ContactDomain>>() {
            @Override
            public List<ContactDomain> extractData(ResultSet resultSet) throws SQLException, DataAccessException {

                List<ContactDomain> counterData = new ArrayList<ContactDomain>();

                while (resultSet.next()){
                    ContactDomain e = new ContactDomain();
                    e.setId(resultSet.getInt("Id"));
                    e.setContactSectionTitle(resultSet.getString("contactSectionTitle"));
                    e.setAboutCompany(resultSet.getString("aboutCompany"));
                    e.setCompanyEmail(resultSet.getString("companyEmail"));
                    e.setContactNumber(resultSet.getString("contactNumber"));
                    e.setContactLocation(resultSet.getString("contactLocation"));

                    counterData.add(e);
                }
                return counterData;
            }
        });
        return counter;

    }
}
