
<%@ page language="java"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>

<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>报修记录详细</title><script language="javascript" src="js/hsgrili.js"></script>
	
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	fewgidsoidfjdkgds
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>

  报修记录详细:
  <br><br>
   <%
  String sql="select * from baoxiujilu where id="+id;
  String baoxiudanhao="";
String wujianmingcheng="";
String guzhangshijian="";
String yanzhongchengdu="";
String guzhangmiaoshu="";
String weixiufeiyong="";
String weixiujieguo="";
String weixiushijian="";
String weixiuren="";
String shenbaoren="";
String pingfen="";
String pingyu="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  baoxiudanhao=RS_result.getString("baoxiudanhao");
wujianmingcheng=RS_result.getString("wujianmingcheng");
guzhangshijian=RS_result.getString("guzhangshijian");
yanzhongchengdu=RS_result.getString("yanzhongchengdu");
guzhangmiaoshu=RS_result.getString("guzhangmiaoshu");
weixiufeiyong=RS_result.getString("weixiufeiyong");
weixiujieguo=RS_result.getString("weixiujieguo");
weixiushijian=RS_result.getString("weixiushijian");
weixiuren=RS_result.getString("weixiuren");
shenbaoren=RS_result.getString("shenbaoren");
pingfen=RS_result.getString("pingfen");
pingyu=RS_result.getString("pingyu");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>报修单号：</td><td width='39%'><%=baoxiudanhao%></td>
<td width='11%'>物件名称：</td><td width='39%'><%=wujianmingcheng%></td></tr><tr>
<td width='11%'>故障时间：</td><td width='39%'><%=guzhangshijian%></td>
<td width='11%'>严重程度：</td><td width='39%'><%=yanzhongchengdu%></td></tr><tr>
<td width='11%'>故障描述：</td><td width='39%'><%=guzhangmiaoshu%></td>
<td width='11%'>维修费用：</td><td width='39%'><%=weixiufeiyong%></td></tr><tr>
<td width='11%'>维修结果：</td><td width='39%'><%=weixiujieguo%></td>
<td width='11%'>维修时间：</td><td width='39%'><%=weixiushijian%></td></tr>
<tr>
  <td>评分：</td>
  <td><%=pingfen%></td>
  <td>评语：</td>
  <td><%=pingyu%></td>
</tr>
<tr>
<td width='11%'>维修人：</td><td width='39%'><%=weixiuren%></td>
<td width='11%'>申报人：</td><td width='39%'><%=shenbaoren%></td>
</tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
  </table>

  </body>
</html>


