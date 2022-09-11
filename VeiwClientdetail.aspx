<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="VeiwClientdetail.aspx.cs" Inherits="PROJECT_TRACKING_SYSTEM__._0.VeiwClientdetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <script type="text/javascript">
      $(document).ready(function () {

          //$(document).ready(function () {
          //$('.table').DataTable();
          // });

          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
          //$('.table1').DataTable();
      });
     </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">

        <div class="col">
            &nbsp;
                <div class="card">
                    <div class="card-body">



                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Client Details</h4>
                                    </center>
                            </div>
                        </div>

                       

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ptsConnectionString %>" SelectCommand="SELECT * FROM [clientdetails]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" >
                                    <Columns>
                                        <asp:BoundField DataField="clientid" HeaderText="Client Id" SortExpression="clientid" />
                                        <asp:BoundField DataField="clientname" HeaderText="Client Name" SortExpression="clientname" />
                                        <asp:BoundField DataField="emailid" HeaderText="EmailId" SortExpression="emailid" />
                                        <asp:BoundField DataField="projectid" HeaderText="Project Id" SortExpression="projectid" />
                                        <asp:BoundField DataField="projectdesc" HeaderText="Project Desc" SortExpression="projectdesc" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>


                    </div>
                </div>

             <a href="bdohomepage.aspx"><< Back</a><br><br>
            </div>

        </div>
    

</asp:Content>
