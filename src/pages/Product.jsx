import React, { useState } from "react";
import { useParams } from "react-router-dom";
import Cart from "../components/Cart";
import FavoriteBorderIcon from "@mui/icons-material/FavoriteBorder";
import ShoppingCartOutlinedIcon from "@mui/icons-material/ShoppingCartOutlined";
import BalanceOutlinedIcon from "@mui/icons-material/BalanceOutlined";
import useFetch from "../hooks/useFetch";

const Product = () => {
  const [image, setImage] = useState("coverImg");
  const [quantity, setQuantity] = useState(0);
  const id = useParams().id;

  const { data, loading, error } = useFetch(`/products/${id}?populate=*`);
  console.log(id);
  console.log(data);
  return (
    <div className="product">
      <section className="left">
        <div className="gallery">
          <img
            src={
              process.env.REACT_APP_UPLOAD_URL +
              data.attributes.coverImg.data.attributes.url
            }
            alt=""
            onClick={() => setImage("coverImg")}
          />
          <img
            src={
              process.env.REACT_APP_UPLOAD_URL +
              data.attributes.secondImg.data.attributes.url
            }
            alt=""
            onClick={() => setImage("secondImg")}
          />
        </div>
        <div className="display-image">
          <img
            src={
              process.env.REACT_APP_UPLOAD_URL +
              data.attributes[image].data.attributes.url
            }
            alt=""
          />
        </div>
      </section>

      <section className="right">
        <h2>{data.attributes?.title}</h2>
        <span className="price">{data.attributes?.price}</span>
        <p>{data.attributes?.description}</p>
        <div className="quantity">
          <button
            onClick={() => setQuantity((cur) => (cur === 1 ? 1 : cur - 1))}
          >
            -
          </button>
          {quantity}
          <button onClick={() => setQuantity((cur) => cur + 1)}>+</button>
        </div>
        <button className="add">
          <ShoppingCartOutlinedIcon /> ADD TO CART
        </button>
        <div className="functions">
          <button className="item">
            <FavoriteBorderIcon /> WISH LIST
          </button>
          <button className="item">
            <BalanceOutlinedIcon /> COMPARE
          </button>
        </div>
        <div className="info">
          <span>Producer: </span>
          <span>Category</span>
        </div>
        <br />
        <div className="info">
          <span>DESCRIPTION</span>
          <hr />
          <span>FAQ</span>
        </div>
      </section>
      <Cart />
    </div>
  );
};

export default Product;
