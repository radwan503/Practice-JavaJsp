package com.practice.companyprofile.dao;

import com.practice.companyprofile.model.AboutDomain;
import com.practice.companyprofile.model.PortfolioDomain;
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
public class PortfolioDAO {
    JdbcTemplate template;

    @Autowired
    public void setDataSource(DataSource dataSource){
        template= new JdbcTemplate(dataSource);
    }

    public void addPortfolioContent(PortfolioDomain portfolioDomain){

        String sql ="INSERT INTO portfolio_content(portfolioSectionTitle,portfolioMenu,portfolioProductTag) VALUES ('"+portfolioDomain.getPortfolioSectionTitle()+"','"+portfolioDomain.getPortfolioMenu()+"','"+portfolioDomain.getPortfolioProductTag()+"')";
        template.update(sql);

    }

    public List<PortfolioDomain> getPortfolio(){

        String SQL = "Select * from portfolio_content";

        List<PortfolioDomain> portfolio = template.query(SQL, new ResultSetExtractor<List<PortfolioDomain>>() {
            @Override
            public List<PortfolioDomain> extractData(ResultSet resultSet) throws SQLException, DataAccessException {

                List<PortfolioDomain> portfolioData = new ArrayList<PortfolioDomain>();

                while (resultSet.next()){
                    PortfolioDomain e = new PortfolioDomain();
                    e.setId(resultSet.getInt("Id"));
                    e.setPortfolioSectionTitle(resultSet.getString("portfolioSectionTitle"));
                    e.setPortfolioMenu(resultSet.getString("portfolioMenu"));
                    e.setPortfolioProductTag(resultSet.getString("portfolioProductTag"));

                    portfolioData.add(e);
                }
                return portfolioData;
            }
        });
        return portfolio;

    }

}
