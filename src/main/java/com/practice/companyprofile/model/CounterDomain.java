package com.practice.companyprofile.model;

/**
 * Created by RadwanAnik on 2/15/2020.
 */
public class CounterDomain {

    private int id;
    private String counterSectionTitle;
    private String counterNumber;
    private String counterDetails;

    public String getCounterSectionTitle() {
        return counterSectionTitle;
    }

    public void setCounterSectionTitle(String counterSectionTitle) {
        this.counterSectionTitle = counterSectionTitle;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCounterNumber() {
        return counterNumber;
    }

    public void setCounterNumber(String counterNumber) {
        this.counterNumber = counterNumber;
    }

    public String getCounterDetails() {
        return counterDetails;
    }

    public void setCounterDetails(String counterDetails) {
        this.counterDetails = counterDetails;
    }
}
