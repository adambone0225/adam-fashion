import axios from "axios";

export let makeRequest = axios.create({
  baseURL: process.env.REACT_APP_API_URL,
  headers: {
    Authorization: "bearer" + process.env.REACT_APP_API_TOKEN,
  },
});
