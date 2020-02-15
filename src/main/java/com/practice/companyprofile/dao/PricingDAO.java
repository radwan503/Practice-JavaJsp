package com.practice.companyprofile.dao;

import com.practice.companyprofile.model.PricingDomain;
import com.practice.companyprofile.model.TeamDomain;
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
public class PricingDAO {

    JdbcTemplate template;

    @Autowired
    public void setDataSource(DataSource dataSource){
        template= new JdbcTemplate(dataSource);
    }

    public void addPricingContent(PricingDomain pricingDomain){

        String sql ="INSERT INTO pricing_content(pricingSectionTitle,price,subscriptionType,subscriptionDetailsOne,subscriptionDetailsTwo,subscriptionDetailsThree,subscriptionDetailsFour) " +
                "VALUES ('"+pricingDomain.getPricingSectionTitle()+"','"+pricingDomain.getPrice()+"','"+pricingDomain.getSubscriptionType()+"','"+pricingDomain.getSubscriptionDetailsOne()+"','"+pricingDomain.getSubscriptionDetailsTwo()+"','"+pricingDomain.getSubscriptionDetailsThree()+"','"+pricingDomain.getSubscriptionDetailsFour()+"')";

        template.update(sql);

    }

    public List<PricingDomain> getPricing(){

        String SQL = "Select * from pricing_content";

        List<PricingDomain> pricing = template.query(SQL, new ResultSetExtractor<List<PricingDomain>>() {
            @Override
            public List<PricingDomain> extractData(ResultSet resultSet) throws SQLException, DataAccessException {

                List<PricingDomain> pricingData = new ArrayList<PricingDomain>();

                while (resultSet.next()){
                    PricingDomain e = new PricingDomain();
                    e.setId(resultSet.getInt("Id"));
                    e.setPricingSectionTitle(resultSet.getString("pricingSectionTitle"));
                    e.setPrice(resultSet.getString("price"));
                    e.setSubscriptionType(resultSet.getString("subscriptionType"));
                    e.setSubscriptionDetailsOne(resultSet.getString("subscriptionDetailsOne"));
                    e.setSubscriptionDetailsTwo(resultSet.getString("subscriptionDetailsTwo"));
                    e.setSubscriptionDetailsThree(resultSet.getString("subscriptionDetailsThree"));
                    e.setSubscriptionDetailsFour(resultSet.getString("subscriptionDetailsFour"));

                    pricingData.add(e);
                }
                return pricingData;
            }
        });
        return pricing;

    }
}
