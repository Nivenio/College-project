<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="projectstatuspage.aspx.cs" Inherits="PROJECT_TRACKING_SYSTEM__._0.projectstatuspage" %>
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
                                <label>Project ID</label>
                                <div class="form-group">
                                    
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Project Id cannot be Empty" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                                    </div>
                            </div>
                            </div>
                        &nbsp;
                        <div class="row">
                            <div class="col-6">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="Submit" OnClick="Button2_Click" />
                            </div>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </div>


                    </div>
                </div>

                <a href="javascript: history.go(-1)">Go Back</a><br>
                <br>
            </div>

            <div class="col-fluid">
                 &nbsp;
                <div class="card">
                    <div class="card-body">



                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>PROJECT STATUS</h4>
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
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" >
                                    <Columns>
                                        <asp:BoundField DataField="projid" HeaderText="projid" SortExpression="projid" />
                                        <asp:BoundField DataField="projectname" HeaderText="projectname" SortExpression="projectname" />
                                        <asp:BoundField DataField="startdate" HeaderText="startdate" SortExpression="startdate" />
                                        <asp:BoundField DataField="enddate" HeaderText="enddate" SortExpression="enddate" />
                                        <asp:BoundField DataField="projectduration" HeaderText="projectduration" SortExpression="projectduration" />
                                        <asp:BoundField DataField="frontend" HeaderText="frontend" SortExpression="frontend" />
                                        <asp:BoundField DataField="backend" HeaderText="backend" SortExpression="backend" />
                                        <asp:BoundField DataField="projectcost" HeaderText="projectcost" SortExpression="projectcost" />
                                        <asp:BoundField DataField="noofmodules" HeaderText="noofmodules" SortExpression="noofmodules" />
                                        <asp:BoundField DataField="pmname" HeaderText="pmname" SortExpression="pmname" />
                                        <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>


                    </div>
                </div>


            </div>

        </div>
    </div>

</asp:Content>
