<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="PROJECT_TRACKING_SYSTEM__._0.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
      <div class="row">
         <div class="col-md-4 mx-auto">
             &nbsp;
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="150px" src="login.png" />
                           
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Login</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  
                  <div class="row">
                     <div class="col">
                        <label>User ID</label>
                         
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member ID"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username cannot be empty" ControlToValidate="Textbox1"></asp:RequiredFieldValidator>
                        </div>
                             
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password cannot be empty" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                        </div>

                        </div>
                      
                          <label>Designation</label>
                      
                        <div class="form-group">
                           <asp:DropDownList   CssClass="form-control" ID="DropDownList1" runat="server" Width="154px">
        <asp:ListItem>Client</asp:ListItem>
        <asp:ListItem>PM</asp:ListItem>
        <asp:ListItem>BDO</asp:ListItem>
        <asp:ListItem>HR</asp:ListItem>
        <asp:ListItem>Developer</asp:ListItem>
    </asp:DropDownList>
                        </div>
                        </div>
                       
                    &nbsp;
                        <div class="d-grid gap-2 col-6 mx-auto">
                           <asp:Button class="btn btn-success btn-block " ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                        </div>
                   
                   <div class="d-grid gap-3 col-6 mx-auto">
                          <span class="psw">Forgot <a href="ForgetPassword.aspx" class="link-secondary" >password?</a></span>
                        </div>
                      
                     </div>
                 
               </div>
            </div>
            <a href="Default.aspx"  class="link-dark"><< Back to Home</a><br><br>
         </div>
      </div>
   

</asp:Content>
