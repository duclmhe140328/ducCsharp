<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="AssignmentWEBPRN292.GUI.ShoppingGUI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .auto-style5 {
            margin-right: 552px;
        }
        .imgship{
            width:93%;
            height:90%;
            margin-left:90px;
            
        }
        .gif{
             width: 101%;
             height: 470px;
             margin-left: 2px;
             padding-right:52px;
        }
        .auto-style6 {
            width: 100%;
            border-top-left-radius: calc(.25rem - 1px);
            border-top-right-radius: calc(.25rem - 1px);
        }
        .container p{
            font-size:150%;
            font-weight:bold;
        }
        .auto-style7 {
        width: 166px;
        border-top-left-radius: calc(.25rem - 1px);
        border-top-right-radius: calc(.25rem - 1px);
        height: 182px;
        margin-left: 0px;
        margin-top: 25px;
        padding: 10px;
    }
        .auto-style8 {
            width: 191px;
        }
        .auto-style9 {
            width: 162px;
        }
        .auto-style11 {
            width: 160px;
            padding-left: 42px;

        }
        .auto-style12 {
            height: 180px;
            width: 1436px;
        }
        .auto-style13 {
            width: 624px;
        }
        .auto-style17 {
            width: 169px;
            padding-left: 42px;
        }
        .auto-style18 {
            width: 169px;
        }
        .auto-style19 {
            width: 154px;
        }
        .auto-style20 {
            margin-right: 552px;
        }
        .auto-style21 {
            width: 1423px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    

    <div class="container">             
         <img src="../Img/giay1.gif" alt="First slide" class="gif">           
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetNewShoes" TypeName="AssignmentWEBPRN292.DAL.ProductDAO"></asp:ObjectDataSource>
        <div class="section-category-list">
        <div class="shopee-header-section shopee-header-section--simple">
        <div class="shopee-header-section__header">
            <div class="shopee-header-section__header__title"><a style="font-weight:bold; font-size:x-large">Category</a><br />
                <br />
                 <table class="auto-style12">
                            <tr>
                                <td class="auto-style11">
                                    <asp:ImageButton ID="ImageButton1" ImageUrl="/Img/nikecate.jpg" runat="server" CssClass="auto-style13" Width="126px" OnClick="ImageButton1_Click" />
                                </td>
                                <td class="auto-style19">
                                    <asp:ImageButton ID="ImageButton2" ImageUrl="/img/pumacate.png" runat="server" CssClass="auto-style13" Width="126px" OnClick="ImageButton2_Click" />
                                </td>
                                </td> 
                        <td class="auto-style11">
                            <asp:ImageButton ID="ImageButton3" ImageUrl="/Img/vanscate.jpg" runat="server" CssClass="auto-style13" Width="126px" OnClick="ImageButton3_Click" />
                        </td>
                    <td class="auto-style17">
                            <asp:ImageButton ID="ImageButton4" ImageUrl="/img/adidascate.jpg" runat="server" CssClass="auto-style13" Width="126px" OnClick="ImageButton4_Click" />
                        </td>
                    <td class="auto-style11">
                            <asp:ImageButton ID="ImageButton5" ImageUrl="/img/snerakercate.jpg" runat="server" CssClass="auto-style13" Width="126px" OnClick="ImageButton5_Click" />
                        </td>
                            </tr>
                            <tr>
                                <td class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp; Giày Nike</td>
                                <td class="auto-style19">&nbsp;&nbsp;&nbsp;Giày Puma </td>
                                <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Giày Vans</td>
                                <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Giày Adidas</td>
                                <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Giày Sneraker</td>
                            </tr>

                        </table>
&nbsp;<table border="0" >  
                       
                        
                </table>
            </div>
        </div>
            </div>
            </div>
        <p style="font-size: 150%;" class="auto-style21">SEARCH :&nbsp; <asp:TextBox ID="TextBox1" runat="server" Width="604px"></asp:TextBox>
            &nbsp;
            <asp:Button ID="Button3" runat="server" Text="Search" OnClick="Button3_Click" Font-Bold="True" ForeColor="Red" />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="Price:" Font-Size="XX-Large"></asp:Label>
&nbsp;<asp:DropDownList AutoPostBack="true" ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Font-Bold="True" Font-Size="X-Large" ForeColor="#FF3300" Width="226px">
                <asp:ListItem Selected="True" Value="low">Less than 199$</asp:ListItem>
                <asp:ListItem Value="normal">From 200$ to 399$</asp:ListItem>
                <asp:ListItem Value="high">Over 400</asp:ListItem>
            </asp:DropDownList>
         </p>
         <p style="font-size: 150%; text-align:center ; color:orangered";>
             <asp:Label ID="Label2" runat="server" Text="Most Popular"></asp:Label>
         </p>
         <p style="font-size: 100%; text-align:center;color:deepskyblue">
             <asp:Label ID="Label3" runat="server" Text="Give your feet the beauty treatment that only brand new shoes can give"></asp:Label>
         </p>
         
         <p style="font-size: 100%;">
            <asp:DataList ID="DataList2" runat="server" DataSourceID="ObjectDataSource2" RepeatColumns="5" CssClass="auto-style20" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Width="1199px" HorizontalAlign="Center" RepeatDirection="Horizontal" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="16px" OnSelectedIndexChanged="DataList2_SelectedIndexChanged"   >
                <AlternatingItemStyle BackColor="#F7F7F7" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <ItemTemplate>
                <div class="card" style="width: 250px; height: 350px;">
                    <img class="auto-style7" src="../Img/<%# Eval("image") %>" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title"><%# Eval("name") %></h5>
                        <p class="card-title"><%# Eval("price")  %>
                            </p>
                        <a href="<%# "GUI/ShoesDetail.aspx?ID=" + Eval("id")+"&brandID="+Eval("brandID") %>" class="btn btn-primary">View More</a>
                        <a href="<%# "GUI/AddToCart.aspx?action=addToCart&ID=" + Eval("id") %>" class="btn btn-primary">Add to cart</a>
                    </div>
                </div>
            </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        </asp:DataList>
             <p style="font-size: 100%;">
                 &nbsp;<p style="text-align:center;background-size:cover"><asp:Image ID="Image1" ImageUrl="/Img/sale.png" runat="server" /></p>
             <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetTop5Shoes" TypeName="AssignmentWEBPRN292.DAL.ProductDAO"></asp:ObjectDataSource>
            <asp:DataList ID="DataList3" runat="server" DataSourceID="ObjectDataSource3" RepeatColumns="5" CssClass="auto-style20" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Width="1199px" HorizontalAlign="Center" RepeatDirection="Horizontal" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="16px"   >
                <AlternatingItemStyle BackColor="#F7F7F7" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <ItemTemplate>
                <div class="card" style="width: 250px; height: 350px;">
                    <img class="auto-style7" src="../Img/<%# Eval("image") %>" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title"><%# Eval("name") %></h5>
                        <p class="card-title"><%# Eval("price")  %> ( On Sale )
                            </p>                  
                        <a href="<%# "GUI/ShoesDetail.aspx?ID=" + Eval("id")+"&brandID="+Eval("brandID") %>" class="btn btn-primary">View More</a>
                        <a href="<%# "GUI/AddToCart.aspx?action=addToCart&ID=" + Eval("id") %>" class="btn btn-primary">Add to cart</a>
                    </div>
                </div>
            </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        </asp:DataList>
             <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="GetTop5ShoesSale" TypeName="AssignmentWEBPRN292.DAL.ProductDAO"></asp:ObjectDataSource>
         </p>
         <p style="font-size: 150%; text-align:center;color:orangered">
             <asp:Label ID="Label4" runat="server" Text="New Products"></asp:Label>
         </p>
    </div>
  
    <div class="container" style="display:flex">
            <asp:DataList ID="DataList1" runat="server" DataSourceID="ObjectDataSource1" RepeatColumns="5" CssClass="auto-style20" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Width="1199px" HorizontalAlign="Center" RepeatDirection="Horizontal" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="16px" >
                <AlternatingItemStyle BackColor="#F7F7F7" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <ItemTemplate>
                <div class="card" style="width: 250px; height: 350px;">
                    <img class="auto-style7" src="../Img/<%# Eval("image") %>" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title"><%# Eval("name") %></h5>
                        <p class="card-title"><%# Eval("price")  %>
                            </p>
                        <a href="<%# "GUI/ShoesDetail.aspx?ID=" + Eval("id")+"&brandID="+Eval("brandID") %>" class="btn btn-primary">View More</a>
                        <a href="<%# "GUI/AddToCart.aspx?action=addToCart&ID=" + Eval("id") %>" class="btn btn-primary">Add to cart</a>
                    </div>
                </div>
            </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        </asp:DataList>
            <br />
    </div>
    <div class="container" style="display:flex">
            <asp:DataList ID="DataList4" runat="server" DataSourceID="ObjectDataSource4" RepeatColumns="5" CssClass="auto-style20" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Width="1199px" HorizontalAlign="Center" RepeatDirection="Horizontal" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both" Height="16px" Visible="False"   >
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <ItemStyle BackColor="White" ForeColor="#003399" />
            <ItemTemplate>
                <div class="card" style="width: 250px; height: 350px;">
                    <img class="auto-style7" src="../Img/<%# Eval("image") %>" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title"><%# Eval("name") %></h5>
                        <p class="card-title"><%# Eval("price")  %>
                            </p>
                        <a href="<%# "GUI/ShoesDetail.aspx?ID=" + Eval("id")+"&brandID="+Eval("brandID") %>" class="btn btn-primary">View More</a>
                        <a href="<%# "GUI/AddToCart.aspx?action=addToCart&ID=" + Eval("id") %>" class="btn btn-primary">Add to cart</a>
                    </div>
                </div>
            </ItemTemplate>
                <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        </asp:DataList>
        </div>
    <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" SelectMethod="GetAllShoes" TypeName="AssignmentWEBPRN292.DAL.ProductDAO"></asp:ObjectDataSource>
    <img src="../Img/anhcuoi1.png" class="imgship"></image>
</asp:Content>
