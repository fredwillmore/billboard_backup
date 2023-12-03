alert('here')
import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Home from "../components/Home";
import Billboard from "../components/Billboard";

export default (
  <Router>
    <Routes>
      <Route path="/" element={<Home />} />
    </Routes>
  </Router>
);