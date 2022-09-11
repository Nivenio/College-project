<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="developertimesheet.aspx.cs" Inherits="PROJECT_TRACKING_SYSTEM__._0.developertimesheet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
      <div class="row">
         <div class="col-md-6">
             &nbsp;
            <div class="card">
               <div class="card-body">
                   <div class="row">
                     <div class="col">
                        <center>
                           <h3>TimeSheet</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Date</label>
                        <div class="form-group">
                            
                         <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Date" TextMode="DateTime"></asp:TextBox>
                            
                           
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Developer ID</label>
                        <div class="form-group">
                            <div class="input-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Developer ID"></asp:TextBox>
                                 <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                        </div>
                            </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Developer Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Project ID </label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server"></asp:TextBox>
                        </div>
                     </div>
                  <div class="col-md-6">
                        <label>Project Name </label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server"></asp:TextBox>
                        </div>
                     </div>
                   </div>
                    <div class="row">
                     <div class="col-md-4">
                        <label>Module Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"></asp:TextBox>
                        </div>
                     </div>
                      
                   
                   <div class="col-md-4">
                        <label>Start Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server"></asp:TextBox>
                        </div>
                     </div>
                       
                   
                     <div class="col-md-4">
                        <label>End Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server"></asp:TextBox>
                        </div>
                     </div>
                        </div>
                   <div class="row">
                       <div class="col-md-6">
                        <label>Status</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server"></asp:TextBox>
                        </div>
                     </div>
                       </div>
                       </div>
                  </div>
                
             &nbsp; 
                       <div class="row">
                           <div class="col-6">
                     <div class="d-grid gap-2 col-6 mx-auto">
                        <asp:Button ID="Button1" class=" btn btn-success" runat="server" Text="Add" OnClick="Button1_Click" />
                     </div>
                               </div>
                               <div class="col-6">
                     <div class="d-grid gap-2 col-6 mx-auto">
                        <asp:Button ID="Button3" class="btn btn-danger" runat="server" Text="Update" OnClick="Button3_Click" />
                     </div>
                                   </div>
                  </div>
                           
                     
                     
            <a href="developerhomepage.aspx"><< Back</a><br><br>
             </div>
         </div>
        </div>

</asp:Content>
