<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CheckOutForm.aspx.cs" Inherits="AssignmentWEBPRN292.GUI.CheckOutForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <div class="row">
            <div class="col">
                <asp:GridView ID="GridView1" runat="server" Width="595px">
                </asp:GridView>
                <br />
                <h1>Total price : 
                    <asp:Label runat="server" Text="Label" ID="txtTotalPrice"></asp:Label>
                 $</h1>
            </div>
            <div class="col">
                <form>
                    
                    <table>
                        <tr>
                            <td style ="width:15%;";>FullName</td>
                            <td>
                                <asp:TextBox runat="server" ID="txtFullname" Width="428px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFullname" ErrorMessage="Please enter full name!"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td>
                                <asp:TextBox runat="server" class="form-text" Width="428px" ID="txtEmail"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter email!"></asp:RequiredFieldValidator>

                            </td>
                        </tr>
                        <tr>
                            <td>Address</td>
                            <td>
                                <asp:TextBox runat="server" class="form-text" Width="428px" ID="txtAddress"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAddress" ErrorMessage="Please enter address"></asp:RequiredFieldValidator>

                            </td>
                        </tr>
                </table>
                    
                    <asp:Button runat="server" Text="Order" class="btn btn-primary" OnClick="Unnamed3_Click" />
                </form>
            </div>
        </div>
    </div>
    </div>
</asp:Content>
