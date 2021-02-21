<%@ Page Title="" Language="C#" MasterPageFile="~/candidate_page.master" AutoEventWireup="true" CodeFile="find_job.aspx.cs" Inherits="find_job" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            
           
          <div class="ftco-section bg-light">
      <div class="container">
          <a href="Site.master"></a>
        <div class="row">
       
          <div class="col-md-12 col-lg-8 mb-5">
          
			     <form action="#" class="p-5 bg-white">
              
              
              
             
              
          
              
              

              <div class="row form-group mb-5">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="JOB_NAME">JOB_NAME</label>
                 <!-- <input type="text" id="Text1" class="form-control" placeholder="EG.DAD">-->
                        <asp:TextBox ID="txt_JOB_NAME" runat="server" class="form-control"></asp:TextBox>
                </div>
              </div>

              


              

              
              

             


              
             

               
               
               
           

              <div class="select-wrap" style="margin-top:0px">
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

         

              
                <div class="row form-group">
                <!--<div class="col-md-12"><h3>ADDRESS</h3></div>-->
                <div class="col-md-12 mb-3 mb-md-0">
                <label class="font-weight-bold" for="SALARY">EXPECTED-SALARY</label>
                 <!-- <textarea name="" class="form-control" id="" cols="30" rows="5"></textarea>-->
        <asp:TextBox ID="txt_EXSALARY" runat="server" TextMode="singleline" Rows="3" Columns="6" class="form-control" ></asp:TextBox>
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

                                                <!--5 line for putting buttons -->
                                                 <asp:Button ID="Button1" runat="server"   Text="SEARCH" class="btn btn-primary" onclick="Button1_Click"  />

                 <div style="border: thin solid #0033CC; margin-top:0px; width:800px; height:350px; overflow:scroll; background-color: #99CCFF;">
                                 <asp:GridView ID="GridView1" runat="server" Width="1200px" 
                                     CssClass="table table-sm table-dark" onrowcommand="GridView1_RowCommand" >
                                    <Columns>
                                    <asp:ButtonField Text="Send Message" />
                                    </Columns>
                                 </asp:GridView>
                          </div>           
   



  </form>
          </div>

          

    </div>
    </div>
    


</div>











</asp:Content>

