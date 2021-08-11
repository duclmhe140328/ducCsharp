<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShoesDetail.aspx.cs" Inherits="AssignmentWEBPRN292.GUI.ShoesDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <style>
		 body {
  overflow-x: hidden; }

img {
  max-width: 100%; }

.preview {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column; }
  @media screen and (max-width: 996px) {
    .preview {
      margin-bottom: 20px; } }

.preview-pic {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1; }

.preview-thumbnail.nav-tabs {
  border: none;
  margin-top: 15px; }
  .preview-thumbnail.nav-tabs li {
    width: 18%;
    margin-right: 2.5%; }
    .preview-thumbnail.nav-tabs li img {
      max-width: 100%;
      display: block; }
    .preview-thumbnail.nav-tabs li a {
      padding: 0;
      margin: 0; }
    .preview-thumbnail.nav-tabs li:last-of-type {
      margin-right: 0; }

.tab-content {
  overflow: hidden; }
  .tab-content img {
    -webkit-animation-name: opacity;
            animation-name: opacity;
    -webkit-animation-duration: .3s;
            animation-duration: .3s; }

.card {
  margin-top: 50px;
  background: #eee;
  line-height: 1.5em; }

@media screen and (min-width: 997px) {
  .wrapper {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex; } }

.details {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column; }

.colors {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1; }

.product-title, .price, .sizes, .colors {
  text-transform: UPPERCASE;
  font-weight: bold; }

.checked, .price span {
  color: #ff9f1a; }

.product-title, .rating, .product-description, .price, .vote, .sizes {
  margin-bottom: 15px; }

.product-title {
  margin-top: 0; }

.size {
  margin-right: 10px; }
  .size:first-of-type {
    margin-left: 40px; }

.color {
  display: inline-block;
  vertical-align: middle;
  margin-right: 10px;
  height: 2em;
  width: 2em;
  border-radius: 2px; }
  .color:first-of-type {
    margin-left: 20px; }

.add-to-cart, .like {
  background: #ff9f1a;
  padding: 1.2em 1.5em;
  border: none;
  text-transform: UPPERCASE;
  font-weight: bold;
  color: #fff;
  -webkit-transition: background .3s ease;
          transition: background .3s ease; }
  .add-to-cart:hover, .like:hover {
    background: #b36800;
    color: #fff; }

.not-available {
  text-align: center;
  line-height: 2em; }
  .not-available:before {
    
    content: "\f00d";
    color: #fff; }

.orange {
  background: #ff9f1a; }

.green {
  background: #85ad00; }

.blue {
  background: #0076ad; }

.tooltip-inner {
  padding: 1.3em; }

@-webkit-keyframes opacity {
  0% {
    opacity: 0;
    -webkit-transform: scale(3);
            transform: scale(3); }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1); } }

@keyframes opacity {
  0% {
    opacity: 0;
    -webkit-transform: scale(3);
            transform: scale(3); }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1); } }

/*# sourceMappingURL=style.css.map */
     </style>
    <div class="container">
		<div class="card"  style="background-color:white">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1">
                               <div id="123">
                            <asp:Image ID="Image1" runat="server" Height="465px" Width="714px" />   
                                        </div>
                                     <div style="display:none" id="block">
                                         <img style="background-size:cover"    alt="" src=''> </img>
                                  
                              </div>
						      <br />
                              <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="4" CellSpacing="4" CssClass="auto-style5" DataSourceID="ObjectDataSource1" GridLines="Both" RepeatColumns="4" ShowFooter="False" ShowHeader="False">
                                  <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                  <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                  <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                  <ItemTemplate>
                                      <div class="card" style="width: 120px; height: 120px;">
                                          <img alt="" class="card-img-top" onclick="Func(this)" src='../Img/<%# Eval("image") %>'> </img></div>
                                  </ItemTemplate>
                                  <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                              </asp:DataList>
                              <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetShoesByBrand" TypeName="AssignmentWEBPRN292.DAL.ProductDAO">
                                  <SelectParameters>
                                      <asp:QueryStringParameter Name="id" QueryStringField="brandID" Type="Int32" />
                                  </SelectParameters>
                              </asp:ObjectDataSource>

						  </div>
						</div>
					</div>
					<div class="details col-md-6">
						<h3 class="product-title">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h3>
                        <p class="product-title">
                            &nbsp;</p>
						 
						<h4 id="price" class="price">price: <span>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></span></h4><p id="price">===>></p>
						<h5 class="sizes">sizes:
							<span class="size" data-toggle="tooltip" title="small">EU 40</span>
							<span class="size" data-toggle="tooltip" title="medium">EU 41</span>
							<span class="size" data-toggle="tooltip" title="large">EU 43</span>
							<span class="size" data-toggle="tooltip" title="xtra large">EU 45</span>
						</h5>
                        
                        
                        <p style="color:deepskyblue;font-size:120%">
                            <p style="color:red">Description: </p>
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </p>
						<div class="action">
                            <asp:Button ID="Button1" runat="server" Text="Add to cart" OnClick="Button1_Click" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
       <script type="text/javascript" >
        function Func(b) {
            document.getElementById('123').style.display="none" ;
            document.getElementById('block').style.display = "block";
            document.getElementById('block').style.height = "460px";
            document.getElementById('block').style.width = "700px";

            document.getElementById('block').style.backgroundImage = "url(" + b.src + ")";


           }

     

   
       </script>
</asp:Content>
