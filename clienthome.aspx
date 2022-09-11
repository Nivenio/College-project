<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="clienthome.aspx.cs" Inherits="PROJECT_TRACKING_SYSTEM__._0.clienthome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        
             &nbsp;
              <div class="row align-items-md-stretch">
      <div class="col-md-6">
          <centre>
        <div class="h-100 p-5 bg-light border rounded-3">
          <h4>Check The Project Status Please Click Here</h4>
         <asp:Button  class="btn btn-outline-dark" ID="Button2" runat="server" Text="View" OnClick="Button2_Click"   />
         
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
