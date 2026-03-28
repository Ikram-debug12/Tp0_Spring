package com.example.controller;

import com.example.dao.ProductDAO;
import com.example.model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;

@WebServlet("/create-product")
public class ProductCreateServlet extends HttpServlet {
    private ProductDAO productDAO;

    public void init() {
        productDAO = new ProductDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        BigDecimal price = new BigDecimal(request.getParameter("price"));
        Integer stockQuantity = Integer.parseInt(request.getParameter("stockQuantity"));
        String sku = request.getParameter("sku");

        Product newProduct = new Product(name, description, price, stockQuantity, sku);
        productDAO.save(newProduct);

        response.sendRedirect("products");
    }
}