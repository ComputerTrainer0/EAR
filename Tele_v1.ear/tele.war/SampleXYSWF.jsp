<%@ page import="com.globfx.swiffchart.SwiffChart" %>
<%
  // The context parameter named SwiffChartInstallDir must specify
  // Swiff Chart Generator installation directory
  // The default value is /usr/local/SwiffChart
  String installation_dir= getServletConfig().getServletContext().getInitParameter("SwiffChartInstallDir");
  if( installation_dir == null )
    installation_dir= "/usr/local/SwiffChart";

  SwiffChart chart= new SwiffChart();

  // Required: Initialisation of the chart object
  chart.SetServletInfo(request,response);

  // Required: Specify the installation directory of Swiff Chart Generator
  chart.SetInstallDir(installation_dir);

  String sep= ";";
  boolean ignoremultseparators= true;
  chart.SetSeparators(sep, ignoremultseparators);

  // Fill the first series named "Sales 2001"
  String seriesx1= "0.5" + sep + "2.3" + sep + "8.9" + sep + "15.4";
  String seriesy1= "8" + sep + "15" + sep + "2" + sep + "19";
  chart.AddSeries();
  chart.SetSeriesXValuesFromString(0, seriesx1);
  chart.SetSeriesYValuesFromString(0, seriesy1);
  chart.SetSeriesCaption(0, "Measure 1");

  // Fill the second series named "Sales 2002"
  String seriesx2= "0" + sep + "3" + sep + "5.2" + sep + "10.8";
  String seriesy2= "23" + sep + "8" + sep +  "12" + sep + "14";
  chart.AddSeries();
  chart.SetSeriesXValuesFromString(1, seriesx2);
  chart.SetSeriesYValuesFromString(1, seriesy2);
  chart.SetSeriesCaption(1, "Measure 2");

  // Set the chart title
  chart.SetTitle("Experimental Results");

  // Apply a XY Line style
  // The chart type is stored in the style file (*.scs)
  // Here the selected style is the predefined XY line style "Honolulu"
  String style = "xy/Honolulu";
  chart.LoadStyle( style );

  chart.SetWidth( 400 );
  chart.SetHeight( 200 );
  chart.SetLooping( false );

  chart.SetOutputFormat("SWF");
  chart.ExportAsResponse();
%>