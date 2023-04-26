import React, { useState } from "react";
import KeyboardArrowDownIcon from "@mui/icons-material/KeyboardArrowDown";
import ShoppingCartOutlinedIcon from "@mui/icons-material/ShoppingCartOutlined";
import FavoriteBorderOutlinedIcon from "@mui/icons-material/FavoriteBorderOutlined";
import LoginOutlinedIcon from "@mui/icons-material/LoginOutlined";
import SearchOutlinedIcon from "@mui/icons-material/SearchOutlined";
import { Link } from "react-router-dom";
import { useSelector } from "react-redux";
import Cart from "./Cart";

const Navbar = () => {
  const [show, setShow] = useState(false);
  const products = useSelector((state) => state.cart.products);

  return (
    <header>
      <div className="wrapper">
        <section className="left">
          <div className="location">
            <img src="/image/pin.png" alt="" />
            <KeyboardArrowDownIcon />
          </div>
          <div className="item">
            <span>USD</span>
            <KeyboardArrowDownIcon />
          </div>
          <div className="item">
            <Link to="/products/2"> women</Link>
          </div>
          <div className="item">
            <Link to="/products/1"> men</Link>
          </div>
          <div className="item">
            <Link to="/products/1"> kids</Link>
          </div>
          <SearchOutlinedIcon />
        </section>
        <section className="center">
          <h1>Adam's Fashion</h1>
        </section>
        <section className="right">
          <Link className="navBar-right" to="">
            Homepage
          </Link>
          <Link className="navBar-right" to="">
            About
          </Link>
          <Link className="navBar-right">Contact</Link>
          <Link className="navBar-right">Stores</Link>
          <div className="icons">
            <LoginOutlinedIcon />
            <FavoriteBorderOutlinedIcon />
            <div className="cartIcon" onClick={() => setShow(!show)}>
              <ShoppingCartOutlinedIcon />
              <span>{products.length}</span>
            </div>
          </div>
        </section>
      </div>
      {show && <Cart />}
    </header>
  );
};

export default Navbar;
