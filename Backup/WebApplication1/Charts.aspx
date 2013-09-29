<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Charts.aspx.cs" Inherits="WebApplication1.Charts" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/Custom%20UI/jquery-ui-1.10.3.custom.css" rel="stylesheet" type="text/css" />
    <link href="Content/site.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/Jquery%201.9.1/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="Scripts/Jquery%201.9.1/jquery-ui-1.10.3.custom.js" type="text/javascript"></script>
    <script src="Scripts/Agent/UI.js" type="text/javascript"></script>
    <script src="Scripts/HighCharts/highcharts.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var options = {
                data: [
                    ['Firefox', 45.0],
                    ['IE', 26.8],
                    {
                        name: 'Chrome',
                        y: 12.8,
                        sliced: false,
                        selected: false
                    },
                    ['Safari', 8.5],
                    ['Opera', 6.2],
                    ['Others', 0.7]
                ]
            };
            Agent.Charts.CreateChart($('#chartContainer'), options);
            Agent.Charts.CreateChart($('#Div1'), options);
            Agent.Charts.CreateChart($('#Div2'), options);
            Agent.Charts.CreateChart($('#Div3'), options);
            Agent.Charts.CreateChart($('#Div4'), options);
            Agent.Charts.CreateChart($('#Div5'), options);
            //Agent.Dialog.CreateDialog($("#popupContainer"), 900, 600);
        });
       
    </script>
    <style type="text/css">
        div
        {
            width: 30%;
            height: 50%;
        }
    </style>
</head>
<body>
    <div class='default' id='popupContainer'>
        <div id='chartContainer' style='display: inline-block; text-align: center;'>
        </div>
        <div id='Div1' style='display: inline-block; text-align: center;'>
        </div>
        <div id='Div2' style='display: inline-block; text-align: center;'>
        </div>
        <div id='Div3' style='display: inline-block; text-align: center;'>
        </div>
        <div id='Div4' style='display: inline-block; text-align: center;'>
        </div>
        <div id='Div5' style='display: inline-block; text-align: center;'>
        </div>
    </div>
</body>
</html>
