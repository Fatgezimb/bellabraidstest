// React
import React from "react";
import { Route, Navigate, Routes, Outlet } from "react-router-dom";
import { BrowserRouter as Router } from "react-router-dom";

// Providers
import ProductsProvider from "../providers/ProductsProvider";
import CreateProduct from "./products/CreateProduct";

// Components
import Home from "./ProductList";

export default function App() {
    return (
        <ProductsProvider>
            <Router>
                <Routes>
                    <Route exact path="/home" element={<Home />} />
                    <Route
                        exact
                        path="/Home"
                        element={<Navigate to="/home" />}
                    />
                    <Route
                        exact
                        path="/products/create"
                        element={<CreateProduct />}
                    />
                    <Route index element={<Navigate to="/home" />} />
                </Routes>
            </Router>
        </ProductsProvider>
    );
}
