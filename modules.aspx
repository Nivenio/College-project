<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="modules.aspx.cs" Inherits="PROJECT_TRACKING_SYSTEM__._0.modules" %>
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
                           <h3>Modules</h3>
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
                        <label>Project ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Project ID"></asp:TextBox>
                            <asp:LinkButton class="btn btn-primary" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Project Name</label>
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
                     <div class="col">
                        <label>Project Description</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Project Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                </div>
                </div>
          </div>
       
                 
                 <div class="row">
                 <div class="col-md-8">
                 <div class="card">
                  <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Number Of Developers</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Number Of Developers"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Team Id</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Team Id"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Developer Id</label>
                         <div class="form-group">
                         <asp:TextBox  CssClass="form-control"  ID="TextBox8" runat="server"></asp:TextBox>
                             </div>
                         <div class="form-group">
                         <asp:TextBox  CssClass="form-control"  ID="TextBox9" runat="server"></asp:TextBox>
                             </div>
                         <div class="form-group">
                         <asp:TextBox  CssClass="form-control"  ID="TextBox10" runat="server"></asp:TextBox>
                             </div>
                         <div class="form-group">
                         <asp:TextBox  CssClass="form-control"  ID="TextBox11" runat="server"></asp:TextBox>
                             </div>
                         <div class="form-group">
                         <asp:TextBox  CssClass="form-control" ID="TextBox12" runat="server"></asp:TextBox>
                             </div>
                     </div>
                     <div class="col-md-6">
                        <label>Developer Name</label>
                          <div class="form-group">
                         <asp:TextBox  CssClass="form-control" ID="TextBox13" runat="server"></asp:TextBox>
                             </div>
                         <div class="form-group">
                         <asp:TextBox  CssClass="form-control" ID="TextBox14" runat="server"></asp:TextBox>
                             </div>
                         <div class="form-group">
                         <asp:TextBox  CssClass="form-control" ID="TextBox15" runat="server"></asp:TextBox>
                             </div>
                         <div class="form-group">
                         <asp:TextBox  CssClass="form-control" ID="TextBox16" runat="server"></asp:TextBox>
                             </div>
                         <div class="form-group">
                         <asp:TextBox  CssClass="form-control" ID="TextBox17" runat="server"></asp:TextBox>
                             </div>

                     </div>
                  </div>
               </div>

                      
                     &nbsp;
                     </div>
            <a href="developerhomepage.aspx"><< Back</a><br><br>
         </div>
      </div>
       </div>

</asp:Content>
