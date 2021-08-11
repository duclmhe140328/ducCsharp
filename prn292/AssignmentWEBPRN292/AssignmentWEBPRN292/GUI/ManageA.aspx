<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageA.aspx.cs" Inherits="AssignmentWEBPRN292.GUI.ManageA" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
     <br />
     <br />
     <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" Height="242px" Width="570px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="accountid" HeaderText="Account" />
            <asp:BoundField DataField="role" HeaderText="Role" />
            <asp:CheckBoxField DataField="status" HeaderText="Status" />
            <asp:HyperLinkField DataNavigateUrlFields="accountid" DataNavigateUrlFormatString="editA.aspx?id={0}" HeaderText="Action" Text="Edit" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:GridView>

    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    <br />
    <br />
    <br />

</asp:Content>


