<%@ Page Title="" Language="C#" MasterPageFile="~/home_master_page.master" AutoEventWireup="true" CodeFile="company_details.aspx.cs" Inherits="company_details" %>

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
    


    <div class="ftco-section bg-light">
      <div class="container">
        <div class="row">
       
          <div class="col-md-12 col-lg-8 mb-5">
          
			     <form action="#" class="p-5 bg-white">
              
              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label for="option-price-1">
                    
                  </label>
                </div>
                <div class="col-md-12 mb-3 mb-md-0">
                  <label for="option-price-2">
                    
                  </label>
                </div>
              </div>
              
              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="COMPANY_ID">COMPANY_ID</label>
                  
                    <asp:TextBox ID="COMPANY_ID" runat="server" class="form-control" placeholder="pls don't write anything it will generate automatically"></asp:TextBox>
                </div>
              </div>
              
             <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="COMPANY_NAME">COMPANY_NAME</label>
              <!-- <input type="text" id="fullname" class="form-control" placeholder="EG.DHANRAJ">-->
                        <asp:TextBox ID="COMPANY_NAME" runat="server" class="form-control" placeholder="EG.DHANRAJ"></asp:TextBox>


                </div>
              </div>
              
              

              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="COMPANY_EMAIL">COMPANY_EMAIL</label>
                 <!-- <input type="text" id="Text1" class="form-control" placeholder="EG.DAD">-->
                        <asp:TextBox ID="COMPANY_EMAIL" runat="server" class="form-control"></asp:TextBox>
                </div>
              </div>

              <div class="row form-group ">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="PHONE_NO_1">PHONE_NO-1:</label>
                <!--  <input type="text" id="Text2" class="form-control" placeholder="EG.MAMMA">-->
                        <asp:TextBox ID="PHONE_NO_1" runat="server" class="form-control"></asp:TextBox>
                </div>
              </div>


              

              <div class="row form-group">
               <!-- <div class="col-md-12"><h3>EMAIL</h3></div>-->
                 <label class="font-weight-bold" for="PHONE_NO_2">PHONE_NO-2:</label>
                <div class="col-md-12 mb-3 mb-md-0">
                 <!-- <input type="text" class="form-control" placeholder="EG.DHANRAJJHA55@123.COM">-->
        <asp:TextBox ID="PHONE_NO_2" runat="server"  class="form-control"></asp:TextBox>
                </div>
              </div>
              

             

              
              <div class="row form-group">
                <!--<div class="col-md-12"><h3>ADDRESS</h3></div>-->
                <div class="col-md-12 mb-3 mb-md-0">
                <label class="font-weight-bold" for="COMPANY_ADDRESS">COMPANY_ADDRESS</label>
                 <!-- <textarea name="" class="form-control" id="" cols="30" rows="5"></textarea>-->
        <asp:TextBox ID="COMPANY_ADDRESS" runat="server" TextMode="MultiLine" Rows="5" Columns="30" class="form-control" ></asp:TextBox>
                </div>
              </div>

               
               <div class="row form-group">
               <!-- <div class="col-md-12"><h3>EMAIL</h3></div>-->
                 <label class="font-weight-bold" for="COMPANY_PIN">COMPANY_PIN:</label>
                <div class="col-md-12 mb-3 mb-md-0">
                 <!-- <input type="text" class="form-control" placeholder="EG.DHANRAJJHA55@123.COM">-->
        <asp:TextBox ID="COMPANY_PIN" runat="server"  class="form-control"></asp:TextBox>
                </div>
              </div>
              
             
             

               
              <div class="row form-group">
               <!-- <div class="col-md-12"><h3>EMAIL</h3></div>-->
                 <label class="font-weight-bold" for="ESTABLISHED_YEAR">ESTABLISHED_YEAR:</label>
                <div class="col-md-12 mb-3 mb-md-0">
                 <!-- <input type="text" class="form-control" placeholder="EG.DHANRAJJHA55@123.COM">-->
        <asp:TextBox ID="ESTABLISHED_YEAR" runat="server"  class="form-control"></asp:TextBox>
                </div>
              </div>
                 
             <div class="row form-group">
               <!-- <div class="col-md-12"><h3>EMAIL</h3></div>-->
                 <label class="font-weight-bold" for="PASSWORD">PASSWORD</label>
                <div class="col-md-12 mb-3 mb-md-0">
                 <!-- <input type="text" class="form-control" placeholder="EG.DHANRAJJHA55@123.COM">-->
        <asp:TextBox ID="PASSWORD" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
                </div>
              </div>


             <asp:Button ID="Button1" runat="server" Text="SUBMIT" class="btn btn-primary" 
                     onclick="Button1_Click"/>
                 
                    
            </form>
          </div>


</div>
</div>
</div>



</asp:Content>

