<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="developerprojectstatus.aspx.cs" Inherits="PROJECT_TRACKING_SYSTEM__._0.developerprojectstatus" %>
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
                           <h3>Project Status</h3>
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
                            <div class="input-group">
                                <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="projectid" DataValueField="projectid"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ptsConnectionString %>" SelectCommand="SELECT [projectid] FROM [projectdetails]"></asp:SqlDataSource>
                            <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                        </div>
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
                     <div class="col-md-4">
                        <label>Project Start Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Project End Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  
                   
                     <div class="col-md-4">
                        <label>Project Duration</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" TextMode="Week"></asp:TextBox>
                        </div>
                     </div>
                      </div>
                    <div class="row">
                   <div class="col-md-6">
                        <label>Project Front End</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                       
                   
                     <div class="col-md-6">
                        <label>Project BackEnd</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server"></asp:TextBox>
                        </div>
                     </div>
                        </div>
                   <div class="row">
                   <div class="col-md-6">
                        <label>Project Cost</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server"></asp:TextBox>
                        </div>
                     </div>
                       <div class="col-md-6">
                        <label>No of Modules</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server"></asp:TextBox>
                        </div>
                     </div>
                       </div>
                    <div class="row">
                   <div class="col-md-6">
                        <label>PM Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server"></asp:TextBox>
                        </div>
                     </div>
                       <div class="col-md-6">
                        <label>Project Status</label>
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
