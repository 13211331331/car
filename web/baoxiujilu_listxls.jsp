
<%@ page language="java"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=baoxiujilu.xls");
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
    <td bgcolor='#CCFFFF'>报修单号</td>
    <td bgcolor='#CCFFFF'>物件名称</td>
    <td bgcolor='#CCFFFF' width='65' align='center'>故障时间</td>
    <td bgcolor='#CCFFFF'>严重程度</td>
    
    <td bgcolor='#CCFFFF'>维修费用</td>
    
    <td bgcolor='#CCFFFF' width='65' align='center'>维修时间</td>
    <td bgcolor='#CCFFFF'>维修人</td>
    <td bgcolor='#CCFFFF'>申报人</td>
    
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <%
 
   sql="";
  sql="select * from baoxiujilu  order by id desc";
  RS_result=connDbBean.executeQuery(sql);
 String id="";
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
 
 String addtime="";
 int i=0;

 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
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

 addtime=RS_result.getString("addtime");
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=baoxiudanhao %></td>
    <td><%=wujianmingcheng %></td>
    <td><%=guzhangshijian %></td>
    <td><%=yanzhongchengdu %></td>
    
    <td><%=weixiufeiyong %></td>
    
    <td><%=weixiushijian %></td>
    <td><%=weixiuren %></td>
    <td><%=shenbaoren %></td>
    
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

