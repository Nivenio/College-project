<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Veiwempdetails.aspx.cs" Inherits="PROJECT_TRACKING_SYSTEM__._0.Veiwempdetails" %>
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
                                        <h4>Employee Details</h4>
                                    </center>
                            </div>
                        </div>

                       

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ptsConnectionString %>" SelectCommand="SELECT [empid], [empname], [phoneno], [emailid], [exp], [qualification], [salary] FROM [emp]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="empid" HeaderText="Emp Id" SortExpression="empid" />
                                        <asp:BoundField DataField="empname" HeaderText="Emp Name" SortExpression="empname" />
                                        <asp:BoundField DataField="phoneno" HeaderText="Phone Number" SortExpression="phoneno" />
                                        <asp:BoundField DataField="emailid" HeaderText="EmailId" SortExpression="emailid" />
                                        <asp:BoundField DataField="exp" HeaderText="No Of Years Experience" SortExpression="exp" />
                                        <asp:BoundField DataField="qualification" HeaderText="Qualification" SortExpression="qualification" />
                                        <asp:BoundField DataField="salary" HeaderText="Salary" SortExpression="salary" />
                                    </Columns>
                                    
                                </asp:GridView>
                            </div>
                        </div>


                    </div>
                </div>

             <a href="hrhomepage.aspx"><< Back</a><br><br>
            </div>

        </div>

</asp:Content>
