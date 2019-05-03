﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="flipkartshopingorder.aspx.cs" Inherits="WebApplication13.flipkartshopingorder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br />

        <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="form-group" style="text-align:center">
                        <h2>
                            <label>Order Details</label>
                        </h2>                       
                    </div>
                </div>
                <div class="col-md-3"></div>
        </div>

        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">

                    <div class="form-group">
                        <label><b>Customer Id</b></label>
                        <asp:Label ID="lblCustomer" CssClass="form-control" Text="" runat="server"/>                       
                    </div>    

                    <div class="form-group">
                        <label><b>Product Id</b></label>
                        <asp:Label ID="lblProductId" CssClass="form-control" Text="" runat="server"/>   
                    </div>
                
                    <div class="form-group">
                        <label><b>Product Name</b></label>
                        <asp:Label ID="lblProductName" CssClass="form-control" Text="" runat="server"/>                       
                    </div>
                
                    <div class="form-group">
                        <label><b>Quantity</b></label>
                        <%--<asp:TextBox ID="txtQuantity" CssClass="form-control" runat="server"  OnTextChanged="dpQuantity_SelectedIndexChanged"/>--%>
                        <asp:dropdownlist ID="dpQuantity" CssClass="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dpQuantity_SelectedIndexChanged" >
                            <asp:ListItem Text="--Select--"  Value="0"/>
                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                            <asp:ListItem Text="6" Value="6"></asp:ListItem>
                            <asp:ListItem Text="7" Value="7"></asp:ListItem>
                            <asp:ListItem Text="8" Value="8"></asp:ListItem>
                            <asp:ListItem Text="9" Value="9"></asp:ListItem>
                            <asp:ListItem Text="10" Value="10"></asp:ListItem>
                        </asp:dropdownlist>
                        
                    </div>

                    <div class="form-group">
                        <label><b>TotalPrice</b></label>
                        <asp:Label ID="lblTotalPrice" CssClass="form-control" Text="" runat="server" />
                    </div>

                    

                    
                </div>
            <div class="col-md-3"></div>
        </div>

        <div class="row">
            <div class="col-md-4"></div>
                    <div class="col-md-1">
                        <asp:Button ID="btnPlaceOrder" class="btn btn-primary" runat="server" Text="Place Order" OnClick="btnPlaceOrder_Click" />
                    </div>
                    <div class="col-md-2"></div>
                    <div class="col-md-1">
                        <asp:Button ID="btnReset" class="btn btn-danger" runat="server" Text="Reset" OnClick="btnReset_Click" />
                    </div>
                    <div class="col-sd-4"></div>
        </div>

    </div>
</asp:Content>
