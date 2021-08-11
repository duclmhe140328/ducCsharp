<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="AssignmentWEBPRN292.GUI.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <style> 
    
    .style1 {
        border: 1px solid red;
        padding: 5px;
        border-radius: 23px 23px;
        margin: 20px;
        height:120px;
        width:120px;

    }
    .table {
        border-collapse: separate;
        border-spacing: 35px 35px;
        text-align: center;
    }
    .heder{
        text-align: right;
    }
    .accordion-body{
        background-color: white;
        width:100%;
    }
    </style>
    <body>
        <div class="accordion-body">
            <h1 class="text-uppercase" style="text-align: center; ">INFORMATION OF STUDENTS </h1>
        <table class="table">
            <tr>
                <%--<td> <img src="../Img/anh1.pnganh.gif"  class="style1"> </td>--%>  
                <td> <img src="../Img/anh.png"  class="style1"> </td> 
                <td> <img src="../Img/217405444_1644926762565062_3277290971102862481_n.jpg"  class="style1"></td>
                <td> <img src="../Img/anh5.jpg"  class="style1"></td>
                <td> <img src="../Img/anh3.jpg"  class="style1"></td>                                
                <td> <img src="../Img/anh6.png"  class="style1"></td>
                <td> <img src="../Img/anh4.jpg"  class="style1"></td>
            </tr> 
            <tr>
                <td> <a href="https://www.facebook.com/minhhieu0210">Nguyễn Minh Hiếu</a>                                 HE140582-FPTU  </td>               
                <td> <a href="https://www.facebook.com/thunderclapran">Lê Minh Đức </a>                                                      </br>HE140328-FPTU</td>
               <td> <a href="https://www.facebook.com/jun308/">Lê Thành Long </a>                                </br> HE140735-FPTU</td>
                <td> <a href="https://www.facebook.com/profile.php?id=100005907665335">                                 Nguyễn Đức Thắng </a>HE140674-FPTU</td>                
                <td> <a href="https://www.facebook.com/profile.php?id=100024202423789">                                 Nguyễn Huy Đức </a>                                 HE140677-FPTU</td>
                <td> <a href="https://www.facebook.com/danhnamk14fu">Nguyễn Danh Nam </a>                                 HE140684-FPTU</td>
            </tr>
           
        </table>  
            
        
         </div>
    </body>
</asp:Content>
