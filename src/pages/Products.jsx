import React, { useState } from "react";
import List from "../components/List";
import { useParams } from "react-router-dom";

const Products = () => {
  const [maxPrice, setMaxPrice] = useState(1000);
  const id = parseInt(useParams().id);
  const [sort, setSort] = useState(null);

  return (
    <div className="products">
      <div className="left">
        <div className="filter-item">
          <h3>product categories</h3>
          <div className="input-item">
            <input type="checkbox" id="1" value={1} />
            <label htmlFor="1">Shoes</label>
          </div>
          <div className="input-item">
            <input type="checkbox" id="2" value={2} />
            <label htmlFor="2">hat</label>
          </div>
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
        <List catId={id} maxPrice={maxPrice} sort={sort} />
      </section>
    </div>
  );
};

export default Products;
