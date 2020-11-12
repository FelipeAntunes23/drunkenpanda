<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/DrunkenPanda.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="DrunkenPandaBackend.Admin.AdminDashboard" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageHeader" runat="server">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

    <%-- <script>
		   window.onbeforeunload = function () {
			   return "Do you really want to close?";
		   };
	   </script>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

</asp:Content>
