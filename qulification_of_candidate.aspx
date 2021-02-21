<%@ Page Title="" Language="C#" MasterPageFile="~/candidate_page.master" AutoEventWireup="true" CodeFile="qulification_of_candidate.aspx.cs" Inherits="qulification_of_candidate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<div class="ftco-section bg-light">
      <div class="container">
          <a href="Site.master"></a>
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
              
              <div class="row form-group mb-5">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="CANDIDATE_ID">CANDIDATE ID</label>
                  
                    <asp:TextBox ID="txt_CANDIDATE_ID" runat="server" class="form-control" 
                        placeholder="NO NEED TO WRITE IT WILL SHOW AUTOMATICALLY " ReadOnly="True"></asp:TextBox>
                </div>
              </div>
              
             <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="SLNO">SL NO</label>
              <!-- <input type="text" id="fullname" class="form-control" placeholder="EG.DHANRAJ">-->
                        <asp:TextBox ID="txt_SLNO" runat="server" class="form-control"
                        placeholder="NO NEED TO WRITE IT WILL SHOW AUTOMATICALLY " ReadOnly="True"></asp:TextBox>


                </div>
              </div>
              
              

              <div class="row form-group mb-5">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="COURSE">COURSE NAME</label>
                 <!-- <input type="text" id="Text1" class="form-control" placeholder="EG.DAD">-->
                        <asp:TextBox ID="txt_COURSE" runat="server" class="form-control"></asp:TextBox>
                </div>
              </div>

              <div class="row form-group mb-5">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="BOARD">BOARD:</label>
                <!--  <input type="text" id="Text2" class="form-control" placeholder="EG.MAMMA">-->
                        <asp:TextBox ID="txt_BOARD" runat="server" class="form-control"></asp:TextBox>
                </div>
              </div>


              

              <div class="row form-group mb-4">
               <!-- <div class="col-md-12"><h3>EMAIL</h3></div>-->
                 <label class="font-weight-bold" for="TOTAL MARKS OBTAINED">TOTAL MARKS OBTAINED</label>
                <div class="col-md-12 mb-3 mb-md-0">
                 <!-- <input type="text" class="form-control" placeholder="EG.DHANRAJJHA55@123.COM">-->
        <asp:TextBox ID="txt_TOTALMARKSOBTAINED" runat="server"  class="form-control"></asp:TextBox>
                </div>
              </div>
              

             


              
              <div class="row form-group">
                <!--<div class="col-md-12"><h3>ADDRESS</h3></div>-->
                <div class="col-md-12 mb-3 mb-md-0">
                <label class="font-weight-bold" for="COURSE DURATION">COURSE DURATION</label>
                 <!-- <textarea name="" class="form-control" id="" cols="30" rows="5"></textarea>-->
        <asp:TextBox ID="txt_COURSEDURATION" runat="server" TextMode="singleline" Rows="3" Columns="6" class="form-control" ></asp:TextBox>
                </div>
              </div>

               
               <div class="row form-group mb-4">
               <!-- <div class="col-md-12"><h3>EMAIL</h3></div>-->
                 <label class="font-weight-bold" for="PASSING YEAR">PASSING YEAR</label>
                <div class="col-md-12 mb-3 mb-md-0">
                 <!-- <input type="text" class="form-control" placeholder="EG.DHANRAJJHA55@123.COM">-->
        <asp:TextBox ID="txt_PASSINGYEAR" runat="server"  class="form-control"></asp:TextBox>
                </div>
              </div>
              
             
             

               
             
             
             <asp:Button ID="Button1" runat="server" Text="SAVE" class="btn btn-primary" 
                     onclick="Button1_Click"/>
               <asp:Button ID="Button2" runat="server" Text="NEW" class="btn btn-primary" 
                     onclick="Button2_Click"/>   
               <asp:Button ID="Button3" runat="server" Text="LIST" class="btn btn-primary" 
                     onclick="Button3_Click"/>   

                

                    
            </form>
          </div>



    </div>
    </div>
</asp:Content>

