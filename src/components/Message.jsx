import React from "react";
import DoneOutlineIcon from "@mui/icons-material/DoneOutline";

const Message = ({ message }) => {
  return (
    <section className="message">
      <div className="message-box ">
        <DoneOutlineIcon />
        <h2>{message}</h2>
      </div>
    </section>
  );
};

export default Message;
