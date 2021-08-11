<%@ Page Language="C#"  MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="editA.aspx.cs" Inherits="AssignmentWEBPRN292.GUI.editA" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <br />
    <br />
    <br />
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="username"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
    </p>
    <p>
       &nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label4" runat="server" Text="role"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem Value="admin">admin</asp:ListItem>
            <asp:ListItem Value="user">user</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
       &nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label3" runat="server" Text="status"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="0">Block</asp:ListItem>
            <asp:ListItem Value="1">Active</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
       &nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button6" runat="server" Text="Update" OnClick="Button6_Click" />
    </p>
       <br />
    <br />
    <br />
</asp:Content>



