<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="PROJECT_TRACKING_SYSTEM__._0.ForgetPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row">
            <div class="col-md-4 mx-auto">
                 &nbsp;
                <center>
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                     <div class="col">
                        <center>
                           <h3>Forget Password</h3>
                        </center>
                     </div>
                  </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                         
                        <div class="row">
                            <center>
                            <div class="col">
                                
                                <label>Email ID</label>
                                      
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon1">@</span>
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" TextMode="Email"></asp:TextBox> 
                                     
                                    </div>
                            </div>
                                 </center>
                            </div>
                            
                        &nbsp;
                        <div class="row">
                            <asp:Label ID="lbmsg" runat="server"></asp:Label>
                            </div>
                            
                         &nbsp;
                        <div class="row">
                            <div class="col">
                                
                              <asp:Button class="btn btn-success btn-block " ID="Button1" runat="server"  Text="Submit" OnClick="Button1_Click"/>  
                            </div>
                             
                        </div>

                        </div>
                    </div>
                     </center>
                </div>
            </div>
         </div>

    <a href="login.aspx"><< Back</a><br>

</asp:Content>
