import React from "react";
import { Link } from "react-router-dom";

const fakeOldPrice = 40;

const Card = ({ item }) => {
  return (
    <Link className="link" to={`/product/${item.id}`}>
      <div className="card">
        <div className="image">
          {item.attributes.isNew && <span>Latest</span>}
          <img
            className="cover-img"
            src={
              process.env.REACT_APP_UPLOAD_URL +
              item.attributes.coverImg.data.attributes.url.substring(8)
            }
            alt=""
          />
          <img
            src={
              process.env.REACT_APP_UPLOAD_URL +
              item.attributes.secondImg.data.attributes.url.substring(8)
            }
            alt=""
            className="second-img"
          />
        </div>
        <h2>{item.attributes.title}</h2>
        <div className="prices">
          <h3>
            ${item.attributes.oldprice || item.attributes.price + fakeOldPrice}
          </h3>
          <h3>${item.attributes.price}</h3>
        </div>
      </div>
    </Link>
  );
};

export default Card;
