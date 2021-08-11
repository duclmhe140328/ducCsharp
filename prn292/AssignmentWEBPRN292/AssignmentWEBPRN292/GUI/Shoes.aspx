<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Shoes.aspx.cs" Inherits="AssignmentWEBPRN292.GUI.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Manager Shoes
    </h1>
    
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" DataSourceID="ObjectDataSource1" EnableModelValidation="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnPageIndexChanged="GridView1_PageIndexChanged" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="8" Width="1326px" Height="244px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:ImageField DataImageUrlField="image" DataImageUrlFormatString="~/Img/{0}"
                ControlStyle-Width="100" ControlStyle-Height = "80">
<ControlStyle Height="80px" Width="100px"></ControlStyle>
            </asp:ImageField>
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetDataTable" TypeName="Lab4_Template.DAL.DAO" OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:Parameter DefaultValue="SELECT [id],[name],[size],FORMAT([price],'C0') price,[StatusSale],[image],[brandID],[quantity] FROM [Project_PRN292].[dbo].[Product]" Name="sqlSelect" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <br>
    <p>
    <asp:Button ID="BtShowAdd" runat="server" Text="Add New Product" OnClick="BtShowAdd_Click" />
    </p>
    <br>

    <asp:Panel ID="PanelEditDelete" runat="server" Visible="False">
        <table>
            <tr>
                <th>
                    <asp:Label ID="IDSelect" runat="server" Text="Label"></asp:Label>
                </th>
            </tr>
            <tr>
                <td>img</td>
                <td>
                <asp:TextBox ID="TextImg" runat="server"></asp:TextBox>
                
                <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Img" />
                </td>
            </tr>
            <tr>
                <td>Name Product</td>
                <td>
                <asp:TextBox ID="TextName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>size</td>
                <td>
                <asp:TextBox ID="TextSize" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Price</td>
                <td>
                <asp:TextBox ID="TextPrice" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Statuc Sale</td>
                <td>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>brand</td>
                <td>
                <asp:TextBox ID="TextBrandID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Quantity</td>
                <td>
                <asp:TextBox ID="TextQuantity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btEdit" runat="server" Text="Edit" OnClick="btEdit_Click" />
                    <asp:Button ID="btAdd" runat="server" Text="Add" OnClick="btAdd_Click" />
                </td>
                <td>
                    <asp:Button ID="btDelete" runat="server" Text="Delete" OnClick="btDelete_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    
</asp:Content>
