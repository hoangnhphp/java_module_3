package com.codegym.list_customer.service;

import com.codegym.list_customer.entity.Customer;
import com.codegym.list_customer.repository.CustomerRepository;

import java.util.List;

public class CustomerService {
    private CustomerRepository customerRepository = new CustomerRepository();

    public List<Customer> getAll() {
        return customerRepository.getAll();
    }
}
