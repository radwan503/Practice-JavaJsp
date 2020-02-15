package com.practice.companyprofile.dao;

import com.practice.companyprofile.model.AboutDomain;
import com.practice.companyprofile.model.ServiceDomain;
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
public class ServiceDAO {

    JdbcTemplate template;

    @Autowired
    public void setDataSource(DataSource dataSource){
        template= new JdbcTemplate(dataSource);
    }

    public void addServiceContent(ServiceDomain serviceDomain){

        String sql ="INSERT INTO service_content(serviceSectionTitle,serviceTitle,serviceDetailsSubTitle) VALUES ('"+serviceDomain.getServiceSectionTitle()+"'," +
                "'"+serviceDomain.getServiceTitle()+"','"+serviceDomain.getServiceDetailsSubTitle()+"')";

        template.update(sql);

    }

    public List<ServiceDomain> getService(){

        String SQL = "Select * from service_content";

        List<ServiceDomain> service = template.query(SQL, new ResultSetExtractor<List<ServiceDomain>>() {
            @Override
            public List<ServiceDomain> extractData(ResultSet resultSet) throws SQLException, DataAccessException {

                List<ServiceDomain> serviceData = new ArrayList<ServiceDomain>();

                while (resultSet.next()){
                    ServiceDomain e = new ServiceDomain();
                    e.setId(resultSet.getInt("Id"));
                    e.setServiceSectionTitle(resultSet.getString("serviceSectionTitle"));
                    e.setServiceTitle(resultSet.getString("serviceTitle"));
                    e.setServiceDetailsSubTitle(resultSet.getString("serviceDetailsSubTitle"));

                    serviceData.add(e);
                }
                return serviceData;
            }
        });
        return service;

    }
}
