import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import axios from "../apis/axiosConfig";

const CreateAsset = () => {
  const navigate = useNavigate();
  const [formData, setFormData] = useState({
    id: "",
    trip_id: "",
    status: "",
    revenue: "",
    rapid: "",
    cm: "",
    bus: "",
    refund: "",
    check_in: "",
    check_out: "",
    traveller_id: "",
  });

  const [error, setError] = useState(null);
  const [success, setSuccess] = useState(null);

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData((prev) => ({ ...prev, [name]: value }));
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const payload = {
        fcn: "createTicket",
        args: [
          JSON.stringify({
            ...formData,
          }),
        ],
      };
      const response = await axios.post(
        "/channels/channel1/chaincodes/ticketcontract",
        payload
      );
      if (response.data) {
        setSuccess("Ticket created successfully!");
        setError(null);
        navigate("/dashboard"); // Redirect to the dashboard immediately
      }
    } catch (err) {
      setError("Failed to create ticket");
      setSuccess(null);
      console.error(err);
    }
  };

  return (
    <div className="p-8 bg-gray-100 min-h-screen flex items-center justify-center">
      <div className="bg-white p-8 rounded shadow-md w-full max-w-lg">
        <h2 className="text-2xl font-bold mb-6 text-center">Create Asset</h2>

        {error && <p className="text-red-500 mb-4">{error}</p>}
        {success && <p className="text-green-500 mb-4">{success}</p>}

        <form onSubmit={handleSubmit} className="space-y-4">
          {/* Dynamic Fields */}
          {Object.keys(formData).map((key) => {
            // Use date input for check_in and check_out
            const isDateField = key === "check_in" || key === "check_out";
            return (
              <div key={key}>
                <label
                  htmlFor={key}
                  className="block text-sm font-medium text-gray-700"
                >
                  {key.replace("_", " ")}
                </label>
                <input
                  type={isDateField ? "datetime-local" : "text"}
                  name={key}
                  id={key}
                  value={formData[key]}
                  onChange={handleChange}
                  className="mt-1 block w-full rounded-md border px-2 py-2 border-gray-300 shadow-sm focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm"
                  required
                />
              </div>
            );
          })}

          <button
            type="submit"
            className="w-full bg-blue-600 text-white py-2 px-4 rounded hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2"
          >
            Create
          </button>
        </form>
      </div>
    </div>
  );
};

export default CreateAsset;
