// React
import React from "react";

// Exports
export default function Product(props) {
    const { product } = props;
    return (
        <div>
            <h1>{product.name}</h1>
            <p>{product.description}</p>
            <p>{product.price}</p>
        </div>
    );
}
