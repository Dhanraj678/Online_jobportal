<%@ Page Title="" Language="C#" MasterPageFile="~/COMPANY_HOME_PAGE.master" AutoEventWireup="true" CodeFile="send_massege_company.aspx.cs" Inherits="send_massege" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



            
 <div class="hero-wrap js-fullheight" style="background-image: url('images/send_message_company.jpg'); data-stellar-background-ratio="0.5" style="hight:60%">     
       <br />
       <br />
       <br />
       <div style="background-color: #9999FF; border: thin solid #0033CC; width:1140px; padding-right:100px; margin-left:230px; color:Black">
            <div class="row form-group mb-5" style="margin-left:10%">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="txt_candidate_id">CANDIDATE_ID</label>
                  
                    <asp:TextBox ID="txt_candidate_id" runat="server" class="form-control" readonly="true"    ></asp:TextBox>
                </div>
              </div>
              
        <div class="row form-group mb-5" style="margin-left:10%">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="txt_COMPANY_ID">COMPANY_ID</label>
                  
                    <asp:TextBox ID="txt_COMPANY_ID" runat="server" class="form-control" readonly="true" TextMode="SingleLine"  ></asp:TextBox>
                </div>
              </div>
             
               
        <div class="row form-group mb-5" style="margin-left:10%">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="txt_SUBJECT">SUBJECT</label>
                  
                    <asp:TextBox ID="txt_SUBJECT" runat="server" class="form-control"    TextMode="SingleLine"  ></asp:TextBox>
                </div>
              </div>
          
    
        <div class="row form-group mb-5" style="margin-left:10%">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="txt_message">MESSAGE</label>
                  
                <asp:TextBox ID="txt_message" runat="server" class="form-control"    TextMode="MultiLine" Rows="5"  ></asp:TextBox>
                </div>
              </div>
             
              
         


             <!-- <div class="row form-group mb-5">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="txt_STATUS">STATUS</label>
                  
      <asp:TextBox ID="txt_STATUS" runat="server" class="form-control" width="100px" Height="50px"  ></asp:TextBox>
                </div>
              </div>-->

              
            

              <!--<div class="row form-group mb-5">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="txt_DATE">DATE TIME</label>
                  
      <asp:TextBox ID="txt_DATE" runat="server" class="form-control"    width="20%" Height="30%" ></asp:TextBox>
                </div>
              </div>-->

             
            

              







              <div  style="margin-left:10%">
    <asp:Button ID="Button1" runat="server" Text="SEND" class="btn btn-primary" Width="13%" onclick="Button1_Click3" 
                   />

    </div>
   
    </div>
    </div>


</asp:Content>

