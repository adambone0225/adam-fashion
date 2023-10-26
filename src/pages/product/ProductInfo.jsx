import React from "react";
import { useOutletContext } from "react-router-dom";

const ProductInfo = () => {
  const { data } = useOutletContext();

  return (
    <div className="product-info-nav-info">
      <h1>
        care: <span>{data?.attributes?.desc?.care}</span>
      </h1>
      <div
        style={{ backgroundColor: "#6d6e6e", height: "2px", width: "100%" }}
      />
      <h1>
        color: <span>{data?.attributes?.desc?.color}</span>
      </h1>
      <div
        style={{
          backgroundColor: "#6d6e6e",
          height: "2px",
          width: "100%",
        }}
      />
      <h1>
        highlight:
        {data?.attributes?.desc?.hightlight?.split(" ").map((item) => {
          return <span>{item}</span>;
        })}
      </h1>
    </div>
  );
};

export default ProductInfo;
