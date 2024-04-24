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

  // Fill the categories
  String categories= "Q1" + sep + "Q2" + sep + "Q3" + sep + "Q4";
  chart.SetCategoriesFromString(categories);

  // Fill the first series named "Sales 2001"
  String series1= "8" + sep + "15" + sep + "6" + sep + "19";
  chart.AddSeries();
  chart.SetSeriesValuesFromString(0, series1);
  chart.SetSeriesCaption(0, "Sales 2001");

  // Fill the second series named "Sales 2002"
  String series2= "23" + sep + "8" + sep + "12" + sep + "14";
  chart.AddSeries();
  chart.SetSeriesValuesFromString(1, series2);
  chart.SetSeriesCaption(1, "Sales 2002");

  // Set the chart title
  chart.SetTitle("Financial Results");
  chart.SetSubtitle("(Values in M$ - Year to year results)");

  // Apply a Line style
  // The chart type is stored in the style file (*.scs)
  // Here the selected style is the predefined line style "Honolulu"
  String style = "line/Honolulu";
  chart.LoadStyle( style );

  chart.SetWidth( 400 );
  chart.SetHeight( 200 );
  chart.SetLooping( false );

  chart.SetOutputFormat("SWF");
  chart.ExportAsResponse();
%>