
<%@ page language="java"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=youqinglianjie.xls");
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>模块名称</title>
    

  </head>
<%
String sql;
ResultSet RS_result;
%>
  <body >
  <p>已有模块名称列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>网站名称</td>
    <td bgcolor='#CCFFFF'>网址</td>
    <td bgcolor='#CCFFFF' width='90' align='center'>LOGO</td>
    
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <%
 
   sql="";
  sql="select * from youqinglianjie  order by id desc";
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String wangzhanmingcheng="";
 String wangzhi="";
 String LOGO="";
 
 String addtime="";
 int i=0;

 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
wangzhanmingcheng=RS_result.getString("wangzhanmingcheng");
wangzhi=RS_result.getString("wangzhi");
LOGO=RS_result.getString("LOGO");

 addtime=RS_result.getString("addtime");
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=wangzhanmingcheng %></td>
    <td><%=wangzhi %></td>
    <td width='90'><a href='<%=LOGO %>' target='_blank'><img src='<%=LOGO %>' width=88 height=99 border=0 /></a></td>
    
    <td width="138" align="center"><%=addtime %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
以上数据共<%=i %>条
  </body>
</html>

