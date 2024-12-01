export const catchError = (error) => {
  const { response } = error;
  console.log(error);
  if (response?.data) {
    return response?.data;
  }

  return { message: error.message || error, success: false };
};
