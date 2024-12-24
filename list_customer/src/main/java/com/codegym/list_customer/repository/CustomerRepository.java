package com.codegym.list_customer.repository;

import com.codegym.list_customer.entity.Customer;

import java.util.ArrayList;
import java.util.List;

public class CustomerRepository {

    private static List<Customer> customers = new ArrayList<>();

    static {
        customers.add(new Customer(1, "Mai Văn Hoàn", "1983-08-20", "Hà Nội", "/img/avatar.png"));
        customers.add(new Customer(2, "Nguyễn Văn Nam", "1983-08-21", "Bắc Giang", "/img/avatar2.png"));
        customers.add(new Customer(3, "Nguyễn Thái Hòa", "1983-08-20", "Nam Định", "/img/avatar3.png"));
        customers.add(new Customer(4, "Trần Đăng Khoa", "1983-08-17", "Hà Tây", "/img/avatar.png"));
        customers.add(new Customer(5, "Nguyễn Đình Thi", "1983-08-19", "Hà Nội", "/img/avatar3.png"));
    }


    public List<Customer> getAll() {
        return customers;
    }
}
