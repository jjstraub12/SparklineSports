﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="PitchChart.aspx.cs" Inherits="Straub.Web.UI.MLB.PitchChart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



        <style type="text/css">
        .container
        {
            width: 100%;
        }

        #hs-component
        {
            background-color: inherit;
            padding: 0;
        }

            #hs-component .container
            {
                padding: 0;
                width: 100%;
            }

        #comp-menu
        {
            background-color: #252530;
            z-index: 1;
            padding: 0;
        }

            #comp-menu .cont, .demo
            {
                padding: 0 50px;
            }

            #comp-menu h2, #comp-menu h2 a
            {
                color: #eeeaea;
                font-weight: lighter;
                text-transform: inherit;
            }

                #comp-menu h2 a:hover
                {
                    color: #8085e8;
                }

        a.btn.btn-theme
        {
            color: #eeeaea;
            background-color: #34343e;
            border: 1px solid #34343e;
            border-bottom: 0;
            border-radius: 0;
            font-weight: 400;
            margin: 0 5px 0 0;
        }

            a.btn.btn-theme:hover
            {
                color: #90ef7f;
            }

            a.btn.btn-theme.disabled
            {
                background-color: #FFF;
                color: #313131;
                opacity: 1;
            }

        .demo
        {
            background-color: #f6f6f6;
        }

            .demo .demo-name
            {
                color: #313131;
                font-weight: lighter;
                text-transform: none;
                padding-left: 15px;
                text-align: center;
                display: inline;
                margin: 0 10px;
            }

        #chart-switcher
        {
            text-align: center;
            padding: 30px 0;
        }

        .demo #chart-switcher #next-example, .demo #chart-switcher #previous-example
        {
            font-size: 30px;
            padding: 0 10px;
            color: #888;
        }

        #demo-buttons
        {
            text-align: center;
            padding: 30px 0;
        }

            #demo-buttons a
            {
                background-color: #ddd;
            }

                #demo-buttons a:hover
                {
                    background-color: #40818b;
                }

        .demo .chart-container
        {
            position: relative;
            background-color: #fff;
            padding: 30px 0;
        }

            .demo .chart-container #previous-example
            {
                position: absolute;
                top: 50%;
                left: -30px;
                font-size: 70px;
                color: #888;
            }

            .demo .chart-container #next-example
            {
                position: absolute;
                top: 50%;
                right: -30px;
                font-size: 70px;
                color: #888;
            }

        .sidebar-eq-fill
        {
            background-color: #f6f6f6;
        }

        @media screen and (max-width:400px)
        {
            #chart-switcher, .demo .chart-container, .sidebar-wrapper .sidebar-eq
            {
                padding: 0;
            }

            #small-switcher
            {
                text-align: center;
            }

            .demo #chart-switcher #next-example, .demo #chart-switcher #previous-example
            {
                font-size: 20px;
            }

            #sidebar-close
            {
                position: absolute;
                top: 0;
                left: 0;
                background-color: #252530;
                color: #fff;
                border-radius: 0;
                z-index: 100;
                cursor: pointer;
                padding: 10px;
                visibility: hidden;
            }

            .toggled #sidebar-close
            {
                visibility: visible;
            }
        }

        @media screen and (min-width:400px) and (max-width:768px)
        {
            .demo
            {
                padding: 15px;
            }

            #sidebar-close
            {
                position: absolute;
                top: 0;
                left: 0;
                background-color: #252530;
                color: #fff;
                border-radius: 0;
                z-index: 100;
                cursor: pointer;
                padding: 10px;
                visibility: hidden;
            }

            .toggled #sidebar-close
            {
                visibility: visible;
            }
        }

        #hs-below
        {
            background-color: #eeeaea;
            font-size: 18px;
            line-height: 26px;
        }

            #hs-below h3
            {
                font-size: 30px;
                line-height: 30px;
                font-weight: bolder;
                margin-top: 0;
                margin-bottom: 15px;
            }

            #hs-below p, ul
            {
                font-size: 1pc;
            }

            #hs-below .box
            {
                position: relative;
                background-color: #fff;
                padding: 14px 22px;
            }

                #hs-below .box .box-content
                {
                    margin-bottom: 40px;
                }

                #hs-below .box .button
                {
                    position: absolute;
                    bottom: 0;
                    margin-bottom: 10px;
                }

                #hs-below .box.purple
                {
                    border-bottom: 8px solid #8085e8;
                }

                #hs-below .box.green
                {
                    border-bottom: 8px solid #90ef7f;
                }

                #hs-below .box .book
                {
                    text-align: center;
                }

                    #hs-below .box .book img
                    {
                        max-height: 200px;
                    }

        @media screen and (max-width:768px)
        {
            #hs-below h3
            {
                margin-top: 30px;
            }

            #hs-below .box-1 h3
            {
                margin-top: 0;
            }

            #hs-below .box .book
            {
                text-align: left;
            }
        }

        @media screen and (min-width:768px) and (max-width:992px)
        {
            #hs-below h3
            {
                margin-top: 30px;
            }

            #hs-below .box-1 h3, #hs-below .box-2 h3
            {
                margin-top: 0;
            }

            #hs-below .box-1 .box, #hs-below .box-2 .box
            {
                min-height: 260px;
            }

            #hs-below .box-3 .box, #hs-below .box-4 .box
            {
                min-height: 280px;
            }
        }

        @media screen and (min-width:992px) and (max-width:1200px)
        {
            #hs-below h3
            {
                margin-top: 30px;
            }

            #hs-below .box-1 h3, #hs-below .box-2 h3
            {
                margin-top: 0;
            }

            #hs-below .box-1 .box, #hs-below .box-2 .box
            {
                min-height: 255px;
            }

            #hs-below .box-3 .box, #hs-below .box-4 .box
            {
                min-height: 280px;
            }
        }

        @media screen and (min-width:1200px)
        {
            #hs-below .box
            {
                min-height: 390px;
            }
        }

        #hs-bottom, #hs-bottom a
        {
            color: #eeeaea;
        }

        #hs-bottom
        {
            background-color: #252530;
            font-size: 1pc;
            line-height: 20px;
        }

            #hs-bottom a:focus, #hs-bottom a:hover
            {
                color: #90ef7f;
            }

            #hs-bottom a.button
            {
                color: #313131;
            }

                #hs-bottom a.button:focus, #hs-bottom a.button:hover
                {
                    color: #eeeaea;
                }

            #hs-bottom h3
            {
                font-size: 24px;
                line-height: 24px;
                font-weight: lighter;
            }

            #hs-bottom h4
            {
                font-size: 14px;
            }

            #hs-bottom .grayed
            {
                color: #d6d1d1;
                margin: 0;
            }

        @media screen and (max-width:768px)
        {
            #hs-bottom [class*=col-]
            {
                border-bottom: 1px dotted #eeeaea;
                padding-bottom: 15px;
            }

                #hs-bottom [class*=col-]:nth-child(1) h3
                {
                    margin-top: 0;
                }

                #hs-bottom [class*=col-]:last-child
                {
                    border-bottom: 0;
                    padding-bottom: 0;
                }
        }

        @media screen and (min-width:768px) and (max-width:992px)
        {
            #hs-bottom [class*=col-]
            {
                min-height: 350px;
                border-right: 1px dotted #eeeaea;
            }

                #hs-bottom [class*=col-]:last-child, #hs-bottom [class*=col-]:nth-child(2)
                {
                    border-right: 0;
                }
        }

        @media screen and (min-width:992px) and (max-width:1200px)
        {
            #hs-bottom [class*=col-]
            {
                min-height: 300px;
                border-right: 1px dotted #eeeaea;
            }

                #hs-bottom [class*=col-]:last-child, #hs-bottom [class*=col-]:nth-child(2)
                {
                    border-right: 0;
                }
        }

        @media screen and (min-width:1200px)
        {
            #hs-bottom [class*=col-]
            {
                min-height: 25pc;
                border-right: 1px dotted #eeeaea;
            }

                #hs-bottom [class*=col-]:last-child
                {
                    border-right: 0;
                }
        }
    </style>
    <script type="text/javascript">
        jQuery.noConflict();

        var example = '3d-scatter-draggable',
        theme = 'default';

        (function ($) { // encapsulate jQuery
            $(function () {

                // Give the points a 3D feel by adding a radial gradient
                Highcharts.getOptions().colors = $.map(Highcharts.getOptions().colors, function (color) {
                    return {
                        radialGradient: {
                            cx: 0.4,
                            cy: 0.3,
                            r: 0.5
                        },
                        stops: [
                            [0, color],
                            [1, Highcharts.Color(color).brighten(-0.2).get('rgb')]
                        ]
                    };
                });

                // Set up the chart
                var chart = new Highcharts.Chart({
                    chart: {
                        renderTo: 'container',
                        margin: 100,
                        type: 'scatter',
                        options3d: {
                            enabled: true,
                            alpha: 10,
                            beta: 30,
                            depth: 250,
                            viewDistance: 5,
                            fitToPlot: false,
                            frame: {
                                bottom: { size: 1, color: 'rgba(0,0,0,0.02)' },
                                back: { size: 1, color: 'rgba(0,0,0,0.04)' },
                                side: { size: 1, color: 'rgba(0,0,0,0.06)' }
                            }
                        }
                    },
                    plotOptions: {
                        scatter: {
                            width: 10,
                            height: 10,
                            depth: 10
                        }
                    },
                    yAxis: {
                        min: 0,
                        max: 7,
                        title: null
                    },
                    xAxis: {
                        min: 0,
                        max: 55,
                        gridLineWidth: 1
                    },
                    zAxis: {
                        min: -3,
                        max: 3,
                        showFirstLabel: false
                    },
                    legend: {
                        enabled: false
                    },
                    series: [{
                        name: 'Reading',
                        colorByPoint: false,
                        data: [[55, 5.59482909805227, 2.53873850967531], [54.4385483218588, 5.60288474068761, 2.50658112217917], [53.8770173568137, 5.61021484130655, 2.474206797877], [53.3154071048647, 5.61681939990909, 2.4416155367688], [52.7537175660116, 5.62269841649523, 2.40880733885457], [52.1919487402547, 5.62785189106498, 2.37578220413431], [51.6301006275938, 5.63227982361832, 2.34254013260802], [51.0681732280289, 5.63598221415526, 2.3090811242757], [50.5061665415601, 5.63895906267581, 2.27540517913735], [49.9440805681874, 5.64121036917996, 2.24151229719298], [49.3819153079107, 5.6427361336677, 2.20740247844257], [48.8196707607301, 5.64353635613905, 2.17307572288613], [48.2573469266455, 5.643611036594, 2.13853203052367], [47.694943805657, 5.64296017503254, 2.10377140135517], [47.1324613977645, 5.64158377145469, 2.06879383538065], [46.5698997029681, 5.63948182586044, 2.03359933260009], [46.0072587212677, 5.63665433824979, 1.99818789301351], [45.4445384526634, 5.63310130862275, 1.9625595166209], [44.8817388971552, 5.6288227369793, 1.92671420342226], [44.318860054743, 5.62381862331945, 1.89065195341758], [43.7559019254268, 5.6180889676432, 1.85437276660688], [43.1928645092067, 5.61163376995056, 1.81787664299015], [42.6297478060827, 5.60445303024151, 1.78116358256739], [42.0665518160547, 5.59654674851607, 1.7442335853386], [41.5032765391228, 5.58791492477422, 1.70708665130379], [40.9399219752869, 5.57855755901598, 1.66972278046294], [40.3764881245471, 5.56847465124134, 1.63214197281606], [39.8129749869033, 5.55766620145029, 1.59434422836315], [39.2493825623556, 5.54613220964285, 1.55632954710422], [38.685710850904, 5.53387267581901, 1.51809792903925], [38.1219598525484, 5.52088759997877, 1.47964937416826], [37.5581295672888, 5.50717698212213, 1.44098388249123], [36.9942199951253, 5.49274082224909, 1.40210145400818], [36.4302311360579, 5.47757912035966, 1.36300208871909], [35.8661629900865, 5.46169187645382, 1.32368578662398], [35.3020155572111, 5.44507909053158, 1.28415254772284], [34.7377888374319, 5.42774076259295, 1.24440237201567], [34.1734828307486, 5.40967689263791, 1.20443525950246], [33.6090975371615, 5.39088748066648, 1.16425121018323], [33.0446329566703, 5.37137252667864, 1.12385022405797], [32.4800890892753, 5.35113203067441, 1.08323230112668], [31.9154659349763, 5.33016599265378, 1.04239744138936], [31.3507634937733, 5.30847441261675, 1.00134564484602], [30.7859817656664, 5.28605729056332, 0.960076911496637], [30.2211207506556, 5.26291462649349, 0.91859124134123], [29.6561804487408, 5.23904642040726, 0.876888634379793], [29.091160859922, 5.21445267230463, 0.834969090612327], [28.5260619841993, 5.1891333821856, 0.792832610038831], [27.9608838215727, 5.16308855005017, 0.750479192659306], [27.3956263720421, 5.13631817589835, 0.707908838473751], [26.8302896356076, 5.10882225973012, 0.665121547482167], [26.2648736122691, 5.0806008015455, 0.622117319684554], [25.6993783020267, 5.05165380134447, 0.578896155080911], [25.1338037048803, 5.02198125912705, 0.535458053671238], [24.56814982083, 4.99158317489322, 0.491803015455536], [24.0024166498758, 4.960459548643, 0.447931040433805], [23.4366041920176, 4.92861038037638, 0.403842128606044], [22.8707124472554, 4.89603567009336, 0.359536279972254], [22.3047414155893, 4.86273541779394, 0.315013494532435], [21.7386910970193, 4.82870962347812, 0.270273772286586], [21.1725614915453, 4.7939582871459, 0.225317113234707], [20.6063525991674, 4.75848140879728, 0.180143517376799], [20.0400644198855, 4.72227898843226, 0.134752984712862], [19.4736969536997, 4.68535102605085, 0.0891455152428954], [18.9072502006099, 4.64769752165303, 0.0433211089668992], [18.3407241606162, 4.60931847523881, -0.00272023411512647], [17.7741188337185, 4.5702138868082, -0.0489785140031815], [17.2074342199169, 4.53038375636118, -0.095453730697266], [16.6406703192114, 4.48982808389777, -0.14214588419738], [16.0738271316019, 4.44854686941796, -0.189054974503523], [15.5069046570884, 4.40654011292175, -0.236181001615696], [14.9399028956711, 4.36380781440914, -0.283523965533898], [14.3728218473497, 4.32034997388012, -0.33108386625813], [13.8056615121244, 4.27616659133471, -0.378860703788391], [13.2384218899952, 4.2312576667729, -0.426854478124682], [12.671102980962, 4.1856232001947, -0.475065189267002], [12.1037047850249, 4.13926319160009, -0.523492837215351], [11.5362273021838, 4.09217764098908, -0.57213742196973], [10.9686705324388, 4.04436654836167, -0.620998943530139], [10.4010344757899, 3.99582991371787, -0.670077401896576], [9.83331913223696, 3.94656773705766, -0.719372797069043], [9.26552450178011, 3.89658001838106, -0.76888512904754], [8.69765058441932, 3.84586675768805, -0.818614397832066], [8.12969738015457, 3.79442795497865, -0.868560603422622], [7.56166488898588, 3.74226361025285, -0.918723745819207], [6.99355311091325, 3.68937372351065, -0.969103825021821], [6.42536204593667, 3.63575829475205, -1.01970084103046], [5.85709169405614, 3.58141732397705, -1.07051479384514], [5.28874205527167, 3.52635081118565, -1.12154568346584], [4.72031312958325, 3.47055875637785, -1.17279350989257], [4.15180491699089, 3.41404115955365, -1.22425827312533], [3.58321741749457, 3.35679802071305, -1.27593997316413], [3.01455063109432, 3.29882933985605, -1.32783861000895], [2.44580455779011, 3.24013511698266, -1.3799541836598], [1.87697919758197, 3.18071535209286, -1.43228669411667], [1.30807455046987, 3.12057004518667, -1.48483614137958], [0.73909061645383, 3.05969919626407, -1.53760252544852], [0.170027395533843, 2.99810280532508, -1.59058584632349]]
                    }]
                });


                // Add mouse events for rotation
                $(chart.container).bind('mousedown.hc touchstart.hc', function (eStart) {
                    eStart = chart.pointer.normalize(eStart);

                    var posX = eStart.pageX,
                        posY = eStart.pageY,
                        alpha = chart.options.chart.options3d.alpha,
                        beta = chart.options.chart.options3d.beta,
                        newAlpha,
                        newBeta,
                        sensitivity = 5; // lower is more sensitive

                    $(document).bind({
                        'mousemove.hc touchdrag.hc': function (e) {
                            // Run beta
                            newBeta = beta + (posX - e.pageX) / sensitivity;
                            chart.options.chart.options3d.beta = newBeta;

                            // Run alpha
                            newAlpha = alpha + (e.pageY - posY) / sensitivity;
                            chart.options.chart.options3d.alpha = newAlpha;

                            chart.redraw(false);
                        },
                        'mouseup touchend': function () {
                            $(document).unbind('.hc');
                        }
                    });
                });

            });
        })(jQuery);
    </script>




    <div>
        <table style="border-collapse: collapse; margin: 0 auto;">
            <tr style="height: 550px;">
                <td style="border: 1px solid black;">
                    <div>
                        <asp:Chart ID="chtTop" runat="server" Width="60px" Height="550px">
                            <Series>
                                <asp:Series Name="trajectory" ChartType="Line" Color="Red"></asp:Series>
                                <asp:Series Name="strikeZone" ChartType="Line" MarkerStyle="None" Color="Blue">
                                    <Points>
                                        <asp:DataPoint XValue="-0.75" YValues="1.417" />
                                        <asp:DataPoint XValue="0.75" YValues="1.417" />
                                    </Points>
                                </asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1">
                                    <AxisX Minimum="-3" Maximum="3" Interval="1" LineWidth="0">
                                        <MajorGrid Enabled="false" />
                                        <LabelStyle Enabled="false" />
                                        <MajorTickMark Enabled="false" />
                                    </AxisX>
                                    <AxisY Minimum="0" Maximum="55" Interval="5" LineWidth="0">
                                        <MajorGrid Enabled="false" />
                                        <LabelStyle Enabled="false" />
                                        <MajorTickMark Enabled="false" />
                                    </AxisY>
                                </asp:ChartArea>
                            </ChartAreas>
                        </asp:Chart>
                    </div>
                </td>
                <td style="border: 1px solid black; vertical-align: middle;">
                        <div id="hs-component">
                            <div class="container">
                                <div id="wrap" class="sidebar-wrapper">
                                    <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12 sidebar-eq demo">
                                        <div class="chart-container">
                                            <script src="https://code.highcharts.com/highcharts.js"></script>
                                            <script src="https://code.highcharts.com/highcharts-3d.js"></script>
                                            <script src="https://code.highcharts.com/modules/exporting.js"></script>
                                            <div id="container" style="height: 400px"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
