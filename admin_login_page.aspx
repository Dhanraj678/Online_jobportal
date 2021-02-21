<%@ Page Title="" Language="C#" MasterPageFile="~/home_master_page.master" AutoEventWireup="true" CodeFile="admin_login_page.aspx.cs" Inherits="admin_login_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">

    
	  
    <br />
    <br />
    <br />


    <div class="hero-wrap js-fullheight" style="background-image: url('images/login_1.jpg');" data-stellar-background-ratio="0.5">
   <center>
    <div style="width:400px;border-style:groove;border-color:Gray; border-width:2px; background-color:#333333; margin-left:200px;padding-left:50px; margin-top:20px; padding-top:20px; text-align:left; opacity:70%">

<div class="row form-group" style=" width:300px">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="txt_cand_id">ADMIN ID</label>
              <!-- <input type="text" id="fullname" class="form-control" placeholder="EG.DHANRAJ">-->
                        <asp:TextBox ID="txt_cand_id" runat="server" class="form-control" placeholder=""></asp:TextBox>


                    
                </div>
              </div>


              <div class="row form-group" style=" width:300px">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="txt_PASSWORD">PASSWORD</label>
              <!-- <input type="text" id="fullname" class="form-control" placeholder="EG.DHANRAJ">-->
                        <asp:TextBox ID="txt_PASSWORD" runat="server" class="form-control" placeholder=""></asp:TextBox>



                </div>
              </div>

              

              <asp:Label ID="lbl_msg" runat="server" Text=""></asp:Label>
                 
        <asp:Button ID="Button1" runat="server" Text="LOG IN" class="btn btn-primary"/>
        

</div>
</center>
</div>
</asp:Content>





