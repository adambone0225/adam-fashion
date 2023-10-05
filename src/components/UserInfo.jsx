import React from "react";
import { getToken } from "../auth/helper";
import { useSelector } from "react-redux";
import { Navigate } from "react-router-dom";
import useFetch from "../hooks/useFetch";
import OrderItem from "./OrderItem";

const UserInfo = () => {
  const userInfo = useSelector((state) => state.root.user.userInfo);
  const { data } = useFetch(
    `/users?populate=*&filters[username][$eq]=${userInfo.username}`,
    `/orders?filters[email][$eq]=${userInfo.email}`
  );
  data?.shift();
  return (
    <>
      {getToken() ? (
        userInfo ? (
          <div className="profile">
            <div className="account_title">
              <h1>Personal Information</h1>
            </div>
            <div className="account_container">
              <div className="info box">
                <span className="infoLabel"> email </span>
                <span className="infoContent"> {userInfo.email} </span>
              </div>
              <div className="info box">
                <span className="infoLabel">username</span>
                <span className="infoContent">{userInfo.username}</span>
              </div>
            </div>
            <div className="account_title">
              <h1>Orders</h1>
            </div>
            <div className="order_container">
              {data &&
                data.map((order) => {
                  return <OrderItem order={order} />;
                })}
            </div>
          </div>
        ) : (
          <Navigate to="/auth" replace={true} />
        )
      ) : (
        <Navigate to="/auth" replace={true} />
      )}
    </>
  );
};

export default UserInfo;