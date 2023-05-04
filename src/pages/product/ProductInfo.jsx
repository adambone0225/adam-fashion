import React from "react";
import { useOutletContext } from "react-router-dom";

const ProductInfo = () => {
  const { data } = useOutletContext();

  return (
    <div className="product-info-nav-info">
      <h4>
        care: <p>{data?.attributes?.desc?.care}</p>
      </h4>
      <h4>
        color: <p>{data?.attributes?.desc?.color}</p>
      </h4>
      <h4>
        highlight:
        {data?.attributes?.desc?.hightlight?.split(" ").map((item) => {
          return <p>{item}</p>;
        })}
      </h4>
    </div>
  );
};

export default ProductInfo;
