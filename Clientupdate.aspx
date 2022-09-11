<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Clientupdate.aspx.cs" Inherits="PROJECT_TRACKING_SYSTEM__._0.Clientupdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript" >
       $(document).ready(function () {
           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
          //$('.table1').DataTable();
       });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-5">
                &nbsp;
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Client Update</h4>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Project ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label>Client Id</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ptsConnectionString %>" SelectCommand="SELECT [clientid] FROM [clientdetails]"></asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                       &nbsp;
                        <centre>
                        <div class="row">
                            <div class="d-grid gap-2 col-6 mx-auto">
                                <asp:Button ID="Button2" CssClass="btn btn-success btn-block " runat="server" Text="Ok" OnClick="Button2_Click" />
                                
                            </div>
                            <asp:Label ID="Label1" runat="server" ></asp:Label>
                        </div>
                        </centre>

                    </div>
                </div>

                <a href="bdohomepage.aspx"><< Back</a><br>
                <br>
            </div>

            &nbsp;
            <div class="col-fluid">
                &nbsp;
                <div class="card">
                    <div class="card-body">

                       

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ptsConnectionString %>" SelectCommand="SELECT [clientid], [clientname], [emailid], [projectid], [projectdesc] FROM [clientdetails] WHERE ([projectid] = @projectid)" DeleteCommand="DELETE FROM [clientdetails] WHERE ([projectid] = @projectid) " UpdateCommand="UPDATE [clientdetails] SET [clientid]=@clientid, [clientname]=@clientname, [emailid]=@emailid, [projectid]=@projectid, [projectdesc]=@projectdesc WHERE ([projectid] = @projectid) ">
                              
                               
                              
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" DefaultValue="@projectid" Name="projectid" PropertyName="Text" Type="String" />
                                </SelectParameters>
                                
                            </asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="projectid" >
                                    <Columns>
                                        
                                        
                                        <asp:BoundField DataField="clientid" HeaderText="clientid" SortExpression="clientid" />
                                        <asp:BoundField DataField="clientname" HeaderText="clientname" SortExpression="clientname" />
                                        <asp:BoundField DataField="emailid" HeaderText="emailid" SortExpression="emailid" />
                                        <asp:BoundField DataField="projectid" HeaderText="projectid" SortExpression="projectid" ReadOnly="True" />
                                        <asp:BoundField DataField="projectdesc" HeaderText="projectdesc" SortExpression="projectdesc" />
                                        
                                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                                        <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                                        
                                    </Columns>
                                    
                                </asp:GridView>
                            </div>
                        </div>


                    </div>
                </div>
                 &nbsp;
                 
            </div>
             
        </div>
    </div>


</asp:Content>
