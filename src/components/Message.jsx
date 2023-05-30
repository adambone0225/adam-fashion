import React from "react";
import DoneOutlineIcon from "@mui/icons-material/DoneOutline";
import ErrorIcon from "@mui/icons-material/Error";

const Message = ({ message }) => {
  return (
    <section className="message">
      <div className="message-box ">
        <div className="logo">
          {message.paid ? (
            <DoneOutlineIcon className="success" />
          ) : (
            <ErrorIcon className="error" />
          )}
        </div>
        <h2>{message.msg}</h2>
      </div>
    </section>
  );
};

export default Message;
