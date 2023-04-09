import React from "react";
import { Link } from "react-router-dom";

const Card = (props) => {
  console.log(props);
  return (
    <Link className="link" to={`/product/${props.id}`}>
      <div className="card">
        <div className="image">
          {props.isNew && <span>Latest</span>}
          <img
            className="cover-img"
            src={
              process.env.PUBLIC_URL +
              `/image/featureProduct/${props.id}/${props.coverImg}`
            }
            alt=""
          />
          <img
            src={
              process.env.PUBLIC_URL +
              `/image/featureProduct/${props.id}/${props.secondImg}`
            }
            alt=""
            className="second-img"
          />
        </div>
        <h2>{props.title}</h2>
        <div className="prices">
          <h3>${props.price}</h3>
          <h3>${props.oldPrice}</h3>
        </div>
      </div>
    </Link>
  );
};

export default Card;
