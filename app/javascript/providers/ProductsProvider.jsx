// React
import React, { useEffect, useState, createContext, useContext } from "react";

const ProductsContext = createContext();

export const useProductsContext = () => useContext(ProductsContext);

export default function ProductsProvider({ children }) {
    const [products, setProducts] = useState([]);
    const [activeProduct, setActiveProduct] = useState(null);

    function fetchProducts() {
        console.log("Fetching products from backend...");
        fetch("/api/v1/products")
            .then((res) => res.json())
            .then((json) => setProducts(json));
    }

    useEffect(fetchProducts, []);

    const productsContext = {
        products: products,
        setProducts: setProducts,
        activeProduct: activeProduct,
        setActiveProduct: setActiveProduct,
    };

    return (
        <ProductsContext.Provider value={productsContext}>
            {children}
        </ProductsContext.Provider>
    );
}
