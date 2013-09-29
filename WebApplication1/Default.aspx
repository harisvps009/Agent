<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder">
    <script type="text/javascript">
        $(document).ready(function () {
            Agent.HighlightTab(1);
            //target.addClass("tabHover");
        });
    </script>
    <div class="diglitica">
        <img src="Images/diglitica.png" />
    </div>
    <div class="default-realtimeanalytics">
        <div>
            <img src="Images/RealTimeAnalytics.jpg" />
        </div>
        <div>
            Real-time Business Analytics!
        </div>
    </div>
    <div class="default-realtimeanalytics-descirption">
        Diaglitica is focused to provide business intelligence to smart device vendors by generating business critical analytic using real-time data from smart devices.
    </div>
</asp:Content>
