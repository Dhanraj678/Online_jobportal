<%@ Page Language="C#" AutoEventWireup="true" CodeFile="resume_details.aspx.cs" Inherits="resume_details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

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




    <title></title>
    <style>
    
    .td1
    {
        font-size:x-large;
        font-family:Verdana;
        float:none;
      text-decoration:none;
    }
    
    .td2
    {
        font-size:x-large;
        font-family:Verdana;
        float:none;
      text-decoration:none;
        border-bottom-style:none;
        text-decoration:none;
        text-align:center;
        }
        
        .td3
        {
            font-size:x-large;
        font-family:Verdana;
        float:none;
      text-decoration:none;
            
            
            }
        .td4
        {
            font-size:x-large;
        font-family:Verdana;
        float:none;
      text-decoration:none;
            
            }
    
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div >
    <center>
    <table border="1">
        <tr>
            <td class="td1">
               Name:<asp:Label ID="Lbl_name" runat="server" Text="Label"></asp:Label> <br />
               Father's name:<asp:Label ID="Lbl_father" runat="server" Text="Label"></asp:Label><br /> 
               Mother's name:<asp:Label ID="Lbl_mother" runat="server" Text="Label"></asp:Label> <br />
               Gender:<asp:Label ID="Lbl_gender" runat="server" Text="Label"></asp:Label> <br />
               Addhar no:<asp:Label ID="Lbl_aadhar" runat="server" Text="Label"></asp:Label> <br />
               Email:<asp:Label ID="Lbl_email" runat="server" Text="Label"></asp:Label> <br />
               Address:<asp:Label ID="Lbl_address" runat="server" Text="Label"></asp:Label>      

            </td>

            <td class="td2">
                <asp:Image ID="img_candi" runat="server"  Height="200px" border="2" /> 
            </td>
           

        </tr>
        <tr>
                <td colspan="2" class="td3">
                Education details

                </td>
          </tr>      
       <tr>
                    <td colspan="2">
                <!--for education details-->
                        <asp:GridView ID="Grid_education" runat="server"  CssClass="table table-sm table-dark" >
                        </asp:GridView>  
        
        
        
            </td>
             </tr>  
            <tr>
                    <td colspan="2" class="td4">
        
                    experience  
                    
        
        
        
            </td>
    
    
    </tr>
    <tr>
                <td colspan="2">
                    <asp:GridView ID="Grid_experince" runat="server"  CssClass="table table-sm table-dark" width="80%">
                    </asp:GridView>
    
    </td>
   </tr>
             </table>
             <br />
            <asp:Button ID="Button1" runat="server" Text="SEND MESSENGE" class="btn btn-primary" 
                     style="width:300px;" onclick="Button1_Click" />

    </center>
     
    </div>
    </form>
</body>
</html>
