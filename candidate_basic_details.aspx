<%@ Page Title="" Language="C#" MasterPageFile="~/home_master_page.master" AutoEventWireup="true" CodeFile="candidate_basic_details.aspx.cs" Inherits="candidate_basic_details" %>

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
                  <label class="font-weight-bold" for="txt_id">ID</label>
                  
                    <asp:TextBox ID="txt_id" runat="server" class="form-control" placeholder="pls don't write anything it will generate automatically"></asp:TextBox>
                </div>
              </div>
              
             <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="txt_name">NAME</label>
              <!-- <input type="text" id="fullname" class="form-control" placeholder="EG.DHANRAJ">-->
                        <asp:TextBox ID="txt_name" runat="server" class="form-control" placeholder="Ex: Tata docomo"></asp:TextBox>


                </div>
              </div>
              
              

              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="txt_fname">FATHER'S_NAME</label>
                 <!-- <input type="text" id="Text1" class="form-control" placeholder="EG.DAD">-->
                        <asp:TextBox ID="txt_fname" runat="server" class="form-control"></asp:TextBox>
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="txt_mname">MOTHER'S_NAME</label>
                <!--  <input type="text" id="Text2" class="form-control" placeholder="EG.MAMMA">-->
                        <asp:TextBox ID="txt_mname" runat="server" class="form-control"></asp:TextBox>
                </div>
              </div>
             
             <div class="form-field">
				              					<div class="select-wrap">
                                                <label class="font-weight-bold" for="drp_gender">GENDER</label>
						                      <asp:DropDownList ID="Drp_gender" runat="server" class="form-control">
                                                  <asp:ListItem>----Select---</asp:ListItem>
                                                  <asp:ListItem>Male</asp:ListItem>
                                                  <asp:ListItem>Female</asp:ListItem>
                                                  <asp:ListItem>Other</asp:ListItem>
                                              
                                             </asp:DropDownList>
						                      <%--<select name="" id="Select1" class="form-control">
						                      	<option value="">MALE</option>
						                      	<option value="">FEMALE</option>
						                        <option value="">OTHER</option>
						                    
						                      </select>--%>
						                    </div>
								              </div>
							              
    <br />


              <div class="row form-group ">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="Txt_aadhar">AADHAR_CARD</label>
                 <!-- <input type="text" id="Text3" class="form-control" placeholder="EG.1234432">-->
                  
        <asp:TextBox ID="Txt_aadhar" runat="server" class="form-control"></asp:TextBox>
                </div>
              </div>
             

              <div class="row form-group">
               <!-- <div class="col-md-12"><h3>EMAIL</h3></div>-->
                 <label class="font-weight-bold" for="Txt_email">EMAIL</label>
                <div class="col-md-12 mb-3 mb-md-0">
                 <!-- <input type="text" class="form-control" placeholder="EG.DHANRAJJHA55@123.COM">-->
        <asp:TextBox ID="Txt_email" runat="server"  class="form-control"></asp:TextBox>
                </div>
              </div>
              

              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="txt_dob">DOB</label>
                 <!-- <input type="text" id="Text5" class="form-control" placeholder="EG.17/10/1999">-->
        <asp:TextBox ID="txt_dob" runat="server"  class="form-control"></asp:TextBox>
                </div>
              </div>
              

              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="txt_password">PASSWORD</label>
                <!--  <input type="password" id="Text6" class="form-control" placeholder="EG.@1234@">-->
        <asp:TextBox ID="txt_password" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
                </div>
              </div>
              
              <div class="row form-group">
                <!--<div class="col-md-12"><h3>ADDRESS</h3></div>-->
                <div class="col-md-12 mb-3 mb-md-0">
                <label class="font-weight-bold" for="txt_address">ADDRESS</label>
                 <!-- <textarea name="" class="form-control" id="" cols="30" rows="5"></textarea>-->
        <asp:TextBox ID="Txt_address" runat="server" TextMode="MultiLine" Rows="5" Columns="30" class="form-control" ></asp:TextBox>
                </div>
              </div>

              <div class="row form-group">
                <!--<div class="col-md-12"><h3>ADDRESS</h3></div>-->
                <div class="col-md-12 mb-3 mb-md-0">
                <label class="font-weight-bold" for="FileUpload1">candidate photo</label>
                 <!-- <textarea name="" class="form-control" id="" cols="30" rows="5"></textarea>-->
                    <asp:FileUpload ID="FileUpload1" runat="server" class="form-control-file" />
                </div>
              </div>

                 <asp:Label ID="lbl_msg" runat="server" Text=""></asp:Label>
                 
    <asp:Button ID="Button1" runat="server" Text="New" class="btn btn-primary" 
                     style="width:100px;" onclick="Button1_Click" />
    
    <asp:Button ID="Button2" runat="server" Text="SAVE" class="btn btn-primary" 
                     style="width:100px;" onclick="Button2_Click" />
    
    
    <asp:Button ID="Button3" runat="server" Text="Update" class="btn btn-primary" 
                     style="width:100px;" onclick="Button3_Click" />
    
    <asp:Button ID="Button4" runat="server" Text="Search" class="btn btn-primary" 
                     style="width:100px;" onclick="Button4_Click" />
        
        <asp:Button ID="Button5" runat="server" Text="Delete" class="btn btn-primary" 
                     style="width:100px;" onclick="Button5_Click" />
          
                
            </form>
          </div>

          
             

</asp:Content>

