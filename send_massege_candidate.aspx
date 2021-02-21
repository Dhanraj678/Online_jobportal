<%@ Page Title="" Language="C#" MasterPageFile="~/candidate_page.master" AutoEventWireup="true" CodeFile="send_massege_candidate.aspx.cs" Inherits="send_massege_candidate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



           
 <div class="hero-wrap js-fullheight" style="background-image: url('images/send_maessage for candidate.jpg'); data-stellar-background-ratio="0.5" style="hight:90%">

<br />
<br />
<br />
<br />
<div style="background-color: #9999FF; border: thin solid #0033CC; width:1140px; padding-right:100px; margin-left:230px; color:Black">
<div class="row form-group mb-5" style="margin-left:10%">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="txt_JOB_ID">JOB_ID</label>
                  
                    <asp:TextBox ID="txt_JOB_ID" runat="server" class="form-control" readonly="true"    ></asp:TextBox>
                </div>
              </div>




              <div class="row form-group mb-5" style="margin-left:10%">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="txt_company">COMPANY</label>
                  
                    <asp:TextBox ID="Txt_company" runat="server" class="form-control" readonly="true"     ></asp:TextBox>
                </div>
              </div>


                            
<div class="row form-group mb-5" style="margin-left:10%;padding-bottom:0px">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="txt_SUBJECT">SUBJECT</label>
                  
                    <asp:TextBox ID="txt_SUBJECT" runat="server" class="form-control" readonly="false"   TextMode="SingleLine"  ></asp:TextBox>
                </div>
              </div>
          


                       
<div class="row form-group mb-5" style="margin-left:10%">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="txt_message">MESSAGE</label>
                  
      <asp:TextBox ID="txt_message" runat="server" class="form-control" readonly=false   TextMode="MultiLine"  Height="200px" ></asp:TextBox>
                </div>
              </div>

              
              <div  style="margin-left:10%">
    <asp:Button ID="Button1" runat="server" Text="SEND" class="btn btn-primary" Width="13%" onclick="Button1_Click" 
                   />

    </div>
   
    </div>

    </div>



</asp:Content>

