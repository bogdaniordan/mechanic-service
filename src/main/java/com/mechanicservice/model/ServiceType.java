package com.mechanicservice.model;

public enum ServiceType {
    OIL_CHANGE("https://cdn11.bigcommerce.com/s-ycu4zkmhpl/images/stencil/830x518/uploaded_images/oil-change-101.jpg?t=1561563671"),
    ENGINE_REPAIR("https://www.indoormedia.com/wp-content/uploads/2019/10/marketing-ideas-for-auto-repair.jpg"),
    BUMPER_REPLACEMENT("https://miro.medium.com/max/1094/1*_7Pa-1dcnfDAoTscDPmRIw.png");

    public String pictureURL;

    ServiceType(String pictureURL) {
        this.pictureURL = pictureURL;
    }
}
