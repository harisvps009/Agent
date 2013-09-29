<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder">
    <script type="text/javascript">
        $(document).ready(function () {
            var options = {
                colors: ["#00FF00", "#FF3300"],
                data: [
                    ['Healthy', 80],
                    ['Failure', 20]
                ]
            };
            function openPopUp() {
                var popup = new Agent.Dialog.CreateDialog($("#popupContainer"), 700, 500);
                var colors = Highcharts.getOptions().colors;
                var barChartOptions = {
                    categories: ["Battery", "Camera", "Other"],
                    name: "Electronic devices",
                    data: [
                        {
                            y: 66,
                            color: colors[0],
                            drilldown: {
                                name: 'Battery details',
                                categories: ['Temerature', 'Voltage', 'Battery Capacity'],
                                data: [10.85, 7.35, 33.06],
                                color: colors[0]
                            }
                        },
                        {
                            y: 21.63,
                            color: colors[1],
                            drilldown: {}
                        },
                        {
                            y: 11.94,
                            color: colors[2],
                            drilldown: {}
                        }
                    ]
                };

                new Agent.Charts.CreateBarChart($("#chart1"), barChartOptions);

                popup.onClose(function () {
                });

                popup.onOpen(function () {
                    popup.setTitle("Modal X Analytics");
                });
                popup.open();
                //target.addClass("tabHover");

            }
            var chart = Agent.Charts.CreateChart("Model X Health Rate", $('#chartContainer'), options, openPopUp);
            Agent.HighlightTab(2);
        });
    </script>
    <div class="diglitica">
        <img src="Images/diglitica.png" />
    </div>
    <div class="filters">
        <table style="height: 30%;">
            <tr>
                <td>Brand:</td>
                <td>
                    <select>
                        <option value="1">Karbon</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Model:</td>
                <td>
                    <select>
                        <option value="1">Model X</option>
                    </select>
                </td>
            </tr>
        </table>
    </div>
    <div id='chartContainer'>
    </div>
    <div class='default' style="text-align: center" id='popupContainer'>
        <div id="chart1">
        </div>
    </div>

</asp:Content>
