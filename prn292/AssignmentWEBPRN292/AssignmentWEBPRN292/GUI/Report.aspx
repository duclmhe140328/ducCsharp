<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="AssignmentWEBPRN292.GUI.Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
         .auto-style31 {
            background-color: white;
            border-radius: .25rem;
            width: 148px;
        }
         .col h5{
             font-weight:bold;
             font-size:250%;
         }
         .col {
            flex: 1 0 0%;
            margin-left: 100px;
            }
         .h4,h4{
              margin-left: 100px;
         }
         
         
        .auto-style32 {
            margin-left: 101px;
        }
         
         
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row mt-4">
        <div class="col">
            From
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="218px" NextPrevFormat="FullMonth" Width="318px" DayNameFormat="Shortest" TitleFormat="Month">
                <DayHeaderStyle Font-Bold="True" Font-Size="7pt" BackColor="#CCCCCC" ForeColor="#333333" Height="10pt" />
                <DayStyle Width="14%" />
                <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                <TodayDayStyle BackColor="#CCCC99" />
            </asp:Calendar>
            To
            <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="319px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                <DayStyle Width="14%" />
                <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                <TodayDayStyle BackColor="#CCCC99" />
            </asp:Calendar>
        </div>
        <div class="col">
            <h5>Search order</h5>
            <table style="width: 100%; background-color: white;">
                <tr style="background-color: white;">
                    <td class="auto-style31" Height="35px" background-color: gray;>Account Name</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="380px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style31" Height="35px">Address</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="380px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style31">
                        <asp:Button ID="Button1" class="btn-outline-success" runat="server" Text="Filter" OnClick="Button1_Click" Width="149px" /></td>
                    <td></td>
                </tr>
            </table>
            </br>
        </div>
    </div>

    </br>
    <h4>List Order Not Done</h4>
    <asp:GridView ID="GridView1" runat="server" Width="1235px" AllowPaging="True" class="table" AllowSorting="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="orderID" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" CssClass="auto-style32" CellSpacing="2" EnableModelValidation="True" >
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:HyperLinkField HeaderText="CHECK STATUS ORDER" NavigateUrl="CheckStatus.aspx" Text="DONE" DataNavigateUrlFields="orderid" DataNavigateUrlFormatString="CheckStatus.aspx?id={0}" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetDataTable" TypeName="AssignmentWEBPRN292.DAL.OrderDAO"></asp:ObjectDataSource>
    </br>
        <h4>List Order Done</h4>
    <asp:GridView ID="GridView3" runat="server" Width="1235px" AllowPaging="True" class="table" AllowSorting="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="orderID" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" CssClass="auto-style32" CellSpacing="2" EnableModelValidation="True" >
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:CheckBoxField HeaderText="DONE" Text="Checked" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        
    </asp:GridView>
    <h4>Order Dtail List
    
    <asp:GridView ID="GridView2" runat="server" Width="1014px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" EnableModelValidation="True" CellSpacing="2">
        <Columns>
            <asp:ImageField DataImageUrlField="url" DataImageUrlFormatString="~/Img/{0}">
                <ControlStyle Height="80px" Width="100px" />
            </asp:ImageField>
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
</asp:Content>
