import { useEffect, useState } from "react";
import { makeRequest } from "../FetchRequest";

const useFetch = (url, url2) => {
  const [data, setData] = useState([]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchData = async () => {
      try {
        setLoading(true);
        const result = await makeRequest.get(url);
        if (url2) {
          const result2 = await makeRequest.get(url2);
          let final = result.data.concat(result2.data.data);
          return setData(final);
        }
        if (result.data.data) {
          setData(result.data.data);
        } else {
          setData(result.data);
        }
      } catch (err) {
        setError(true);
      }
      setLoading(false);
    };
    fetchData();
  }, [url, url2]);
  return { data, error, loading, setError };
};

export default useFetch;
