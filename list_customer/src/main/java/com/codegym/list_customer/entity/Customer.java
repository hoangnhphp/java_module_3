package com.codegym.list_customer.entity;

import java.util.Objects;

public class Customer {
    private int id;
    private String name;
    private String dob;
    private String address;
    private String avatar;

    public Customer() {}

    public Customer(int id, String name, String dob, String address, String avatar) {
        this.id = id;
        this.name = name;
        this.dob = dob;
        this.address = address;
        this.avatar = avatar;
    }

    public Customer(String name, String dob, String address, String avatar) {
        this.name = name;
        this.dob = dob;
        this.address = address;
        this.avatar = avatar;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Customer customer = (Customer) o;
        return id == customer.id && Objects.equals(name, customer.name) && Objects.equals(dob, customer.dob) && Objects.equals(address, customer.address) && Objects.equals(avatar, customer.avatar);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(id);
    }
}
