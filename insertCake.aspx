<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insertCake.aspx.cs" Inherits="cakeRecords.insertCake" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Cake</title>
    <!-- Link Bootstrap for styling -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .bg-teal {
            background-color: #008080;
        }
        .text-white {
            color: white;
        }
        .btn-teal {
            background-color: #008080;  /* Teal color */
            border-color: #006666;      /* Darker teal border */
        }
        .btn-teal:hover {
            background-color: #006666;  /* Darker teal when hovered */
            border-color: #004d4d;      /* Even darker border on hover */
        }
    </style>
</head>
<body>
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


    <div class="container my-4">
        <!-- Title Section -->
        <h1 class="text-center">Add Cake</h1>
        <p class="text-center">Please fill in the details below to add a new cake.</p>

        <!-- Cake Details Form -->
        <form runat="server">
            <div class="form-group mb-3">
                <label for="name">Cake Name</label>
                 <asp:TextBox runat="server" ID="cakeNameInput" CssClass="form-control" />  
            </div>
            <div class="form-group mb-3">
                <label for="flavor">Flavor</label>
                <asp:TextBox runat="server" ID="cakeFlavorInput" CssClass="form-control" />
            </div>
            <div class="form-group mb-3">
                <label for="description">Description</label>
                <asp:TextBox runat="server" ID="cakeDescriptionInput" CssClass="form-control" />
            </div>
            <!-- Cake Price -->
            <div class="form-group mb-3">
                <label for="price">Price</label>
                <asp:TextBox runat="server" ID="cakePriceInput" CssClass="form-control" />
            </div>
            <!-- Submit Button -->
            <div class="form-group">
                <asp:Button Text="Add Cake" runat="server" ID="btnSave" CssClass="btn btn-teal" OnClick="Save_Click" /> 
            </div>
        </form>
         <asp:Label ID="lbl1" runat="server" ></asp:Label>
    </div>

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
