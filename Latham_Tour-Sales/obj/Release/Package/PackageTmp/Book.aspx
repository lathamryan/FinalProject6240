<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book.aspx.cs" Inherits="Latham_Tour_Sales.Book" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book with Us</title>
    <link rel="stylesheet" type="text/css" href="Content/bootstrap.min.css" media="screen"/>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>

<body>
    <form id="form1" runat="server">
<div>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#"><img src="Images/ULTIMATE SKI TOURING ADVENTURES.png" height="85"/></a>

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="Default.aspx" style="font-size: x-large">Home<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="Book.aspx" style="font-size: x-large">Book<span class="sr-only">(current)</span></a>
            </li>            
            <li class="nav-item active">
                <a class="nav-link" href="AboutUs.aspx" style="font-size: x-large">About<span class="sr-only">(current)</span></a>
            </li>
        </ul>
    </div>
</nav>

<div class="jumbotron text-left">
    <h1>Book Your Trip!</h1>
    <p> Name:
        <asp:TextBox ID="txtName" runat="server" CssClass="text-md-left" OnTextChanged="txtName_TextChanged" Width="302px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" CssClass="alert-danger" ErrorMessage="Name is a required."></asp:RequiredFieldValidator>
    </p>
    <p> Email:
        <asp:TextBox ID="txtEmail" runat="server" Width="306px" CssClass="text-md-left"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" CssClass="alert-danger" ErrorMessage="Email is a required."></asp:RequiredFieldValidator>
    </p>
    <p> Adventure Package:
        <asp:DropDownList ID="ddlPackage" runat="server" DataSourceID="SqlDataSource1" DataTextField="ProdDesc" DataValueField="ProdID" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OrderConnectionString %>" SelectCommand="SELECT [ProdID], [ProdDesc], [UnitPrice] FROM [Product]"></asp:SqlDataSource>
    </p>
    <p> Availability:<asp:ListBox ID="lbPackageAvailable" runat="server" DataSourceID="SqlDataSource3" AutoPostBack="True" DataTextField="BookingDesc" DataValueField="BookingID"></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:OrderConnectionString %>" SelectCommand="SELECT * FROM [Booking] WHERE ([ProdID] = @ProdID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlPackage" Name="ProdID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p> 
        <asp:Button ID="Button1" CssClass = "btn btn-primary btn-lg" runat="server" OnClick="Button1_Click" Text="Book It!" />
    </p>
    <p> 
        <asp:Label ID="Label1" runat="server" Text="Confirmation:"></asp:Label>
        <asp:TextBox ID="txtOutPut" runat="server" ReadOnly="True" Width="1200px" CssClass="text-md-left"></asp:TextBox>
    </p>
</div>
</div>
    </form>
</body>
</html>
