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

  // Fill the series and categories
  String categories= "USA" + sep + "Germany" + sep + "United Kingdom";
  chart.SetCategoriesFromString(categories);

  String series= "45" + sep + "28" + sep + "16";

  chart.AddSeries();
  chart.SetSeriesValuesFromString(0, series);

  // Set the chart title
  chart.SetTitle("Geographical Distribution");

  // Apply a Pie style
  // The chart type is stored in the style file (*.scs)
  // Here the selected style is the predefined pie style "Honolulu"
  String style = "pie/Honolulu";
  chart.LoadStyle( style );

  chart.SetWidth( 400 );
  chart.SetHeight( 200 );
  chart.SetLooping( false );

  chart.SetOutputFormat("SWF");
  chart.ExportAsResponse();
%>
