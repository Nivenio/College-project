<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="bdohomepage.aspx.cs" Inherits="PROJECT_TRACKING_SYSTEM__._0.bdohomepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;
   
         <div class="container">
            <div class="row align-items-md-stretch">
      <div class="col-md-6">
          <centre>
        <div class="h-100 p-5 text-white bg-dark rounded-3">
          <h4>CLIENT DETAILS</h4>
            <div class="btn-group dropend">
       <button type="button" class="btn btn-outline-light dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
             Veiw
         </button>
       <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="ClientDetail.aspx">Add</a></li>
      
       <li><a class="dropdown-item" href="Clientupdate.aspx">Update</a></li>
       </ul>
       </div>        </div>
          </centre>
      </div>
       </div>
             &nbsp;
              <div class="row align-items-md-stretch">
      <div class="col-md-6">
          <centre>
        <div class="h-100 p-5 bg-light border rounded-3">
          <h4>PROJECT DETAILS</h4>
        <div class="btn-group dropend">
       <button type="button" class="btn btn-outline-dark dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
             Veiw
         </button>
       <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="projectadddetail.aspx">Add</a></li>
      
       <li><a class="dropdown-item" href="Viewproject.aspx">View</a></li>
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
         <asp:Button  class="btn btn-outline-dark" ID="Button3" runat="server" Text="View" OnClick="Button3_Click"    />
         
        </div>
          </centre>
      </div>
       </div>
    </div>
   
    
   
</asp:Content>
