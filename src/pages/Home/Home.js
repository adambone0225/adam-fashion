import React from "react";
import Slider from "../../components/slider/Slider";
import FeaturedProduct from "../../components/FeaturedProduct";

const Home = () => {
  return (
    <div>
      <Slider />
      <FeaturedProduct type={"Featured"} />
      <FeaturedProduct type={"Popular"} />
    </div>
  );
};

export default Home;
