package com.practice.companyprofile.model;

/**
 * Created by RadwanAnik on 2/14/2020.
 */
public class PricingDomain {

    private int id;
    private String pricingSectionTitle;
    private String price;
    private String subscriptionType;
    private String subscriptionDetailsOne;
    private String subscriptionDetailsTwo;
    private String subscriptionDetailsThree;
    private String subscriptionDetailsFour;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPricingSectionTitle() {
        return pricingSectionTitle;
    }

    public void setPricingSectionTitle(String pricingSectionTitle) {
        this.pricingSectionTitle = pricingSectionTitle;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getSubscriptionType() {
        return subscriptionType;
    }

    public void setSubscriptionType(String subscriptionType) {
        this.subscriptionType = subscriptionType;
    }

    public String getSubscriptionDetailsOne() {
        return subscriptionDetailsOne;
    }

    public void setSubscriptionDetailsOne(String subscriptionDetailsOne) {
        this.subscriptionDetailsOne = subscriptionDetailsOne;
    }

    public String getSubscriptionDetailsTwo() {
        return subscriptionDetailsTwo;
    }

    public void setSubscriptionDetailsTwo(String subscriptionDetailsTwo) {
        this.subscriptionDetailsTwo = subscriptionDetailsTwo;
    }

    public String getSubscriptionDetailsThree() {
        return subscriptionDetailsThree;
    }

    public void setSubscriptionDetailsThree(String subscriptionDetailsThree) {
        this.subscriptionDetailsThree = subscriptionDetailsThree;
    }

    public String getSubscriptionDetailsFour() {
        return subscriptionDetailsFour;
    }

    public void setSubscriptionDetailsFour(String subscriptionDetailsFour) {
        this.subscriptionDetailsFour = subscriptionDetailsFour;
    }
}
