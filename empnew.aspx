<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="empnew.aspx.cs" Inherits="PROJECT_TRACKING_SYSTEM__._0.empnew" %>
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
                           <h3>Employee Details</h3>
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
                        <label>Employee ID</label>
                        <div class="form-group">
                            <asp:TextBox   CssClass="form-control" ID="TextBox1"  runat="server" placeholder="Client ID" ></asp:TextBox>
                        </div>
                     </div>
                        <div class="col-md-6">
                        <label>Employee Name</label>
                        <div class="form-group">
                            <asp:TextBox  CssClass="form-control" ID="TextBox2" runat="server" placeholder="Employe Name" ></asp:TextBox>
                        </div>
                     </div>
                       </div>
                       <div class="row">
                     <div class="col-md-6">
                        <label>Gender</label>
                        <div class="form-group">
                            <asp:RadioButtonList CssClass="form-control" ID="RadioButtonList1" runat="server">

                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                     </div>
                         </div>
                           <div class="col-md-6">
                        <label>Oualification</label>
                        <div class="form-group">
                            <asp:TextBox  CssClass="form-control" ID="TextBox4" runat="server" placeholder="Oualification"></asp:TextBox>
                     </div>
                  </div>
                       </div>
                           
                 <div class="row">
                   <div class="col-md-6">
                        <label>No of year Experience</label>
                        <div class="form-group">
                            <asp:TextBox  CssClass="form-control" ID="TextBox7" runat="server" placeholder="Experience"></asp:TextBox>
                        </div>
                     </div>
                   <div class="col-md-6">
                        <label>Salary</label>
                        <div class="form-group">
                            <asp:TextBox  CssClass="form-control" ID="TextBox8" runat="server" placeholder="Salary"></asp:TextBox>
                        </div>
                     </div>
                       
                   <div class="col-md-6">
                        <label>Key Skills </label>
                        <div class="form-group">
                            <asp:TextBox  CssClass="form-control" ID="TextBox9" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
                     </div>
                       </div>
                     </div>
                       <div class="row">
                   <div class="col-md-6">
                        <label>Email Id</label>
                        <div class="form-group">
                            <asp:TextBox  CssClass="form-control" ID="TextBox3" runat="server" placeholder="Email Id" TextMode="Email"></asp:TextBox>
                             <asp:RegularExpressionValidator CssClass="text-danger" ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3"
        ErrorMessage="Invalid EmailAddress" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
                        </div>
                     </div>
                   <div class="col-md-6">
                        <label>Phone Number</label>
                        <div class="form-group">
                            <asp:TextBox  CssClass="form-control" ID="TextBox5" runat="server" placeholder="Phone Number"></asp:TextBox>
                             <asp:RegularExpressionValidator CssClass="text-danger" ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5"
        ErrorMessage="Invalid PhoneNumber" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                        </div>
                     </div>
                       </div>
                       <div class="row">
                   <div class="col-md-6">
                        <label>Date of Join</label>
                        <div class="form-group">
                            <asp:TextBox  CssClass="form-control" ID="TextBox6" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                   <div class="col-md-6">
                        <label>Age</label>
                        <div class="form-group">
                            <asp:TextBox  CssClass="form-control" ID="TextBox10" runat="server" placeholder="Age"></asp:TextBox>
                             <asp:RangeValidator CssClass="text-danger" ID="RangeValidator1" runat="server" ControlToValidate="TextBox10"
                    ErrorMessage="Invalid Age" MaximumValue="30" MinimumValue="20" ></asp:RangeValidator>
                        </div>
                     </div>
                       </div>
                   <div class="col">
                        <label>Address</label>
                        <div class="form-group">
                            <asp:TextBox  CssClass="form-control" ID="TextBox11" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
                     </div>
                        &nbsp; 
                   <div class="d-grid gap-2 col-6 mx-auto">
                       <asp:Button  CssClass="btn btn-success btn-block " ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
                        </div>
                  </div>
                </div>
                </div>
                </div>
              </div>
            <a href="hrhomepage.aspx"><< Back</a><br><br />     
        </div>
   

        



</asp:Content>
