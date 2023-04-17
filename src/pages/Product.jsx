import React, { useState } from "react";
import Cart from "../components/Cart";
import FavoriteBorderIcon from "@mui/icons-material/FavoriteBorder";
import ShoppingCartOutlinedIcon from "@mui/icons-material/ShoppingCartOutlined";
import BalanceOutlinedIcon from "@mui/icons-material/BalanceOutlined";

const Product = () => {
  const [image, setImage] = useState(0);
  const [quantity, setQuantity] = useState(0);

  const data = [
    "https://img.freepik.com/free-photo/empty-drinking-glass-macro-shot_53876-33861.jpg?w=740&t=st=1681374246~exp=1681374846~hmac=3933184910c809297b5672f852662e408a139c179b64669aec48f99563894c2b",
    "https://img.freepik.com/free-photo/medium-shot-smiley-man-with-trucker-hat_23-2149412793.jpg?w=1060&t=st=1681374334~exp=1681374934~hmac=418e74424b3ed42d0519742f2d72890a9885734e3703effa4a6d537e9dd5e7f1",
  ];
  return (
    <div className="product">
      <section className="left">
        <div className="gallery">
          <img src={data[0]} alt="" onClick={() => setImage(0)} />
          <img src={data[1]} alt="" onClick={() => setImage(1)} />
        </div>
        <div className="display-image">
          <img src={data[image]} alt="" />
        </div>
      </section>

      <section className="right">
        <h2>title</h2>
        <span className="price">$200</span>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt
          quos, eligendi doloremque blanditiis tempora repellat!
        </p>
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
    </div>
  );
};

export default Product;
