<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Checkmail.aspx.cs" Inherits="PROJECT_TRACKING_SYSTEM__._0.mail" %>
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

     <div class="card">
               <div class="card-body">
  <div class="bd-example">
        <nav>
          <div class="nav nav-tabs mb-3" id="nav-tab" role="tablist">
            <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true">compose</button>
            <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">Inbox</button>
           
          </div>
        </nav>
        <div class="tab-content" id="nav-tabContent">
          <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
               <p class="text-center">New Message
               </p>
              
       
            <div class="form-row mb-3">
                <label for="to" class="col-2 col-sm-1 col-form-label">To:</label>
               
                   <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Type email"></asp:TextBox>
                        </div>
                </div>
           
            <div class="form-row mb-3">
                <label for="cc" class="col-2 col-sm-1 col-form-label">Subject:</label>
                <div class="form-group">
                           
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Type email"></asp:TextBox>
                        </div>
            </div>
    
               
    
                
                    <div class="form-group mt-4">
                <label for="to" class="col-2 col-sm-1 col-form-label"></label>
               
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Click here to reply" TextMode="MultiLine" Rows="12"></asp:TextBox>
                        </div>
              <asp:TextBox ID="TextBox7" runat="server" ReadOnly="True" TextMode="DateTimeLocal" Visible="False"></asp:TextBox>
                <div class="row">
                      
                     <div class="d-grid gap-2 col-6 mx-auto">
                          &nbsp;
                       <asp:Button  CssClass="btn btn-success btn-block " ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click"  />
             
               
                        </div>
                     
                      
                  </div>
              
            
          </div>
      

          
          <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                <div class="col">
                &nbsp;
               
                    <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Inbox</h4>
                                    </center>
                            </div>
                  </div>

                       

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
               <div class="col">
                &nbsp;
                <div class="card">
                    <div class="card-body">

                       

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ptsConnectionString %>" SelectCommand="SELECT * FROM [checkmail]" DeleteCommand="DELETE FROM [checkmail] WHERE ([frmid] = @frmid) ">
                                <DeleteParameters>
                                    <asp:Parameter DbType="String" DefaultValue="@frmid" Name="frmid" />
                                </DeleteParameters>
                            </asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="frmid" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                                    <Columns>
                                        
                                        <asp:BoundField DataField="toaddr" HeaderText="TO" SortExpression="toaddr" />
                                        <asp:BoundField DataField="subject" HeaderText="SUBJECT" SortExpression="subject" />
                                        
                                        <asp:TemplateField HeaderText="Date &amp; Time">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("dt") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                                        <asp:CommandField ShowDeleteButton="True" ButtonType="Image" DeleteImageUrl="imgs/delete1.png" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                    <SortedDescendingHeaderStyle BackColor="#242121" />
                                </asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>
                 &nbsp;

            </div>
                       </div>
                    </div>
              
          
        </div>
      </div>
         </div>
       <a href="javascript: history.go(-1)">Go Back</a><br>
        </div>
        </div>
</asp:Content>
