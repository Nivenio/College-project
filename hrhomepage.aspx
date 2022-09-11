<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="hrhomepage.aspx.cs" Inherits="PROJECT_TRACKING_SYSTEM__._0.hrhomepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        &nbsp;
         <div class="row align-items-md-stretch">
      <div class="col-md-6">
          <centre>
        <div class="h-100 p-5 bg-light border rounded-3">
          <h4>New Employees  Recruitment</h4>
            <div class="btn-group dropend">
       <button type="button" class="btn btn-outline-dark dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
             Veiw
         </button>
       <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="empnew.aspx">Add</a></li>
       <li><a class="dropdown-item" href="Veiwempdetails.aspx">View</a></li>
       <li><a class="dropdown-item" href="empupdate.aspx">Update</a></li>
       </ul>
       </div>
        
         
        </div>
          </centre>
      </div>
       </div>
             &nbsp;
            <div class="row align-items-md-stretch">
      <div class="col-md-6">
          <centre>
        <div class="h-100 p-5 bg-secondary border rounded-3">
          <h4>Do You Have Any Queries Please Mail Here</h4>
         <asp:Button  class="btn btn-outline-dark" ID="Button2" runat="server" Text="View" OnClick="Button2_Click"   />
         
        </div>
          </centre>
      </div>
       </div>
    </div>
    &nbsp;
</asp:Content>
