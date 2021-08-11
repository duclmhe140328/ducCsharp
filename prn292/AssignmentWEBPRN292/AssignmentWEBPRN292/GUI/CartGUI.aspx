<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CartGUI.aspx.cs" Inherits="AssignmentWEBPRN292.GUI.CartGUI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="Check out" OnClick="Button1_Click" />
        </br>
          </br>
        <asp:GridView ID="GridView1" runat="server" Width="939px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        </asp:GridView>
        <br />
        <div class="price-form" style="display:inline-flex">
            <div class="price-head">
            <h1>Total :&nbsp;
            <asp:Label ID="lblTotal" runat="server" Font-Bold="True" Font-Size="45px" ForeColor="#FFCC00" ></asp:Label>
                $</h1>
        </div>
        <div class="price-title">
        </div>
        </div>
        <br />
    </div>

</asp:Content>
