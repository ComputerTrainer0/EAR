<%@ page import="com.globfx.swiffchart.SwiffChart" %>
<%
  response.addHeader( "Pragma", "no-cache" );

  SwiffChart chart= new SwiffChart();

  String result="OK";
  boolean ok= true;

  String installation_dir= getServletConfig().getServletContext().getInitParameter("SwiffChartInstallDir");
  if( installation_dir == null )
    installation_dir= "/usr/local/SwiffChart";

  try
    {
    chart.SetInstallDir(installation_dir);
    chart.GetVersion();
    }
  catch( Exception e )
    {
    ok= false;
    }
%>

<html>
<head>
<title>THIS IS TELE Version 1.0 APPLICATION</title>
<style>
.BodyStyle { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px; }
.HeaderStyle { font-family: Verdana, Arial, Helvetica, sans-serif; }
a { color: #0066CC; }
a:hover { color: #CC0000; }
</style>
</head>
<body>

<h3 class="HeaderStyle">Welcome to Tele Version 1.0 Application</h3>

<% if( !ok ) { %>
<hr size=1 color=#ffd700>
<table width="100%" border="0" cellspacing="2" cellpadding="5" bgcolor="#ffffCC">
<tr><td>

<b><font color="#ff0000" class="BodyStyle">
<font style="font-size: 14px;">ERROR: Could not determine Tele Version 1.0 Generator installation directory</font><br>
You MUST fix this error before running the samples below.
</font></b>

<h5 class="HeaderStyle"><b>Solution: Specify Tele version 1.0 Generator installation directory</b></h5>

</td></tr></table>
<hr size=1 color=#ffd700>
<br><br>
<% } %>

<table width="100%" border="0" cellspacing="2" cellpadding="5">
  <tr valign="top" bgcolor="#0066CC">
    <td class="BodyStyle" colspan="4"><font color="#FFFFFF"><b>Charts samples in Flash format</b></font></td>
  </tr>
  <tr valign="middle" bgcolor="#EEEEEE">
    <td class="BodyStyle">
    <b><a href="SampleXYSWF.html">SampleXY (Flash)</a></b>
    </td>
    <td class="BodyStyle">
    Simple chart with 2 XY Curves generated in Macromedia Flash format
    </td>
  </tr>
  <tr valign="middle">
    <td class="BodyStyle">
    <b><a href="SamplePieSWF.html">SamplePie (Flash)</a></b>
    </td>
    <td class="BodyStyle">
    Simple Pie chart generated in Macromedia Flash format
    </td>
  </tr>
  <tr valign="middle" bgcolor="#EEEEEE">
    <td class="BodyStyle">
    <b><a href="SampleBarSWF.html">SampleBar (Flash)</a></b>
    </td>
    <td class="BodyStyle">
    Simple Bar chart with 2 series generated in Macromedia Flash format
    </td>
  </tr>
  <tr valign="middle">
    <td class="BodyStyle">
    <b><a href="SampleColumnSWF.html">SampleColumn (Flash)</a></b>
    </td>
    <td class="BodyStyle">
    Simple Column chart with 2 series generated in Macromedia Flash format
    </td>
  </tr>
  <tr valign="middle" bgcolor="#EEEEEE">
    <td class="BodyStyle">
    <b><a href="SampleLineSWF.html">SampleLine (Flash)</a></b>
    </td>
    <td class="BodyStyle">
    Simple Line chart with 2 series generated in Macromedia Flash format
    </td>
  </tr>
</table>
<br>
<br>
<table width="100%" border="0" cellspacing="2" cellpadding="5">
  <tr valign="top" bgcolor="#0066CC">
    <td class="BodyStyle" colspan="4"><font color="#FFFFFF"><b>Charts samples in image JPEG format</b></font></td>
  </tr>
  <tr valign="middle" bgcolor="#EEEEEE">
    <td class="BodyStyle">
    <b><a href="SampleXYJPG.html">SampleXY (JPEG Image)</a></b>
    </td>
    <td class="BodyStyle">
    Simple chart with 2 XY Curves generated as a JPEG image
    </td>
  </tr>
  <tr valign="middle">
    <td class="BodyStyle">
    <b><a href="SamplePieJPG.html">SamplePie (JPEG Image)</a></b>
    </td>
    <td class="BodyStyle">
    Simple Pie chart generated as a JPEG image
    </td>
  </tr>
  <tr valign="middle" bgcolor="#EEEEEE">
    <td class="BodyStyle">
    <b><a href="SampleBarJPG.html">SampleBar (JPEG Image)</a></b>
    </td>
    <td class="BodyStyle">
    Simple Bar chart with 2 series generated as a JPEG image
    </td>
  </tr>
  <tr valign="middle">
    <td class="BodyStyle">
    <b><a href="SampleColumnJPG.html">SampleColumn (JPEG Image)</a></b>
    </td>
    <td class="BodyStyle">
    Simple Column chart with 2 series generated as a JPEG image
    </td>
  </tr>
  <tr valign="middle" bgcolor="#EEEEEE">
    <td class="BodyStyle">
    <b><a href="SampleLineJPG.html">SampleLine (JPEG Image)</a></b>
    </td>
    <td class="BodyStyle">
    Simple Line chart with 2 series generated as a JPEG image
    </td>
  </tr>
</table>

</body>
</html>
