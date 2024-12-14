<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewAll.aspx.cs" Inherits="cakeRecords.viewAll" %>

     <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sweet Tooth Bakery</title>
    <!-- Link Bootstrap for styling -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <style>
        /* Custom Styling */
        .bg-teal {
            background-color: #008080; /* Teal background color */
        }
        .navbar-brand {
            font-size: 1.5rem; /* Increase the size of the logo text */
            font-weight: bold;
        }
        .navbar-nav .nav-link {
            font-size: 1.1rem;
            transition: color 0.3s ease-in-out;
        }
        .navbar-nav .nav-link:hover {
            color: #ffcc00; /* Highlight color for the links on hover */
        }

        /* Image and Text Styling */
        .container {
            display: flex;
            align-items: center;
            justify-content: center;
            flex-wrap: wrap;
            margin-top: 40px;
        }

        .container .image img {
            max-width: 100%;
            height: auto;
            border-radius: 10px; /* Add rounded corners to the image */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            max-height: 300px;
        }

        .container .text {
            font-size: 2rem;
            font-weight: bold;
            color: #333;
            padding-left: 20px;
            text-align: center;
        }

        /* Table Section */
        .table-container {
            margin-top: 50px;
        }

        .table {
            background-color: #f9f9f9; /* Light background color for the table */
            color: #333; /* Dark text color for better contrast */
            border-radius: 8px; /* Rounded corners for the table */
        }

        .table th {
            background-color: #008080; /* Teal header */
            color: white;
            font-weight: bold;
        }

        .table tbody tr:hover {
            background-color: #e0f7f7; /* Light teal background on hover */
        }

        .table td, .table th {
            text-align: center;
            padding: 12px 15px;
        }

        /* Button Styling */
        .btn-teal {
            background-color: #008080;
            color: white;
            border: none;
            font-size: 1rem;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .btn-teal:hover {
            background-color: #006666;
        }

    </style>
</head>
<body>
    <!-- Navbar Section -->
  <nav class="navbar navbar-expand-lg bg-teal">
    <div class="container-fluid">
        <a class="navbar-brand text-white" href="viewall.aspx">Sweet Tooth Bakery</a> <!-- Home Page -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link text-white" href="viewall.aspx">View Cakes</a> <!-- Link to View All Cakes page -->
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="insertcake.aspx">Add Cakes</a> <!-- Link to Add Cake page -->
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="deleteoreditcake.aspx">Edit Cakes</a> <!-- Link to Update Cake page -->
                </li>
                
            </ul>
        </div>
    </div>
</nav>



    <!-- Image and Text Section -->
    <div class="container">
        <div class="image">
            <img src="/Img/Cake.jpg" alt="Chocolate cake" />
        </div>
        <div class="text">
            <h1>Cake Inventory Management</h1>
            <p>Efficiently track and manage our cake selection to ensure we’re always stocked with the freshest cakes for our customers.</p>
        </div>
    </div>

    <!-- Table Section -->
    <div class="container table-container">
       <asp:Placeholder ID="CakeTable" runat="server"></asp:Placeholder>
    </div>

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

