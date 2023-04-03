import React from "react";
import Card from "./Card";
import data from "./data";

const FeaturedProduct = ({ type }) => {
  return (
    <section className="featured-product">
      <h1>{type} Products</h1>
      <div className="cards">
        {data.map((item) => {
          return <Card {...item} key={item.id} type={type} />;
        })}
      </div>
    </section>
  );
};

export default FeaturedProduct;
