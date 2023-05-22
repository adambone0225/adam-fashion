import React, { useEffect, useState, useMemo } from "react";
import Slider from "../components/slider/Slider";
import Message from "../components/Message";
import Categories from "../components/Categories";
import FeaturedProduct from "../components/FeaturedProduct";
import Contact from "../components/Contact";
const Home = () => {
  const [message, setMessage] = useState("");
  const param = window.location.search;
  const query = useMemo(() => new URLSearchParams(param), [param]);
  useEffect(() => {
    // Check to see if this is a redirect back from Checkout

    if (query.get("success")) {
      setMessage("Order placed! We will handle your order soon.");
    }

    if (query.get("canceled")) {
      setMessage(
        "Order canceled -- continue to shop around and checkout when you're ready."
      );
    }
  }, [query]);

  return <Message message={message} />;
  // return message ? (
  //   <Message message={message} />
  // ) : (
  //   <>
  //     <Slider />
  //     <FeaturedProduct type={"Featured"} />
  //     <Categories />
  //     <FeaturedProduct type={"Popular"} />
  //     <Contact />
  //   </>
  // );
};

export default Home;
