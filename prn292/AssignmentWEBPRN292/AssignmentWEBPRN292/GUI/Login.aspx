<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AssignmentWEBPRN292.GUI.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        /*.auto-style3 {
            display: block;
            width: 43%;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #212529;
            background-clip: padding-box;
            -webkit-appearance: none;
            -moz-appearance: none;
            border-radius: .25rem;
            border-block-start-style:groove;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
            font-weight:bold;
            
        }
        .l1{
            font-weight:bold;
        }*/
        .llr{
            font-weight:bold;
            font-size: 120%;
            color:brown;
            background-color:white;
            border:none;
        }
        .auto-style14 {
            margin-left: 160px;
        }
        .bordercs{
            border-radius:10px;
        }
        .auto-style15 {
            width: 132px;
            height: 111px;
            margin-top: 25px;
            padding: 10px;
            margin-left: 520px;
        }
        .inputp{
            margin-left:-9px;
            border-radius:10px;
         
        }
        .auto-style16 {
            font-weight:bold;
            font-size: 120%;
            color:brown;
            background-color:white;
            border:none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">

        
            <p colspan="100" class="auto-style15" style="font-size:60px; font-weight:bold">LOGIN</p>
            <div class="form-group">
                <p class="auto-style14">
                <label class="l1" for="exampleInputEmail1" style="font-size: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Username </label>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtUserName" class="auto-style3" runat="server" width="271px" Height="35px" CssClass="bordercs"></asp:TextBox>
                <asp:Label ID="lbInfor" runat="server" Text=""></asp:Label>
            &nbsp;
                </p>
                <label class="l1" for="exampleInputPassword1" style="font-size: 30px" >
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password&nbsp;&nbsp;&nbsp;&nbsp;
                </label>
                <asp:TextBox ID="txtPassword" type="password" class="auto-style3" runat="server" TextMode="Password" width="269px" Height="35px" CssClass="inputp" ></asp:TextBox>
                <asp:TextBox ID="lbl" runat="server" class="llr" Enabled="false" width="510px " Height="66px" CssClass="auto-style16"></asp:TextBox>
            </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" class="btn btn-primary" runat="server"   Text="Login" OnClick="Button1_Click" Width="76px" />
      
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
        <asp:Button ID="Button3" runat="server" class="btn btn-primary" Text="Register" OnClick="Button3_Click" />

        

            <br />
            <br />
            <br />

        

    </div>
</asp:Content>
