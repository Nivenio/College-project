<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="PROJECT_TRACKING_SYSTEM__._0.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
      <div class="row">
         <div class="col-md-7 mx-auto">
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
                           <h4>Registration Page</h4>
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
                        <label>User Id</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="User Id"></asp:TextBox>
                             <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
        ErrorMessage="UserName Cannot Empty" ></asp:RequiredFieldValidator>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" ></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
        ErrorMessage="Password Cannot Be Empty" ></asp:RequiredFieldValidator>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Confirm Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Confirm Password"></asp:TextBox>
                            <asp:CompareValidator CssClass="text-danger" ID="CompareValidator1" runat="server" ControlToCompare="TextBox2"
        ControlToValidate="TextBox3" ErrorMessage="Password mismatch" ></asp:CompareValidator>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>First Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="First Name" ></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Last Name</label>
                        <div class="form-group">
                            <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Last Name" ></asp:TextBox>
                        </div>
                        </div>
                     </div>
                     <div class="col-md-3">
                        <label>Gender</label>
                        <div class="form-group">
                            <asp:RadioButtonList  CssClass="form-control" ID="RadioButtonList1" runat="server">

                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                     </div>
                         </div>
                         <div class="row">
                     <div class="col-md-4">
                        <label>Date of Birth</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Pincode" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                 
                  
                     <div class="col">
                        <label>Full Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Phone Number</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="Phone Number"  TextMode="Phone"></asp:TextBox>
                            <asp:RegularExpressionValidator CssClass="text-danger" ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox8"
        ErrorMessage="Invalid PhoneNo" ValidationExpression="\d{11}" ></asp:RegularExpressionValidator>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Mobile Number</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Mobile Number" TextMode="Phone"></asp:TextBox>
                             <asp:RegularExpressionValidator CssClass="text-danger" ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox9"
        ErrorMessage="Invalid Mobile Number" ValidationExpression="\d{10}" ></asp:RegularExpressionValidator>
                        </div>
                     </div>
                  </div>
                       <div class="row">
                     <div class="col-md-6">
                        <label>Email Id</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="Email Id" TextMode="Email"></asp:TextBox>
                             <asp:RegularExpressionValidator CssClass="text-danger" ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox6"
        ErrorMessage="Invalid EmailId" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
        ></asp:RegularExpressionValidator>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Company Name</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox11" runat="server" placeholder="Company Name" ></asp:TextBox>
                        </div>
                     </div>
                  </div>
                      <div class="row">
                     <div class="col-md-4">
                        <label>Country</label>
                        <div class="form-group">
                            <div class="form-group">
                                <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                     <asp:ListItem Text="Select" Value="select" />
                                     <asp:ListItem Text="India" Value="India" />
                                 <asp:ListItem Text="US" Value="select" />
                                </asp:DropDownList>
                        </div>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>State</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                     <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                              <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                              <asp:ListItem Text="Assam" Value="Assam" />
                              <asp:ListItem Text="Bihar" Value="Bihar" />
                              <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                              <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                              <asp:ListItem Text="Goa" Value="Goa" />
                              <asp:ListItem Text="Gujarat" Value="Gujarat" />
                              <asp:ListItem Text="Haryana" Value="Haryana" />
                              <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                              <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                              <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                              <asp:ListItem Text="Karnataka" Value="Karnataka" />
                              <asp:ListItem Text="Kerala" Value="Kerala" />
                              <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                              <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                              <asp:ListItem Text="Manipur" Value="Manipur" />
                              <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                              <asp:ListItem Text="Mizoram" Value="Mizoram" />
                              <asp:ListItem Text="Nagaland" Value="Nagaland" />
                              <asp:ListItem Text="Odisha" Value="Odisha" />
                              <asp:ListItem Text="Punjab" Value="Punjab" />
                              <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                              <asp:ListItem Text="Sikkim" Value="Sikkim" />
                              <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                              <asp:ListItem Text="Telangana" Value="Telangana" />
                              <asp:ListItem Text="Tripura" Value="Tripura" />
                              <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                              <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                              <asp:ListItem Text="West Bengal" Value="West Bengal" />
                                </asp:DropDownList>
                     </div>
                         </div>
                         <div class="row">
                     <div class="col-md-4">
                        <label>Designation</label>
                        <div class="form-group">
                     
                           <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                                     <asp:ListItem Text="Select" Value="select" />
                                     <asp:ListItem Text="BDO" Value="BDO" />
                                 <asp:ListItem Text="HR" Value="HR" />
                               <asp:ListItem Text="PM" Value="PM" />
                               <asp:ListItem Text="Developer" Value="Developer" />
                                </asp:DropDownList>
                        </div>
                         
                                  
                                     
                                     
                     </div>
                  </div>
                         
                        
                              <div class="row">
                     <div class="col">
                        <center>
                            <asp:CheckBox ID="CheckBox2" runat="server"   Text="Accept Terms"/>
                        </center>
                     </div>
                  </div>
                     
                  <div class="row">
                      
                     <div class="d-grid gap-2 col-6 mx-auto">
                          &nbsp;
                       <asp:Button  CssClass="btn btn-success btn-block " ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"  />
                        </div>
                     
                      
                  </div>
                   
                                   <div class="col">
                        <center>
                           <asp:Label ID="Label1" runat="server" ></asp:Label>
                        </center>
                     </div>   
                              
                             
                     
               </div>
            </div>
           
         </div>
      </div>
              <a href="Default.aspx"><< Back to Home</a><br><br>
   </div>
          
          </div>
        </div>

</asp:Content>