<%--                    <asp:HyperLink NavigateUrl="~/MLB/pitchTracker.html" runat="server" Text="THIS IS WHAT SHOULD HAPPEN..."></asp:HyperLink>
                    <br />
                    <img src="../img/PitchTrack.PNG" width="450" /><br />--%>
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">
                    <asp:Chart ID="chtFront" runat="server" Width="60px" Height="100px">
                        <Series>
                            <asp:Series Name="trajectory" ChartType="Line" Color="Red"></asp:Series>
                            <asp:Series Name="strikeZone" ChartType="Line" MarkerStyle="None" Color="Blue">
                                <Points>
                                    <asp:DataPoint XValue="-0.75" YValues="1.5" />
                                    <asp:DataPoint XValue="-0.75" YValues="3.5" />
                                    <asp:DataPoint XValue="0.75" YValues="3.5" />
                                    <asp:DataPoint XValue="0.75" YValues="1.5" />
                                    <asp:DataPoint XValue="-0.75" YValues="1.5" />
                                </Points>
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                                <AxisX Minimum="-3" Maximum="3" Interval="1" LineWidth="0">
                                    <MajorGrid Enabled="false" />
                                    <LabelStyle Enabled="false" />
                                    <MajorTickMark Enabled="false" />
                                </AxisX>
                                <AxisY Minimum="0" Maximum="10" Interval="1" LineWidth="0">
                                    <MajorGrid Enabled="false" />
                                    <LabelStyle Enabled="false" />
                                    <MajorTickMark Enabled="false" />
                                </AxisY>
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                </td>
                <td style="border: 1px solid black;">
                    <asp:Chart ID="chtSide" runat="server" Width="550px" Height="100px">
                        <Series>
                            <asp:Series Name="trajectory" ChartType="Line" Color="Red"></asp:Series>
                            <asp:Series Name="strikeZone" ChartType="Line" MarkerStyle="None" Color="Blue">
                                <Points>
                                    <asp:DataPoint XValue="1.417" YValues="1.5" />
                                    <asp:DataPoint XValue="1.417" YValues="3.5" />
                                </Points>
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                                <AxisX Minimum="0" Maximum="55" Interval="5" LineWidth="0">
                                    <MajorGrid Enabled="false" />
                                    <LabelStyle Enabled="false" />
                                    <MajorTickMark Enabled="false" />
                                </AxisX>
                                <AxisY Minimum="0" Maximum="10" Interval="1" LineWidth="0">
                                    <MajorGrid Enabled="false" />
                                    <LabelStyle Enabled="false" />
                                    <MajorTickMark Enabled="false" />
                                </AxisY>
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>