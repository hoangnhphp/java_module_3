package com.codegym.product_discount_calculator;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "CalculateController", urlPatterns = "/calculate")
public class CalculateController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/calculate.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        double price = Double.parseDouble(req.getParameter("price"));
        double discount = Double.parseDouble(req.getParameter("discount"));
        String description = req.getParameter("description");

        double amount = price * discount * 0.01;
        double result = price - amount;
        req.setAttribute("price", price);
        req.setAttribute("discount", discount);
        req.setAttribute("description", description);

        req.setAttribute("result", result);
        req.setAttribute("amount", amount);

        req.getRequestDispatcher("/WEB-INF/calculate.jsp").forward(req, resp);
    }
}
