import React, { useState } from "react";
import { useNavigate, Link } from "react-router-dom";
import { setToken } from "../../auth/helper";
import { useDispatch } from "react-redux";
import { setUser } from "../../redux/userReducer";
import { Spin, Alert, message } from "antd";
import axios from "axios";

const Login = () => {
  const dispatch = useDispatch();
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState();
  const navigate = useNavigate();

  const handleSubmit = async (e) => {
    e.preventDefault();
    setIsLoading(true);
    try {
      let input = {
        identifier: e.target.username.value,
        password: e.target.password.value,
      };

      const res = await axios.post(
        `${process.env.REACT_APP_API_URL}/auth/local`,
        input
      );
      if (res?.error) {
        throw res?.error;
      } else {
        // set the token
        console.log(res);
        setToken(res.data.jwt);

        // set the user
        console.log("setting the user");
        dispatch(setUser(res.data.user));

        message.success(`Welcome ! ${res.data.user.username}!`);

        navigate("/", { replace: true });
      }
    } catch (e) {
      console.log(e);
      setError(error?.message ?? "Something is wrong");
    } finally {
      setIsLoading(false);
    }

    e.target.reset();
  };
  return (
    <div className="login-form-container">
      <form action="" onSubmit={handleSubmit}>
        <h3>login</h3>
        {error ? (
          <Alert
            className="alert_error"
            message={error}
            type="error"
            closable
            afterClose={() => setError("")}
          />
        ) : null}
        <input
          type="text"
          id="username"
          name="username"
          className="box"
          placeholder="enter your username"
        />
        <input
          type="password"
          id="password"
          name="password"
          className="box"
          placeholder="enter your password"
        />
        <button type="submit" className="auth-btn">
          Login{isLoading && <Spin size="small" tip="Please wait..." />}
        </button>
        <p>
          don't have an account? <Link to="../register">register </Link>
        </p>
      </form>
    </div>
  );
};

export default Login;
