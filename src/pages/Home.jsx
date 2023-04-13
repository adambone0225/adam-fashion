import React from "react";
import Slider from "../components/slider/Slider";
import Categories from "../components/Categories";
import FeaturedProduct from "../components/FeaturedProduct";
import Contact from "../components/Contact";
const Home = () => {
  return (
    <div>
      <Slider />
      <FeaturedProduct type={"Featured"} />
      <Categories />
      <FeaturedProduct type={"Popular"} />
      <Contact />
    </div>
  );
};

export default Home;
