package com.practice.companyprofile.dao;

import com.practice.companyprofile.model.AboutDomain;
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
public class TeamDAO {
    JdbcTemplate template;

    @Autowired
    public void setDataSource(DataSource dataSource){
        template= new JdbcTemplate(dataSource);
    }

    public void addTeamContent(TeamDomain teamDomain){

        String sql ="INSERT INTO team_content(teamSectionTitle) VALUES ('"+teamDomain.getTeamSectionTitle()+"')";

        template.update(sql);

    }

    public List<TeamDomain> getTeam(){

        String SQL = "Select * from team_content";

        List<TeamDomain> team = template.query(SQL, new ResultSetExtractor<List<TeamDomain>>() {
            @Override
            public List<TeamDomain> extractData(ResultSet resultSet) throws SQLException, DataAccessException {

                List<TeamDomain> teamData = new ArrayList<TeamDomain>();

                while (resultSet.next()){
                    TeamDomain e = new TeamDomain();
                    e.setId(resultSet.getInt("Id"));
                    e.setTeamSectionTitle(resultSet.getString("teamSectionTitle"));

                    teamData.add(e);
                }
                return teamData;
            }
        });
        return team;

    }


}
