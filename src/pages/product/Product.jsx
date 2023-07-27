import React, { useState } from "react";
import { useParams, NavLink, Outlet, Link } from "react-router-dom";
import FavoriteBorderIcon from "@mui/icons-material/FavoriteBorder";
import ShoppingCartOutlinedIcon from "@mui/icons-material/ShoppingCartOutlined";
import BalanceOutlinedIcon from "@mui/icons-material/BalanceOutlined";
import useFetch from "../../hooks/useFetch";
import { useDispatch } from "react-redux";
import { addToCart } from "../../redux/cartReducer";

const Product = () => {
  const [image, setImage] = useState("coverImg");
  const [quantity, setQuantity] = useState(1);
  const id = useParams().id;
  const { data, loading, error } = useFetch(`/products/${id}?populate=*`);
  const dispatch = useDispatch();
  console.log(data);
  const activeStyles = {
    fontWeight: "bold",
    textDecoration: "underline",
    color: "#161616",
  };

  return (
    <div className="product">
      {loading ? (
        "loading"
      ) : (
        <>
          <section className="left">
            <div className="gallery">
              <img
                src={
                  process.env.REACT_APP_UPLOAD_URL +
                  data?.attributes?.coverImg?.data?.attributes?.url.substring(8)
                }
                alt=""
                onClick={() => setImage("coverImg")}
              />
              <img
                src={
                  process.env.REACT_APP_UPLOAD_URL +
                  data?.attributes?.secondImg?.data?.attributes?.url.substring(
                    8
                  )
                }
                alt=""
                onClick={() => setImage("secondImg")}
              />
            </div>
            <div className="display-image">
              <img
                src={
                  process.env.REACT_APP_UPLOAD_URL +
                  data?.attributes?.[image]?.data?.attributes?.url.substring(8)
                }
                alt=""
              />
            </div>
          </section>

          <section className="right">
            <h2>{data.attributes?.title}</h2>
            <span className="price">{`$${data.attributes?.price}`}</span>

            <div className="quantity">
              <button
                onClick={() => setQuantity((cur) => (cur === 1 ? 1 : cur - 1))}
              >
                -
              </button>
              {quantity}
              <button onClick={() => setQuantity((cur) => cur + 1)}>+</button>
            </div>
            <button
              className="add"
              onClick={() =>
                dispatch(
                  addToCart({
                    id: data.id,
                    title: data.attributes.title,
                    description: data.attributes.description,
                    img: data.attributes?.coverImg.data.attributes.url,
                    price: data.attributes.price,
                    quantity,
                  })
                )
              }
            >
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
            <nav className="product-info-nav">
              <NavLink
                to="."
                end
                style={({ isActive }) => (isActive ? activeStyles : null)}
              >
                Information
              </NavLink>
              <NavLink
                to="delivery"
                style={({ isActive }) => (isActive ? activeStyles : null)}
              >
                Delivery
              </NavLink>
            </nav>
            <Outlet context={{ data }} />
          </section>
        </>
      )}
    </div>
  );
};

export default Product;
