package com.practice.companyprofile.dao;

import com.practice.companyprofile.model.CounterDomain;
import com.practice.companyprofile.model.PricingDomain;
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
public class CounterDAO {


    JdbcTemplate template;

    @Autowired
    public void setDataSource(DataSource dataSource){
        template= new JdbcTemplate(dataSource);
    }

    public void addCounterContent(CounterDomain counterDomain){

        String sql ="INSERT INTO counter_content(counterSectionTitle,counterNumber,counterDetails) " +
                "VALUES ('"+counterDomain.getCounterSectionTitle()+"','"+counterDomain.getCounterNumber()+"','"+counterDomain.getCounterDetails()+"')";

        template.update(sql);

    }


    public List<CounterDomain> getCounter(){

        String SQL = "Select * from counter_content";

        List<CounterDomain> counter = template.query(SQL, new ResultSetExtractor<List<CounterDomain>>() {
            @Override
            public List<CounterDomain> extractData(ResultSet resultSet) throws SQLException, DataAccessException {

                List<CounterDomain> counterData = new ArrayList<CounterDomain>();

                while (resultSet.next()){
                    CounterDomain e = new CounterDomain();
                    e.setId(resultSet.getInt("Id"));
                    e.setCounterSectionTitle(resultSet.getString("counterSectionTitle"));
                    e.setCounterNumber(resultSet.getString("counterNumber"));
                    e.setCounterDetails(resultSet.getString("counterDetails"));


                    counterData.add(e);
                }
                return counterData;
            }
        });
        return counter;

    }

}
