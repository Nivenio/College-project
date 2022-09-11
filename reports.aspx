<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="reports.aspx.cs" Inherits="PROJECT_TRACKING_SYSTEM__._0.reports" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-sm">
          <br />
    <br />
    <CR:CrystalReportViewer class="form-control" ID="CrystalReportViewer1" runat="server" AutoDataBind="true" ReportSourceID="CrystalReportSource1"   />
         
    <CR:CrystalReportSource  ID="CrystalReportSource1" runat="server">
        <Report FileName="pmreports.rpt">
        </Report>
    </CR:CrystalReportSource>
          <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
         <a href="javascript: history.go(-1)">Go Back</a><br>
    <br />
         </div>
</asp:Content>
