package com.practice.companyprofile.model;

/**
 * Created by RadwanAnik on 2/14/2020.
 */
public class PortfolioDomain {

    private int id;
    private String portfolioSectionTitle;
    private String portfolioMenu;
    private String portfolioProductTag;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPortfolioSectionTitle() {
        return portfolioSectionTitle;
    }

    public void setPortfolioSectionTitle(String portfolioSectionTitle) {
        this.portfolioSectionTitle = portfolioSectionTitle;
    }

    public String getPortfolioMenu() {
        return portfolioMenu;
    }

    public void setPortfolioMenu(String portfolioMenu) {
        this.portfolioMenu = portfolioMenu;
    }

    public String getPortfolioProductTag() {
        return portfolioProductTag;
    }

    public void setPortfolioProductTag(String portfolioProductTag) {
        this.portfolioProductTag = portfolioProductTag;
    }
}
