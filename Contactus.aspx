<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="PROJECT_TRACKING_SYSTEM__._0.Contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col">

                
                        <br />
    <br />
    <br />
    <p class="h4">
        Contact Us
    </p>
    <p class="h4">
        XYZ</p>
    <p class="h4">
        ,Erragadda,Near Sai Residency<br />
            Mumbai -34,<br />
            Ph No: +91-00000000000
            <br />
            <br />
            URL: &nbsp; <a href="#">#</a><br />
            Email: <a href="#">#</a></p>
    
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    &nbsp;<br />
    &nbsp; &nbsp;&nbsp;
                   
            </div>

           
            <div class="col-md-5">
                &nbsp;
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Feedback</h4>
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
                                <label>Full Name</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Full Name"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label>Email Id</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email Id" TextMode="Email"></asp:TextBox>

                                </div>
                            </div>
                            </div>
                            <div class="col-md-4">
                                <label>Contact no</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Contact no" TextMode="Phone"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label>Comments</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="type here" TextMode="MultiLine"></asp:TextBox>

                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="d-grid gap-2 col-6 mx-auto">
                                <asp:Button ID="Button1" class="btn btn-block btn-success" runat="server" Text="Submit" OnClick="Button1_Click" />
                            </div>
                        </div>&nbsp;
                    <div class="row">
                            <div class="d-grid gap-2 col-6 mx-auto">
                                <asp:Button ID="Button3" class="btn btn-block btn-success" runat="server" Text="Reset" OnClick="Button3_Click" />
                            </div>
                        </div>

                    </div>
                </div>
            </div>
    </div>
        

</asp:Content>
