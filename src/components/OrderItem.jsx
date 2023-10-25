import React from "react";

const OrderItem = ({ order }) => {
  return (
    <>
      <li className="orders_order">
        <div className="order_meta">
          <div className="order_number-title">Order no.</div>
          <div className="order_number-content">
            {order?.attributes?.stripeid.substring(8, 20)}...
          </div>
          <div className="order_date">
            order date {order?.attributes?.createdAt.split("T")[0]}
          </div>
        </div>
        <ul className="order-content">
          {order.attributes.details.map((item) => {
            return (
              <li className="order_item">
                <img
                  width="75"
                  height="108"
                  src={process.env.REACT_APP_UPLOAD_URL + item.img.substring(8)}
                  alt="product"
                />
                <div className="orders_item-meta">
                  <div className="order_item-title#">{item.title}</div>
                  <div>
                    {item.quantity} x ${item.price}
                  </div>
                </div>
              </li>
            );
          })}
        </ul>
      </li>
    </>
  );
};

export default OrderItem;
