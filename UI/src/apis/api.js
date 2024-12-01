import { catchError } from "../helper";
import axiosInstance from "./axiosConfig";

export const loginUser = async (data) => {
  try {
    const response = await axiosInstance.post(`/users/login`, data);
    return response.data; // Expected to return token or user info
  } catch (error) {
    return catchError(error);
  }
};

export const getAllTicket = async () => {
  try {
    const response = await axiosInstance(
      `/channels/channel1/chaincodes/ticketcontract?args=[""]&fcn="getAllTickets"`
    );

    return response.data;
  } catch (error) {
    const val = catchError(error);
    console.log(val);
    return;
  }
};
