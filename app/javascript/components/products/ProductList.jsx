// React
import React from "react";

// Context
import { useProductsContext } from "../providers/ProductsProvider";

// Components
import Product from "./Product";

export default function ProductList() {
    const { products } = useProductsContext();
    return [
        ...products.map((product) => (
            <Product key={product.id} product={product} />
        )),
    ];
}
