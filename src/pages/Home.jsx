import React, { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import { useDispatch } from "react-redux";
import Slider from "../components/slider/Slider";
import Message from "../components/Message";
import Categories from "../components/Categories";
import { reset } from "../redux/cartReducer";
import FeaturedProduct from "../components/FeaturedProduct";
import Contact from "../components/Contact";
const Home = () => {
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const [message, setMessage] = useState();
  const query = new URLSearchParams(window.location.search);

  useEffect(() => {
    // Check to see if this is a redirect back from Checkout

    if (query.get("success")) {
      console.log("success");
      setMessage({
        msg: "Order placed! We will handle your order soon.",
        paid: true,
      });
      dispatch(reset());
      let id = setTimeout(() => {
        navigate("/");
        setMessage("");
        console.log("timeout");
      }, 2000);

      return () => clearTimeout(id);
    }

    if (query.get("canceled")) {
      setMessage({
        msg: "Payment not finished",
        paid: false,
      });
      let id = setTimeout(() => {
        navigate("/");
        setMessage("");
      }, 2000);
      return () => clearTimeout(id);
    }
  }, [navigate]);

  return message ? (
    <Message message={message} />
  ) : (
    <>
      <Slider />
      <FeaturedProduct type={"Featured"} />
      <Categories />
      <FeaturedProduct type={"Popular"} />
      <Contact />
    </>
  );
};

export default Home;
