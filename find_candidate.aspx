<%@ Page Title="" Language="C#" MasterPageFile="~/COMPANY_HOME_PAGE.master" AutoEventWireup="true" CodeFile="find_candidate.aspx.cs" Inherits="find_candidate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                
                    

	<%--<div class="overlay"></div>--%>
    <div class="ftco-section bg-light">
      <div class="container">
        
							<div class="row">
                             <div class="col-md-12 col-lg-8 mb-5">
		                        <div class="row form-group mb-5">
                                    <div class="col-md-4 mb-3 mb-md-0">
                 
                                            <div class="select-wrap">
                                                                      <label class="font-weight-bold" for="drp_qulification" >QUALIFICATION</label>
                                                <asp:DropDownList ID="Drp_qualification" runat="server" class="form-control">
                                                <asp:listitem>----select----</asp:listitem>
                        
                                                </asp:DropDownList>
                     
                                        </div>
                                        </div>
                                                

                                    <div class="col-md-4 mb-3 mb-md-0">
                                               <div class="select-wrap">
                                                
                                              <label class="font-weight-bold" for="drp_GENDER">GENDER</label>
						                      <asp:DropDownList ID="Drp_GENDER" runat="server" class="form-control" Width="200px">
                                                  <asp:ListItem>----Select----</asp:ListItem>
                                                  <asp:ListItem>MALE</asp:ListItem>
                                                  <asp:ListItem>FEMALE</asp:ListItem>
                                                </asp:DropDownList>
                                                </div>
                                      </div>
                                    <div class="col-md-4 mb-3 mb-md-0">
                                       <div class="row form-group mb-5">
                                          <label class="font-weight-bold" for="LOCATION">LOCATION</label>
                
                                            <asp:TextBox ID="txt_LOCATION" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                    </div>
                                    
                                    <div class="form-group">
                <center><asp:Button ID="Button2" runat="server" Text="search" class="btn btn-primary" 
                                Width="170px" onclick="Button1_Click1" /></center>
              </div>



                    


               
                                                </div>


                                               
</div>

                 </div>

                                  
                    <!--using grid view to see the result-->
                    
                        <div style="border: thin solid #0033CC; margin-top:0px; width:800px; height:350px; overflow:scroll; background-color: #99CCFF;">
                                 <asp:GridView ID="GridView1" runat="server" 
                                     CssClass="table table-sm table-dark" onrowcommand="GridView1_RowCommand" 
                                     onselectedindexchanged="GridView1_SelectedIndexChanged">
                                    <Columns>
                                    <asp:ButtonField Text="Resume" />
                                    </Columns>
                                 </asp:GridView>
                          </div>           
   

              </div>

                     
			          </div>
			        </div>
                    </div>
                    
		       
          
        </div>
  






                        


</asp:Content>

