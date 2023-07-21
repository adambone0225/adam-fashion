import { createSlice } from "@reduxjs/toolkit";

const initialState = {
  userInfo: "",
  isLoading: true,
};

export const userSlice = createSlice({
  name: "user",
  initialState,
  reducers: {
    setUser: (state, action) => {
      state.userInfo = action.payload;
    },
    logOut: (state, action) => {
      state.userInfo = "";
    },
  },
});

export const { setUser, logOut } = userSlice.actions;

export default userSlice.reducer;
