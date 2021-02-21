<%@ Page Title="" Language="C#" MasterPageFile="~/COMPANY_HOME_PAGE.master" AutoEventWireup="true" CodeFile="company_inbox.aspx.cs" Inherits="company_inbox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
<br />
<br />

<div style="background-color: #9999FF;margin-top:0px; border: thin solid #0033CC; width:1140px; padding-right:100px; margin-left:300px; color:Black">
<h3>Inbox of Candidate</h3>
<div style="border: thin solid #0033CC; margin-top:0px; width:800px; height:350px; overflow:scroll; background-color: #99CCFF;">
    <asp:GridView ID="GridView1" runat="server"  CssClass="table table-sm table-dark">
    </asp:GridView>
    </div>
</div>
</asp:Content>

