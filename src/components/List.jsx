import React from "react";
import { data2 } from "./data";
import Card from "./Card";

const List = () => {
  return (
    <div className="cards">
      {data2.map((item) => {
        return <Card {...item} key={item.id} />;
      })}
    </div>
  );
};

export default List;
