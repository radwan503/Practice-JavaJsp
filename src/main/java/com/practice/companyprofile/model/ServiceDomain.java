package com.practice.companyprofile.model;

/**
 * Created by RadwanAnik on 2/14/2020.
 */
public class ServiceDomain {

    private int id;
    private String serviceSectionTitle;
    private String serviceTitle;
    private String serviceDetailsSubTitle;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getServiceSectionTitle() {
        return serviceSectionTitle;
    }

    public void setServiceSectionTitle(String serviceSectionTitle) {
        this.serviceSectionTitle = serviceSectionTitle;
    }

    public String getServiceTitle() {
        return serviceTitle;
    }

    public void setServiceTitle(String serviceTitle) {
        this.serviceTitle = serviceTitle;
    }

    public String getServiceDetailsSubTitle() {
        return serviceDetailsSubTitle;
    }

    public void setServiceDetailsSubTitle(String serviceDetailsSubTitle) {
        this.serviceDetailsSubTitle = serviceDetailsSubTitle;
    }
}
