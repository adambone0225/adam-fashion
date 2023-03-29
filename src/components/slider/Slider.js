import React from "react";
import { useState } from "react";
import ArrowBackIosIcon from "@mui/icons-material/ArrowBackIos";
import ArrowForwardIosIcon from "@mui/icons-material/ArrowForwardIos";
import slide1 from "./image/slide1.png";
import slide2 from "./image/slide2.png";
import slide3 from "./image/slide3.png";

let image = [slide1, slide2, slide3];

const Slider = () => {
  const [currentIndex, setCurrentIndex] = useState(0);
  const goToPrevious = () => {
    const newIndex = currentIndex === 0 ? image.length - 1 : currentIndex - 1;
    setCurrentIndex(newIndex);
  };
  const goToNext = () => {
    const newIndex = currentIndex === image.length - 1 ? 0 : currentIndex + 1;
    setCurrentIndex(newIndex);
  };

  const switchByDot = (SlideIndex) => {
    setCurrentIndex(SlideIndex);
  };

  return (
    <section className="slider">
      <div className="container">
        <ArrowBackIosIcon
          className="control leftArrow"
          onClick={goToPrevious}
        />
        <ArrowForwardIosIcon
          className="control rightArrow"
          onClick={goToNext}
        />
        <div className="slide">
          {/* /* {image.map((img, index) => (
            <div
              className="img"
              key={index}
              style={{ backgroundImage: `url(${img})` }}
            ></div>
          ))} */}
          <div
            className="img"
            style={{ backgroundImage: `url(${image[currentIndex]})` }}
          ></div>
        </div>
        <div className="panel">
          {image.map((_, index) => (
            <span
              key={index}
              className="slider-dots"
              onClick={() => {
                switchByDot(index);
              }}
            ></span>
          ))}
        </div>
      </div>
    </section>
  );
};

export default Slider;
