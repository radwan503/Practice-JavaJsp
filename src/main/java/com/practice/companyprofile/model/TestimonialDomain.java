package com.practice.companyprofile.model;

/**
 * Created by RadwanAnik on 2/14/2020.
 */
public class TestimonialDomain {

    private int id;
    private String testimonialSectionTitle;
    private String testimonialDetails;
    private String testimonialUserName;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTestimonialSectionTitle() {
        return testimonialSectionTitle;
    }

    public void setTestimonialSectionTitle(String testimonialSectionTitle) {
        this.testimonialSectionTitle = testimonialSectionTitle;
    }

    public String getTestimonialDetails() {
        return testimonialDetails;
    }

    public void setTestimonialDetails(String testimonialDetails) {
        this.testimonialDetails = testimonialDetails;
    }

    public String getTestimonialUserName() {
        return testimonialUserName;
    }

    public void setTestimonialUserName(String testimonialUserName) {
        this.testimonialUserName = testimonialUserName;
    }
}
