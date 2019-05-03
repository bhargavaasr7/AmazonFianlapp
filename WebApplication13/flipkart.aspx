<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="flipkart.aspx.cs" Inherits="WebApplication13.flipkart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <div>
            <center><table border="3" WIDTH="60%" cellpadding="4" cellspacing="3"></center>
            <h1>Amazon.In</h1>
                <tr>
                    <td>
                        <label>Product Name</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtpn" CssClass="form-control"  runat="server" />
                        <asp:RequiredFieldValidator ID="rfvpn" ErrorMessage="productname is required" ForeColor="red" ControlToValidate="txtpn" runat="server" />
                    </td>
                </tr>
                 <tr>
                    <td>
                        <label>Category</label>
                    </td>
                    <td>
                        <asp:DropDownList ID="txtcat" CssClass="dropdown-toggle" runat="server">
                            <asp:ListItem Text="----Select----" />
                            <asp:ListItem Text="Electronics" />
                            <asp:ListItem Text="Home appliances" />
                            <asp:ListItem Text="Sports" />
                            <asp:ListItem Text="Shoes & clothes" />
                        </asp:DropDownList>                        
                        <asp:RequiredFieldValidator ID="rfvcat" ErrorMessage="select the category" ForeColor="red" ControlToValidate="txtcat" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Description</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtdes" CssClass="form-control" runat="server"/>                      
                        <asp:RequiredFieldValidator ID="rfvdes" ErrorMessage="enter the description" ForeColor="red" ControlToValidate="txtdes" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Price</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtprice" CssClass="form-control" runat="server"/>                      
                        <asp:RequiredFieldValidator ID="rfvprice" ErrorMessage="enter the price" ForeColor="red" ControlToValidate="txtprice" runat="server" />
                    </td>
                </tr>
                 <tr>
                    <td>
                        <label>Quantity</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtquan" CssClass="form-control" runat="server"/>                      
                        <asp:RequiredFieldValidator ID="rfvquan" ErrorMessage="enter the quantity" ForeColor="red" ControlToValidate="txtquan" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:FileUpload ID="img" runat="server" />
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="button" CssClass=" btn-primary" runat="server" Text="search" OnClick="button_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lb1" runat="server" />
                    </td>
                </tr>                    
             </table>
        </div>        
    </form>
</body>
</html>
