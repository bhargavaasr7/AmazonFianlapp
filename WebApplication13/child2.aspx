<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="child2.aspx.cs" Inherits="WebApplication13.child2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row">
            <div class="form-group">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <asp:Image   ID="img2" runat ="server" />
                </div>
                <div class="col-md-4"></div>
                
            </div>
        </div>
        <br />
        <br />
        <div class="row">
            <div class="form-group">
                <div class="col-md-2">
                    <label>Product Name</label>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="lblProductName" runat="server" />
                </div>
                <div class="col-md-4"></div>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="form-group">
                <div class="col-md-2">
                    <label>Category</label>
                </div>
                <div class="col-md-4">                  
                    <asp:Label ID="lblCategory" runat="server" />                    
                </div>
                <div class="col-md-4"></div>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="form-group">
                <div class="col-md-2">
                    <label>Description</label>
                </div>
                <div class="col-md-4">    
                    <asp:Label ID="lblDescription" runat="server" Text="Label"></asp:Label>              
                </div>
                <div class="col-md-4"></div>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="form-group">
                <div class="col-md-2">
                    <label>Price</label>
                </div>
                <div class="col-md-4">                  
                    <asp:Label ID="lblPrice" runat="server" Text="Label"></asp:Label>
                </div>
                <div class="col-md-4"></div>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="form-group">
                <div class="col-md-2">
                    <label>Quantity</label>
                </div>
                <div class="col-md-4">                  
                    <asp:Label ID="lblQuantity" runat="server" />
                </div>
                <div class="col-md-4"></div>
            </div>
        </div>
            
    </div>
</asp:Content>
