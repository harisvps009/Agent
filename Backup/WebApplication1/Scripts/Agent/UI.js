var Agent = Agent || {};
Agent.Charts = Agent.Charts || {};
Agent.Dialog = Agent.Dialog || {};

Agent.Charts.CreateChart = function (placeHolder, options) {
    var defaultOptions = {
        type: 'pie',
        name: 'Browser share',
        data: []
    };

    if (options.length != 0)
        $.extend(defaultOptions, options);

    Agent.Charts.CreatePieChart($(placeHolder), {
        series: [defaultOptions]
    });
};

Agent.Charts.CreatePieChart = function (placeHolder, options) {
    var defaultOptions = {
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: true
        },
        title: {
            text: 'Browser market shares at a specific website, 2010'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: false
                },
                showInLegend: true
            }
        },
        series: []
    }

    if (options.length != 0)
        $.extend(defaultOptions, options);

    $(placeHolder).highcharts(defaultOptions);
};

Agent.Dialog.CreateDialog = function (placeHolder, width, height) {
    width = width || 300;
    height = height || 300;
    var defaultOptions = {
        width: width,
        height: height
    };

    placeHolder.dialog(defaultOptions);
};


