import { createSlice } from "@reduxjs/toolkit";

const initialState = {
  user: undefined,
  isLoading: false,
  setUser: () => {},
};

export const userSlice = createSlice({
  name: "user",
  initialState,
  reducers: {
    addToCart: (state, action) => {
      let item = state.products.find((item) => item.id === action.payload.id);
      if (item) {
        item.quantity += action.payload.quantity;
      } else {
        state.products.push(action.payload);
      }
    },
    removeItem: (state, action) => {
      state.products = state.products.filter(
        (item) => item.id != action.payload
      );
    },
    reset: (state) => {
      state.products = [];
    },
  },
});

export const { addToCart, removeItem, reset } = cartSlice.actions;

export default cartSlice.reducer;