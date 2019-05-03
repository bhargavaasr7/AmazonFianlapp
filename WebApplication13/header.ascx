<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="header.ascx.cs" Inherits="WebApplication13.header" %>
<link href="Content/bootstrap.css" rel="stylesheet" />
<style>
* {box-sizing: border-box;}

body { 
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.header {
  overflow: hidden;
  background-color: #f1f1f1;
  padding: 20px 10px;
}

.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px; 
  line-height: 25px;
  border-radius: 4px;
}

.header a.logo {
  font-size: 25px;
  font-weight: bold;
}

.header a:hover {
  background-color: #ddd;
  color: black;
}

.header a.active {
  background-color: dodgerblue;
  color: white;
}

.header-right {
  float: right;
}

@media screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  
  .header-right {
    float: none;
  }
}
</style>
<div class="container">
    <div class="row">
    <div class="col-md-7">
        <asp:Image ImageUrl="~/images/amazon-625x352.jpg" runat="server" Height="100px" Width="314px" />
    </div>
    <div class="col-md-2">    
    </div>
    <div class="col-md-3"> 
        <asp:Button ID="txtbox" class="btn btn-primary"  Text ="SignIn" runat="server" OnClick="txtbox_Click" CommandName="signin" />
    </div>
  </div>
    </div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Amazon</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"></li>
      <li><a href="#">Electroincs</a></li>
      <li><a href="#">Fashions</a></li>
      <li><a href="#">Home appliances</a></li>
    </ul>
  </div>
</nav>
  
  
