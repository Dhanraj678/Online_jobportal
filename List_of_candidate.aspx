<%@ Page Language="C#" AutoEventWireup="true" CodeFile="List_of_candidate.aspx.cs" Inherits="List_of_candidate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        h1
        {
            text-align:center;
            text-decoration:none;
            font-family:Verdana;
            font-size:xx-large;
            color:GrayText;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>CANDIDATE LIST</h1>
    <div style="height:200px;border-style:solid;border-width:thin;border-color:Black; overflow:scroll;width:1000px">
        <asp:GridView ID="GridView1" runat="server" BackColor="AntiqueWhite" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
            ForeColor="Black" GridLines="Vertical" Width="969px">
            <Columns>
                <asp:ButtonField Text="EDIT" ButtonType="Button" ControlStyle-BackColor="CornflowerBlue" ControlStyle-BorderStyle="Solid" />
                <asp:TemplateField>
                    <ItemTemplate>
                       <asp:Image ID="Image1" runat="server" Width="80px" ImageUrl='<%# "view_image.aspx?id=" + Eval("cand_id") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        </div>
    </div>
    <h3>&nbsp;</h3>
    </form>
</body>
</html>
