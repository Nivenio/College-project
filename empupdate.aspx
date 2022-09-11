<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="empupdate.aspx.cs" Inherits="PROJECT_TRACKING_SYSTEM__._0.empupdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
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
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Employee Id</label>
                                <div class="form-group">
                                    
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                                    </div>
                            </div>
                            </div>
                         &nbsp;
                        <div class="row">
                            <div class="col-6">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="Submit" OnClick="Button2_Click" />
                               
                            </div>
                             <asp:Label ID="Label1"  runat="server" ></asp:Label>
                        </div>


                    </div>
                </div>

               
            </div>

            <div class="col-fluid">
                 &nbsp;
                <div class="card">
                    <div class="card-body">



                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Employee List</h4>
                                    </center>
                            </div>
                        </div>

                       

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ptsConnectionString %>" SelectCommand="SELECT [empid], [empname], [phoneno], [emailid], [exp], [qualification], [salary] FROM [emp] WHERE ([empid] = @empid)" UpdateCommand="UPDATE [emp] SET [empid]=@empid, [empname]=@empname, [phoneno]=@phoneno, [emailid]=@emailid, [exp]=@exp, [qualification]=@qualification, [salary]=@salary  WHERE ([empid] = @empid) " DeleteCommand="DELETE FROM [emp] WHERE ([empid] = @empid) " >
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" DefaultValue="@empid" Name="empid" Type="String" PropertyName="Text" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="empid" >
                                    <Columns>
                                        <asp:BoundField DataField="empid" HeaderText="Emp Id" SortExpression="empid" />
                                        <asp:BoundField DataField="empname" HeaderText="Emp Name" SortExpression="empname" />
                                        <asp:BoundField DataField="phoneno" HeaderText="Phone Number" SortExpression="phoneno" />
                                        <asp:BoundField DataField="emailid" HeaderText="Email Id" SortExpression="emailid" />
                                        <asp:BoundField DataField="exp" HeaderText="No Of Years Experience" SortExpression="exp" />
                                        <asp:BoundField DataField="qualification" HeaderText="Qualification" SortExpression="qualification" />
                                        <asp:BoundField DataField="salary" HeaderText="Salary" SortExpression="salary" />
                                        <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>


                    </div>
                </div>


            </div>
            <a href="hrhomepage.aspx"><< Back</a><br>
                <br>
        </div>
    </div>


</asp:Content>
