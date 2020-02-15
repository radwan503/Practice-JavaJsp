package com.practice.companyprofile.model;

/**
 * Created by RadwanAnik on 2/15/2020.
 */
public class ContactDomain {
    private int id;
    private String contactSectionTitle;
    private String aboutCompany;
    private String companyEmail;
    private String contactNumber;
    private String contactLocation;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContactSectionTitle() {
        return contactSectionTitle;
    }

    public void setContactSectionTitle(String contactSectionTitle) {
        this.contactSectionTitle = contactSectionTitle;
    }

    public String getAboutCompany() {
        return aboutCompany;
    }

    public void setAboutCompany(String aboutCompany) {
        this.aboutCompany = aboutCompany;
    }

    public String getCompanyEmail() {
        return companyEmail;
    }

    public void setCompanyEmail(String companyEmail) {
        this.companyEmail = companyEmail;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    public String getContactLocation() {
        return contactLocation;
    }

    public void setContactLocation(String contactLocation) {
        this.contactLocation = contactLocation;
    }
}
