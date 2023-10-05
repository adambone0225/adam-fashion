import React, { useState } from "react";
import AccountBoxIcon from "@mui/icons-material/AccountBox";
import ShoppingCartOutlinedIcon from "@mui/icons-material/ShoppingCartOutlined";
import FavoriteBorderOutlinedIcon from "@mui/icons-material/FavoriteBorderOutlined";
import LoginOutlinedIcon from "@mui/icons-material/LoginOutlined";
import MenuIcon from "@mui/icons-material/Menu";
import { Link } from "react-router-dom";
import { removeToken } from "../auth/helper";
import { useSelector, useDispatch } from "react-redux";
import { message } from "antd";
import { logOut } from "../redux/userReducer";
import Cart from "./Cart";

const Navbar = () => {
  const dispatch = useDispatch();
  const [menuShow, setMenuShow] = useState(false);
  const [show, setShow] = useState(false);
  const products = useSelector((state) => state.root.cart.products);
  const login = useSelector((state) => state.root.user);

  const handleLogout = () => {
    removeToken();
    dispatch(logOut());

    return message.success(`You have logged out`);
  };

  return (
    <>
      <header className="wrapper">
        <MenuIcon
          className="menu-icon"
          onClick={() => setMenuShow(!menuShow)}
        />
        <section className="left">
          <Link to="/">
            <h1>Adam's Fashion</h1>
          </Link>
        </section>
        <section
          className={menuShow ? "center active" : "center"}
          onClick={() => {
            setMenuShow(false);
          }}
        >
          <Link to="/products/women"> women</Link>
          <Link to="/products/men"> men</Link>
          <Link className="navBar-right" to="">
            Homepage
          </Link>
          <Link className="navBar-right" to="">
            About
          </Link>
          <a href="#footer">Contact</a>
        </section>
        <section className="right">
          <div className="icons">
            {login.userInfo ? (
              <>
                <Link to="/profile">
                  <AccountBoxIcon />
                </Link>
                <LoginOutlinedIcon onClick={handleLogout} />
              </>
            ) : (
              <Link to="/auth">
                <div title="log in">
                  <LoginOutlinedIcon />
                </div>
              </Link>
            )}
            <FavoriteBorderOutlinedIcon />
            <div className="cartIcon" onClick={() => setShow(!show)}>
              <ShoppingCartOutlinedIcon />
              <span>{products.length}</span>
            </div>
          </div>
        </section>
        {show && <Cart />}
      </header>
    </>
  );
};

export default Navbar;
