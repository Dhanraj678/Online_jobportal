<%@ Page Title="" Language="C#" MasterPageFile="~/COMPANY_HOME_PAGE.master" AutoEventWireup="true" CodeFile="job_details.aspx.cs" Inherits="job_details" %>

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
                  <label class="font-weight-bold" for="JOB ID">JOB ID</label>
                  
                    <asp:TextBox ID="txt_JOBID" runat="server" class="form-control" 
                        placeholder="NO NEED TO WRITE IT WILL SHOW AUTOMATICALLY " ReadOnly="True"></asp:TextBox>
                </div>
              </div>
              
             <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="COMPANY_ID">COMPANY_ID</label>
              <!-- <input type="text" id="fullname" class="form-control" placeholder="EG.DHANRAJ">-->
                        <asp:TextBox ID="txt_COMPANY_ID" runat="server" class="form-control"
                        placeholder="NO NEED TO WRITE IT WILL SHOW AUTOMATICALLY " ReadOnly="True"></asp:TextBox>


                </div>
              </div>
              
              

              <div class="row form-group mb-5">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="JOB_NAME">JOB_NAME</label>
                 <!-- <input type="text" id="Text1" class="form-control" placeholder="EG.DAD">-->
                        <asp:TextBox ID="txt_JOB_NAME" runat="server" class="form-control"></asp:TextBox>
                </div>
              </div>

              <div class="row form-group mb-5">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="DESCRIPTION">DESCRIPTION</label>
                <!--  <input type="text" id="Text2" class="form-control" placeholder="EG.MAMMA">-->
                        <asp:TextBox ID="txt_DESCRIPTION" runat="server" class="form-control"></asp:TextBox>
                </div>
              </div>


              

              <div class="row form-group mb-4">
               <!-- <div class="col-md-12"><h3>EMAIL</h3></div>-->
                 <label class="font-weight-bold" for="POST">POST</label>
                <div class="col-md-12 mb-3 mb-md-0">
                 <!-- <input type="text" class="form-control" placeholder="EG.DHANRAJJHA55@123.COM">-->
        <asp:TextBox ID="txt_POST" runat="server" class="form-control"></asp:TextBox>
                </div>
              </div>
              

             


              
              <div class="row form-group">
                <!--<div class="col-md-12"><h3>ADDRESS</h3></div>-->
                <div class="col-md-12 mb-3 mb-md-0">
                <label class="font-weight-bold" for="SALARY">SALARY</label>
                 <!-- <textarea name="" class="form-control" id="" cols="30" rows="5"></textarea>-->
        <asp:TextBox ID="txt_SALARY" runat="server" TextMode="singleline" Rows="3" Columns="6" class="form-control" ></asp:TextBox>
                </div>
              </div>

               
               
               
              <!--<div class="row form-group mb-4">
               <!-- <div class="col-md-12"><h3>EMAIL</h3></div>-->
                <!-- <label class="font-weight-bold" for="ESTABLISHED_YEAR">ESTABLISHED_YEAR:</label>
                <div class="col-md-12 mb-3 mb-md-0">
                 <!-- <input type="text" class="form-control" placeholder="EG.DHANRAJJHA55@123.COM">-->
        <!--<asp:TextBox ID="ESTABLISHED_YEAR" runat="server"  class="form-control"></asp:TextBox>
                </div>
              </div>-->


              <div class="select-wrap">
                                                <label class="font-weight-bold" for="drp_JOBTYPE">JOB TYPE</label>
						                      <asp:DropDownList ID="Drp_JOBTYPE" runat="server" class="form-control">
                                                  <asp:ListItem>----Select---</asp:ListItem>
                                                  <asp:ListItem>FULL TIME</asp:ListItem>
                                                  <asp:ListItem>PART TIME</asp:ListItem>
                                                  <asp:ListItem>FREELANCER</asp:ListItem>
                                                </asp:DropDownList>
                                                </div>

                                               <br />
                                
                                 <div class="row form-group mb-5">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="LOCATION">LOCATION</label>
                 <!-- <input type="text" id="Text1" class="form-control" placeholder="EG.DAD">-->
                        <asp:TextBox ID="txt_LOCATION" runat="server" class="form-control"></asp:TextBox>
                </div>
              </div>

         

              

               <div class="row form-group mb-5">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="POSTDATE">JOB POST DATE</label>
                 <!-- <input type="text" id="Text1" class="form-control" placeholder="EG.DAD">-->
                        <asp:TextBox ID="txt_post_date" runat="server"  class="form-control" placeholder="yyyy-mm-dd"></asp:TextBox>
                </div>
              </div>




               <div class="select-wrap">
                                                <label class="font-weight-bold" for="drp_EXPERIENCE">EXPERIENCE</label>
						                      <asp:DropDownList ID="DRP_EXPERIENCE" runat="server" class="form-control">
                                                  <asp:ListItem>----Select---</asp:ListItem>
                                                  <asp:ListItem>FRESHER</asp:ListItem>
                                                  <asp:ListItem>1 YEAR</asp:ListItem>
                                                  <asp:ListItem>2 YEARS</asp:ListItem>
                                                  <asp:ListItem>3 YEARS</asp:ListItem>
                                                  <asp:ListItem>4 YEARS</asp:ListItem>
                                                  <asp:ListItem>5 YEARS</asp:ListItem>
                                                  <asp:ListItem>6 YEARS</asp:ListItem>
                                                  <asp:ListItem>6 YEARS</asp:ListItem>
                                                  <asp:ListItem>7 YEARS</asp:ListItem>
                                                  <asp:ListItem>8 YEARS</asp:ListItem>
                                                  <asp:ListItem>9 YEARS</asp:ListItem>
                                                  <asp:ListItem>10 YEARS</asp:ListItem>
                                                </asp:DropDownList>
                                                </div>

                                                <br />


             <asp:Button ID="Button1" runat="server" Text="SAVE" class="btn btn-primary" onclick="Button1_Click" 
                     />
               <asp:Button ID="Button2" runat="server" Text="NEW" class="btn btn-primary" onclick="Button2_Click" 
                     />   
               <asp:Button ID="Button3" runat="server" Text="LIST" class="btn btn-primary"/>   

                

                    
            </form>
          </div>

          

    </div>
    </div>
    


</div>


</asp:Content>

