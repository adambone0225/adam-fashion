import React from "react";
import DeleteForeverIcon from "@mui/icons-material/DeleteForever";
import { useSelector } from "react-redux";
import { useDispatch } from "react-redux";
import { removeItem, reset } from "../redux/cartReducer";
import { makeRequest } from "../FetchRequest";

const Cart = () => {
  const products = useSelector((state) => state.cart.products);
  const dispatch = useDispatch();

  const total = () => {
    let amount = 0;
    products.forEach((item) => (amount += item.quantity * item.price));
    return amount.toFixed(2);
  };

  const checkoutHandler = async () => {
    try {
      let result = await makeRequest.post(
        "/orders",
        { products },
        {
          validateStatus: function (status) {
            return status >= 200 && status <= 404;
          },
        }
      );
      window.location.href = result.data.url;
    } catch (err) {
      console.log(err);
    }
  };
  return (
    <div className="cart">
      <h1>item in cart</h1>
      {products.map((item) => (
        <div className="cart-item" key={item.id}>
          <img src={process.env.REACT_APP_UPLOAD_URL + item.img} alt="" />
          <div className="details">
            <h1>{item.title}</h1>
            <p>{item.description?.substring(0, 100)}</p>
            <div className="price">
              <b>{item.quantity}</b> x ${item.price}
            </div>
          </div>
          <DeleteForeverIcon
            className="delete"
            onClick={() => dispatch(removeItem(item.id))}
          />
        </div>
      ))}
      <div className="total">
        <span>SUBTOTOAL</span>
        <span>${total()}</span>
      </div>
      <button onClick={checkoutHandler}>PROCEDD TO CHECKOUT</button>
      <span className="reset" onClick={() => dispatch(reset())}>
        Reset Cart
      </span>
    </div>
  );
};

export default Cart;
