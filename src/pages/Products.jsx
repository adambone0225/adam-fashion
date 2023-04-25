import React, { useState } from "react";
import List from "../components/List";
import { useParams } from "react-router-dom";
import useFetch from "../hooks/useFetch";

const Products = () => {
  const [maxPrice, setMaxPrice] = useState(1000);
  const catId = parseInt(useParams().id);
  const [sort, setSort] = useState(null);
  const [selectedCat, setSelectCat] = useState([]);
  const { data, error, loading } = useFetch(
    `/sub-categories?[filters][categories][id][$eq]=${catId}`
  ); // select items belong to the id of categories (men or women) being 1, which is men

  const changeHandler = (e) => {
    const value = e.target.value;
    const isChecked = e.target.checked;

    setSelectCat(
      isChecked
        ? [...selectedCat, value]
        : selectedCat.filter((item) => item != value)
    );
  };

  return (
    <div className="products">
      <div className="left">
        <div className="filter-item">
          <h3>product categories</h3>
          {data.map((item) => (
            <div key={item.id} className="input-item" onChange={changeHandler}>
              <input type="checkbox" id={item.id} value={item.id} />
              <label htmlFor={item.id}>{item.attributes.title}</label>
            </div>
          ))}
        </div>

        <div className="filter-item">
          <h3>filter by price</h3>
          <div className="inputItem">
            <span>0</span>
            <input
              type="range"
              min={0}
              max={400}
              step={10}
              onChange={(e) => {
                setMaxPrice(e.target.value);
              }}
            />
            <span>{maxPrice}</span>
          </div>
        </div>

        <div className="filter-item">
          <h3>sort by </h3>
          <div className="input-item">
            <input
              type="radio"
              id="asc"
              value="asc"
              name="price"
              onChange={(e) => {
                setSort("asc");
              }}
            />
            <label htmlFor="asc">price (by lowest)</label>
          </div>
          <div className="input-item">
            <input
              type="radio"
              id="desc "
              value="desc"
              name="price"
              onChange={(e) => {
                setSort("desc");
              }}
            />
            <label htmlFor="desc">price (by highest) </label>
          </div>
        </div>
      </div>

      <section className="right">
        <img
          className="catImg"
          src="https://img.freepik.com/free-photo/rack-clothes-store_23-2148929537.jpg?w=1380&t=st=1681196912~exp=1681197512~hmac=a0dfba976438d3494e5cd72fadaba1beccdd02c497b9cbfbd776efc82aa0cb43"
          alt=""
        />
        <List
          catId={catId}
          maxPrice={maxPrice}
          sort={sort}
          filter={selectedCat}
        />
      </section>
    </div>
  );
};

export default Products;
