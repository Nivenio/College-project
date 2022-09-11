<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="pmhomepage.aspx.cs" Inherits="PROJECT_TRACKING_SYSTEM__._0.pmhomepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
         &nbsp;
            <div class="row align-items-md-stretch">
      <div class="col-md-6">
          <centre>
        <div class="h-100 p-5 text-white bg-dark rounded-3">
          <h4>PROJECT DETAILS</h4>
            <div class="btn-group dropend">
       <button type="button" class="btn btn-outline-light dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
             Veiw
         </button>
       <ul class="dropdown-menu">
       
       <li><a class="dropdown-item" href="Viewproject.aspx">View</a></li>
       <li><a class="dropdown-item" href="assigntask.aspx">Assign Tasks</a></li>
       </ul>
       </div>
        </div>
          </centre>
      </div>
             <div class="col-md-6">
          <centre>
        <div class="h-100 p-5 bg-light border rounded-3">
          <h4>TIMESHEETS</h4>
         <asp:Button  class="btn btn-outline-dark" ID="Button2" runat="server" Text="View" OnClick="Button2_Click"    />
         
        </div>
          </centre>
      </div>
                </div>
             &nbsp; &nbsp;
              &nbsp;
       &nbsp;
         &nbsp;
              <div class="row align-items-md-stretch">
      <div class="col-md-6">
          <centre>
        <div class="h-100 p-5 bg-info border rounded-3">
          <h4>PROJECT STATUS</h4>
         <asp:Button  class="btn btn-outline-light" ID="Button4" runat="server" Text="View" OnClick="Button4_Click"    />
         
        </div>
          </centre>
      </div>
       
             
            
      <div class="col-md-6">
          <centre>
        <div class="h-100 p-5 bg-secondary border rounded-3">
          <h4>Do You Have Any Queries Please Mail Here</h4>
         <asp:Button  class="btn btn-outline-dark" ID="Button3" runat="server" Text="View" OnClick="Button3_Click"   />
         
        </div>
          </centre>
      </div>
       </div>
         &nbsp;

         <div class="row align-items-md-stretch">
      <div class="col-md-6">
          <centre>
        <div class="h-100 p-5 text-white bg-success rounded-3">
          <h4>REPORTS</h4>
            <asp:Button  class="btn btn-outline-light" ID="Button1" runat="server" Text="View" OnClick="Button1_Click"    />
        </div>
          </centre>
      </div>
            
                </div>
             </div>
          &nbsp;

</asp:Content>
