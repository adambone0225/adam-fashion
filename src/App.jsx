import { createBrowserRouter, RouterProvider, Outlet } from "react-router-dom";
import Home from "./pages/Home";
import Product from "./pages/product/Product";
import Products from "./pages/Products";
import Register from "./pages/auth/Register";
import Login from "./pages/auth/Login";
import UserInfo from "./components/UserInfo";
import Navbar from "./components/Navbar";
import Footer from "./components/Footer";
import DeliveryInfo from "./pages/product/DeliveryInfo";
import ProductInfo from "./pages/product/ProductInfo";

const Layout = () => {
  return (
    <div className="app">
      <Navbar />
      <Outlet />
      <Footer />
    </div>
  );
};

const router = createBrowserRouter([
  {
    path: "/",
    element: <Layout />,
    children: [
      { path: "/", element: <Home /> },
      { path: "/products/:type", element: <Products /> },
      {
        path: "/product/:id",
        element: <Product />,
        children: [
          { path: "delivery", element: <DeliveryInfo /> },
          { element: <ProductInfo />, index: true },
        ],
      },
      {
        path: "/auth",
        element: <Login />,
      },
      { path: "register", element: <Register /> },
      {
        path: "profile",
        element: <UserInfo />,
      },
    ],
  },
]);

function App() {
  return (
    <div>
      <RouterProvider router={router} />
    </div>
  );
}

export default App;
