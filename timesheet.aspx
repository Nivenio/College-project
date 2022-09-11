<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="timesheet.aspx.cs" Inherits="PROJECT_TRACKING_SYSTEM__._0.timesheet" %>
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
                                        <h4>Timesheet</h4>
                                    </center>
                            </div>
                        </div>

                       

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                          
                        <div class="row">
                            
                            <div class="col">
                                 
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False">
                                    
                                    <Columns>
                                        <asp:BoundField DataField="dt" HeaderText="Date Time" SortExpression="dt" />
                                        <asp:BoundField DataField="developerid" HeaderText="DeveloperId" SortExpression="developerid" />
                                        <asp:BoundField DataField="developername" HeaderText="Developer Name" SortExpression="developername" />
                                        <asp:BoundField DataField="projid" HeaderText="ProjId" SortExpression="projid" />
                                        <asp:BoundField DataField="projname" HeaderText="ProjName" SortExpression="projname" />
                                        <asp:BoundField DataField="modulename" HeaderText="ModuleName" SortExpression="modulename" />
                                        <asp:BoundField DataField="startdate" HeaderText="Start Date" SortExpression="startdate" />
                                        <asp:BoundField DataField="enddate" HeaderText="End Date" SortExpression="enddate" />
                                        <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>


                    </div>
                </div>

             <a href="pmhomepage.aspx"><< Back</a><br><br>
            </div>

        </div>
    

</asp:Content>
