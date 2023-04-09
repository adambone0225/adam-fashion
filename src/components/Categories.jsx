import React from "react";
import { Link } from "react-router-dom";

const Categories = () => {
  return (
    <section className="categories">
      <div className="col">
        <div className="row">
          <img
            src={process.env.PUBLIC_URL + "/image/categories/Trending.jpg"}
            alt=""
          />
          <button>
            <Link to="/product/1">Trending </Link>
          </button>
        </div>
        <div className="row">
          <img
            src={process.env.PUBLIC_URL + "/image/categories/sale.jpg"}
            alt=""
          />
          <button>
            <Link to="/product/1">sale </Link>
          </button>
        </div>
      </div>
      <div className="col">
        <div className="row">
          <img
            src={process.env.PUBLIC_URL + "/image/categories/gift.jpg"}
            alt=""
          />
          <button>
            <Link to="/product/1">gift </Link>
          </button>
        </div>
      </div>
      <div className="col col-1">
        <div className="row">
          <div className="col">
            <div className="row">
              <img
                src={process.env.PUBLIC_URL + "/image/categories/male.png"}
                alt=""
              />
              <button>
                <Link to="/product/1">male </Link>
              </button>
            </div>
          </div>
          <div className="col">
            <div className="row">
              <img
                src={process.env.PUBLIC_URL + "/image/categories/women.jpg"}
                alt=""
              />
              <button>
                <Link to="/product/1">women </Link>
              </button>
            </div>
          </div>
        </div>
        <div className="row">
          <img
            src={process.env.PUBLIC_URL + "/image/categories/accessories.jpg"}
            alt=""
          />
          <button>
            <Link to="/product/1">accessories </Link>
          </button>
        </div>
      </div>
    </section>
  );
};

export default Categories;
