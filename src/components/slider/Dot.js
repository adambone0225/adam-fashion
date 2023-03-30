import React from "react";

const Dot = ({ slideSwitch, index }) => {
  return (
    <span
      className="slider-dots"
      onClick={() => {
        slideSwitch(index);
      }}
    ></span>
  );
};

export default Dot;
