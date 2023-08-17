import React from "react";
import useFetch from "../hooks/useFetch";
import Card from "./Card";

const List = ({ maxPrice, param, sort, filter }) => {
  const { data } = useFetch(
    `/products?populate=*&filters[categories][title][$eq]=${param}${filter.map(
      (item) => `&filters[sub_categories][id][$eq]=${item}`
    )}${sort && `&filters[price][$lte]=${maxPrice}&sort=price:${sort}`}`
  );
  console.log(data);
  return (
    <div className="cards">
      {data.map((item) => {
        return <Card item={item} key={item.id} />;
      })}
    </div>
  );
};

export default List;
