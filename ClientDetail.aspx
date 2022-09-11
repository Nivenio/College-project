<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ClientDetail.aspx.cs" Inherits="PROJECT_TRACKING_SYSTEM__._0.ClientDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
    <div class="container">
      <div class="row">
         <div class="col-md-8">
             &nbsp;
            <div class="card">
               <div class="card-body">
                   <div class="row">
                     <div class="col">
                        <center>
                           <h3>Client Details</h3>
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
                        <label>Client ID</label>
                        <div class="form-group">
                            <asp:TextBox   CssClass="form-control" ID="TextBox1"  runat="server" placeholder="Client ID" ></asp:TextBox>
                            <asp:RequiredFieldValidator  class="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username Cannot Blank" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                             </div>
                         
                     </div>
                        <div class="col-md-6">
                        <label>Client Password</label>
                        <div class="form-group">
                            <asp:TextBox  CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Cannot Empty" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>

                        </div>
                            </div>
                     </div>
                       <div class="row">
                     <div class="col-md-6">
                        <label>Client Name</label>
                        <div class="form-group">
                            <asp:TextBox  CssClass="form-control" ID="TextBox3" runat="server" placeholder="Client Name" ></asp:TextBox>
                             <asp:RegularExpressionValidator CssClass="text-danger" ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3"
        ErrorMessage="Number Not Allowed" ValidationExpression="^\D*$"></asp:RegularExpressionValidator>
                        </div>
                     </div>
                           <div class="col-md-6">
                        <label>Age</label>
                        <div class="form-group">
                            <asp:TextBox  CssClass="form-control" ID="TextBox4" runat="server" placeholder="Age" TextMode="Number"></asp:TextBox>
                                            <asp:RangeValidator CssClass="text-danger" ID="RangeValidator1" runat="server" ControlToValidate="TextBox4"
                    ErrorMessage="Age between 20 to 60" MaximumValue="60" MinimumValue="20" ></asp:RangeValidator>
                     </div>
                  </div>
                       </div>
                       <div class="row">
                     <div class="col-md-6">
                        <label>Gender</label>
                        <div class="form-group">
                            <asp:RadioButtonList  CssClass="form-control" ID="RadioButtonList1" runat="server">

                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                     </div>
                         </div>
                           <div class="col-md-6">
                        <label>Phone Number</label>
                        <div class="form-group">
                            <asp:TextBox  CssClass="form-control" ID="TextBox6" runat="server" placeholder="Phone Number" TextMode="Phone"></asp:TextBox>
                            <asp:RegularExpressionValidator CssClass="text-danger" ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6"
        ErrorMessage="Invalid PhoneNumber" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                        </div>
                     </div>
                       </div>
                 <div class="row">
                   <div class="col-md-6">
                        <label>Email Id</label>
                        <div class="form-group">
                            <asp:TextBox  CssClass="form-control" ID="TextBox7" runat="server" placeholder="Email Id" TextMode="Email"></asp:TextBox>
                            <asp:RegularExpressionValidator CssClass="text-danger" ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox7"
        ErrorMessage="Invalid EmailAddress" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
                        </div>
                     </div>
                   <div class="col-md-6">
                        <label>Project ID</label>
                        <div class="form-group">
                            <asp:TextBox  CssClass="form-control" ID="TextBox8" runat="server" placeholder="Project ID"></asp:TextBox>
                        </div>
                     </div>
                       </div>
                   <div class="col">
                        <label>Project Description</label>
                        <div class="form-group">
                            <asp:TextBox  CssClass="form-control" ID="TextBox9" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
                     </div>
                       &nbsp;
                      <div class="col">
                          
                   <div class="d-grid gap-4 col-6 mx-auto">
                       <asp:Button  CssClass="btn btn-success btn-block" ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
                        </div>
                          
                          
                          </div>
                  </div>
                </div>
             </div>
                </div>
              </div>
            <a href="bdohomepage.aspx"><< Back</a><br><br />     
        </div>
        

</asp:Content>
