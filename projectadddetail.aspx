<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="projectadddetail.aspx.cs" Inherits="PROJECT_TRACKING_SYSTEM__._0.projectadddetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
      <div class="row">
         <div class="col-md-9">
             &nbsp;
            <div class="card">
               <div class="card-body">
                   <div class="row">
                     <div class="col">
                        <center>
                           <h3>Project Detail</h3>
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
                        <label>Team ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Project ID"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Team Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Project Name"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Module ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Module ID"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Module Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Module Name"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                     <div class="col-md-6">
                        <label>Developer Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Developer Name" ></asp:TextBox>
                            <asp:RegularExpressionValidator CssClass="text-danger" ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5"
        ErrorMessage="Number Not Allowed" ValidationExpression="^\D*$"></asp:RegularExpressionValidator>
                        </div>
                     </div>
                  </div>
                </div>
                </div>
          </div>
       <div class="col-md-9">
             &nbsp;
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Project ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Project ID"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Project Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Project Name"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Client ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Module ID"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col">
                        <label>Project Description</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Project Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                   </div>
                <div class="row">
                     <div class="col-md-4">
                        <label>Project Start Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" TextMode="Date"></asp:TextBox>
                             <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Valid Date" ControlToValidate="Textbox11"></asp:RequiredFieldValidator>
                          
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Project End Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" TextMode="Date"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Valid Date" ControlToValidate="Textbox12"></asp:RequiredFieldValidator>
                          
                            </div>
                     </div>
                    
                <div class="col-md-4">
                        <label>Status</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server"></asp:TextBox>
                        </div>
                     </div>
               </div>
                 &nbsp;
                <div class="d-grid gap-2 col-6 mx-auto">
                           <asp:Button class="btn btn-success btn-block " ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
                        </div>
            
         </div>
                 <a href="bdohomepage.aspx"><< Back</a><br><br>
      </div>
          
       </div>
    
        </div>
</asp:Content>
