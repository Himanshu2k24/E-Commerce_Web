package com.controller;
import com.user.util.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import com.product.dao.ProductDAO;
import com.product.model.Product;

import java.io.IOException;
import java.sql.Connection;
import java.util.HashMap;

@WebServlet("/CartServlet")  // Changed from "/add-to-cart" to "/CartServlet"
public class CartServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        int productId = Integer.parseInt(request.getParameter("id"));
        HttpSession session = request.getSession();
        
        // Initialize cart if it doesn't exist
        HashMap<Integer, Product> cart = (HashMap<Integer, Product>) session.getAttribute("cart");
        if (cart == null) {
            cart = new HashMap<>();
            session.setAttribute("cart", cart);
        }
        
        try {
            // Get database connection (implement your connection logic)
            Connection conn = DBConnection.getConnection();
            ProductDAO productDao = new ProductDAO(conn);
            
            // Get product details
            Product product = productDao.getProductById(productId);
            
            if (product != null) {
                // Add to cart
                cart.put(productId, product);
                session.setAttribute("message", "Product added to cart successfully!");
            }
            
            response.sendRedirect("cart.jsp");
            
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
