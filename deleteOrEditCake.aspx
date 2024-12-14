<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteOrEditCake.aspx.cs" Inherits="cakeRecords.deleteOrEditCake" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update or Delete Cake</title>
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
            background-color: #008080; /* Teal color */
            border-color: #006666; /* Darker teal border */
        }

            .btn-teal:hover {
                background-color: #006666; /* Darker teal when hovered */
                border-color: #004d4d; /* Even darker border on hover */
            }

        .form-box {
            border: 1px solid #ddd;
            padding: 20px;
            margin-top: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .btn-group {
            display: flex;
            justify-content: space-between;
        }
    </style>
</head>
<body>
    <!-- Navbar Section -->
    <nav class="navbar navbar-expand-lg bg-teal">
        <div class="container-fluid">
            <a class="navbar-brand text-white" href="viewall.aspx">Sweet Tooth Bakery</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link text-white" href="viewall.aspx">View Cakes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="insertcake.aspx">Add Cakes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="deleteoreditcake.aspx">Edit Cakes</a>
                        <!-- Link to Update Cake page -->
                    </li>

                </ul>
            </div>
        </div>
    </nav>



    <h1 class="text-center">Update or Delete Cake</h1>
    <p class="text-center">Select an action to proceed with updating or deleting a cake.</p>

    <form runat="server">
        <div class="container">
            <div class="row">
                <div class="col">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server"></asp:CheckBoxList>
                    <asp:Button ID="btnDelete" runat="server" Text="Delete cake" OnClick="btnDelete_Click" CssClass="btn btn-teal" />
                    <asp:Button ID="btnLookUp" runat="server" Text="Lookup Cake" OnClick="btnLookup_Click" CssClass="btn btn-teal" />
                </div>
                <div class="col">
                    <fieldset>
                        <legend>Cake Information</legend>
                        <asp:TextBox runat="server" ID="txtCakeID" Visible="false" />
                         <div class="form-group mb-3">
                            <label for="Cake Name">Cake Name</label>
                            <asp:TextBox runat="server" ID="txtCakeName" CssClass="form-control" />
                         </div>
                        <div class="form-group mb-3">
                            <label for="Cake Flavor">Cake Flavor</label>
                            <asp:TextBox runat="server" ID="txtFlavor" CssClass="form-control" />
                       </div>
                        <div class="form-group mb-3">
                            <label for="Cake Description">Cake Description</label>
                            <asp:TextBox runat="server" ID="txtDescription" CssClass="form-control" />
                       </div>
                        <div class="form-group mb-3">
                            <label for="Cake Price">Cake Price</label>
                            <asp:TextBox runat="server" ID="txtPrice" CssClass="form-control" />
                        </div>
                        <div class="form-group mb-3">
                            <label for="CreatedDate">Cake Creation Date:</label>
                            <asp:TextBox runat="server" ID="txtCreatedDate" CssClass="form-control" Visible="false" />
                       </div>
                        <asp:Button Text="Update Cake" runat="server" OnClick="btnUpdateCake_Click" CssClass="btn-teal" />
                    </fieldset>

                </div>
            </div>
        </div>

        <asp:Label ID="lbl1" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
