<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="profileUser.aspx.cs" Inherits="AssignmentWEBPRN292.GUI.profileUser" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
         .pro{
             text-align:center;
             margin-left:150px;
         }
         
         
    </style>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
   
        <p style="text-align:center;font-size:50px;font-weight:bold">HISTORY&#39;S ORDER OF [<asp:Label ID="lbInfor" runat="server" Text=""></asp:Label>
            ]</p>
      &nbsp;&nbsp;&nbsp;&nbsp <asp:GridView  ID="GridView1" runat="server" EnableModelValidation="True" Height="202px" Width="1256px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" CssClass="pro">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    </asp:GridView>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />

</asp:Content>


