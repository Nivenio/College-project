<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Viewproject.aspx.cs" Inherits="PROJECT_TRACKING_SYSTEM__._0.Viewproject" %>
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
     
     <div class="container-fluid">

        <div class="col">
            &nbsp;
                <div class="card">
                    <div class="card-body">



                        <div class="row">
                            <div class="col">
                                <center>
                                        <h5>PROJECT DETAIL</h5>
                                    </center>
                            </div>
                        </div>

                       

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ptsConnectionString %>" SelectCommand="SELECT * FROM [projectdetails]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" >
                                    <Columns>
                                        <asp:BoundField DataField="projectid" HeaderText="PROJECT ID" SortExpression="projectid" />
                                        <asp:BoundField DataField="projectname" HeaderText="PROJECT NAME" SortExpression="projectname" />
                                        <asp:BoundField DataField="clientid" HeaderText="CLIENT ID" SortExpression="clientid" />
                                        <asp:BoundField DataField="projectdesc" HeaderText="PROJECT DESCRIPTION" SortExpression="projectdesc" />
                                        <asp:BoundField DataField="projectstartdate" HeaderText="PROJECT START DATE" SortExpression="projectstartdate" />
                                        <asp:BoundField DataField="projectenddate" HeaderText="PROJECT END DATE" SortExpression="projectenddate" />
                                        <asp:BoundField DataField="projectstatus" HeaderText="PROJECT STATUS" SortExpression="projectstatus" />
                                        <asp:BoundField DataField="teamid" HeaderText="TEAM ID" SortExpression="teamid" />
                                        <asp:BoundField DataField="teamsize" HeaderText="TEAM SIZE" SortExpression="teamsize" />
                                        <asp:BoundField DataField="moduleid" HeaderText="MODULE ID" SortExpression="moduleid" />
                                        <asp:BoundField DataField="modulename" HeaderText="MODULE NAME" SortExpression="modulename" />
                                        <asp:BoundField DataField="developername" HeaderText="DEVELOPER NAME" SortExpression="developername" />
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
