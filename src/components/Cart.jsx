import React from "react";
import { data2 } from "./data";
import DeleteForeverIcon from "@mui/icons-material/DeleteForever";

const Cart = () => {
  return (
    <div className="cart">
      <h1>item in cart</h1>
      {data2.map((item) => (
        <div className="cart-item" key={item.id}>
          <img src={item.coverImg} alt="" />
          <div className="details">
            <h1>{item.title}</h1>
            <p>{item.description?.substring(0, 100)}</p>
            <div className="price"> 1 x ${item.price}</div>
          </div>
          <DeleteForeverIcon className="delete" />
        </div>
      ))}
      <div className="total">
        <span>SUBTOTOAL</span>
        <span>$123</span>
      </div>
      <button>PROCEDD TO CHECKOUT</button>
      <span className="reset">Reset Cart</span>
    </div>
  );
};

export default Cart;
