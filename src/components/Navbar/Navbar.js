import React from "react";
import KeyboardArrowDownIcon from "@mui/icons-material/KeyboardArrowDown";
import ShoppingCartOutlinedIcon from "@mui/icons-material/ShoppingCartOutlined";
import FavoriteBorderOutlinedIcon from "@mui/icons-material/FavoriteBorderOutlined";
import LoginOutlinedIcon from "@mui/icons-material/LoginOutlined";
import SearchOutlinedIcon from "@mui/icons-material/SearchOutlined";
import { Link } from "react-router-dom";

const Navbar = () => {
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
            <Link to="/products/1"> women</Link>
          </div>
          <div className="item">
            <Link to="/products/1"> men</Link>
          </div>
          <div className="item">
            <Link to="/products/1"> children</Link>
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
            <div className="cartIcon">
              <ShoppingCartOutlinedIcon />
              <span>0</span>
            </div>
          </div>
        </section>
      </div>
    </header>
  );
};

export default Navbar;
