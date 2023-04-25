import React from "react";
import Card from "./Card";
import useFetch from "../hooks/useFetch";

const FeaturedProduct = ({ type }) => {
  const { data, loading, error } = useFetch(
    `/products?populate=*&[filters][type][$eq]=${type}`
  );

  console.log(data);
  return (
    <section className="featured-product">
      <h1>{type} Products</h1>
      <div className="cards">
        {error
          ? "error"
          : loading
          ? "loading"
          : data.map((item) => {
              return <Card item={item} key={item.id} type={type} />;
            })}
      </div>
    </section>
  );
};

export default FeaturedProduct;
