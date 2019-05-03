<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="child1.aspx.cs" Inherits="WebApplication13.child11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="Content/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
    <div class="row">
      <div class="col-md-2"></div>
    <div class="col-md-8">
                     <asp:DataList ID="dlProducts" GridLines="Both" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="dlProducts_ItemCommand">
                        <ItemTemplate>
                            <div>
                                <asp:Image ImageUrl='<%#"imagehandler.ashx?ID=" +Eval("ID") %>'  ID="lblproductimage"  runat="server" Height="150" Width="150" />
                            </div>
                            <div>
                            <asp:Label Text='<%#Eval("product_name") %>' ID="lblProductName" runat="server"  />
                        </div>
                        <div>
                            <asp:Label Text='<%#Eval("price") %>' ID="lblCity" runat="server" />
                        </div>
                        <div>
                            <asp:Button Text="Details" CssClass="btn-primary" ID="btnDetails" runat="server" CommandName="Details" CommandArgument='<%#Eval("ID") %>' />
                            <asp:Button Text="BuyNow" CssClass="btn-danger" ID="btnBuyNow" runat="server" CommandName="BuyNow" CommandArgument='<%#Eval("ID") %>' />
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
        </div>
        <div class="col-md-2"></div>
        </div>  
        </div>
</asp:Content>
