import React, { useEffect, useState, useMemo } from "react";
import { useNavigate } from "react-router-dom";
import Slider from "../components/slider/Slider";
import Message from "../components/Message";
import Categories from "../components/Categories";
import FeaturedProduct from "../components/FeaturedProduct";
import Contact from "../components/Contact";
const Home = () => {
  const navigate = useNavigate();
  const [message, setMessage] = useState();
  const param = window.location.search;
  const query = useMemo(() => new URLSearchParams(param), [param]);
  useEffect(() => {
    // Check to see if this is a redirect back from Checkout

    if (query.get("success")) {
      setMessage({
        msg: "Order placed! We will handle your order soon.",
        paid: true,
      });
      let id = setTimeout(() => {
        navigate("/");
        setMessage();
      }, 2000);
      return clearTimeout(id);
    }

    if (query.get("canceled")) {
      setMessage({
        msg: "Order placed! We will handle your order soon.",
        paid: false,
      });
      let id = setTimeout(() => {
        navigate("/");
        setMessage();
      }, 2000);
      return clearTimeout(id);
    }
  }, [query, navigate]);

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
