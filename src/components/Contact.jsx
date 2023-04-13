import React from "react";
import FacebookIcon from "@mui/icons-material/Facebook";
import InstagramIcon from "@mui/icons-material/Instagram";

const Contact = () => {
  return (
    <div className="contact">
      <div className="wrapper">
        <span>Need help?</span>
        <div className="mail">
          <input type="text" placeholder="type your email" />
          <button>subscribe</button>
        </div>
        <div className="icons">
          <FacebookIcon />
          <InstagramIcon />
        </div>
      </div>
    </div>
  );
};

export default Contact;
