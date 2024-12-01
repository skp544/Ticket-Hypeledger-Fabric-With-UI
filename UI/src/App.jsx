import React from "react";
import LoginPage from "./pages/LoginPage";
import DashboardPage from "./pages/DashboardPage";
import { Route, Routes } from "react-router-dom";
import CreatePage from "./pages/CreatePage";

const App = () => {
  return (
    <Routes>
      <Route path="/" element={<LoginPage />} />
      <Route path="/dashboard" element={<DashboardPage />} />
      <Route path="/create" element={<CreatePage />} />
    </Routes>
  );
};

export default App;
