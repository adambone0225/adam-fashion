import React, { useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import { setToken } from "../../auth/helper";
import { useDispatch } from "react-redux";
import { setUser } from "../../redux/userReducer";
import axios from "axios";
import { message, Alert, Spin } from "antd";

const Register = () => {
  const dispatch = useDispatch();
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState();
  const navigate = useNavigate();

  const handleSubmit = async (e) => {
    e.preventDefault();
    setIsLoading(true);
    try {
      let input = {
        username: e.target.username.value,
        password: e.target.password.value,
        email: e.target.email.value,
      };

      const res = await axios.post(
        `${process.env.REACT_APP_API_URL}/auth/local/register`,
        input
      );

      if (res?.error) {
        throw res?.error;
      } else {
        // set the token
        setToken(res.jwt);

        // set the user
        dispatch(setUser(res.data.user));
        console.log(res);
        message.success(`Welcome ! ${res.data.user.username}!`);

        navigate("/", { replace: true });
        console.log("register success");
      }
    } catch (e) {
      console.log(e);
      setError(error?.message ?? "Something is wrong");
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <div className="login-form-container">
      <form action="" onSubmit={handleSubmit}>
        <h3>register</h3>
        <input type="email" className="box" name="email" placeholder="email" />
        <input
          type="username"
          className="box"
          name="username"
          placeholder="username (at least 3 characters)"
        />
        <input
          type="password"
          className="box"
          name="password"
          placeholder="password (at least 7 characters)"
        />
        {error ? (
          <Alert
            className="alert_error"
            message={error}
            type="error"
            closable
            afterClose={() => setError("")}
          />
        ) : null}
        <button type="submit" className="auth-btn">
          Submit {isLoading && <Spin size="small" tip="Please wait..." />}
        </button>
        <p>
          already have a account? <Link to="../auth">Login</Link>
        </p>
      </form>
    </div>
  );
};

export default Register;
