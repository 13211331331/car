
<%@ page language="java"  pageEncoding="GB2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=cheweixinxi.xls");
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
    <td bgcolor='#CCFFFF'>车位编号</td>
    <td bgcolor='#CCFFFF'>位置</td>
    <td bgcolor='#CCFFFF'>车主</td>
    <td bgcolor='#CCFFFF'>状态</td>
    <td bgcolor='#CCFFFF'>备注</td>
    
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <%
 
   sql="";
  sql="select * from cheweixinxi  order by id desc";
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String cheweibianhao="";
 String weizhi="";
 String chezhu="";
 String zhuangtai="";
 String beizhu="";
 
 String addtime="";
 int i=0;

 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
cheweibianhao=RS_result.getString("cheweibianhao");
weizhi=RS_result.getString("weizhi");
chezhu=RS_result.getString("chezhu");
zhuangtai=RS_result.getString("zhuangtai");
beizhu=RS_result.getString("beizhu");

 addtime=RS_result.getString("addtime");
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=cheweibianhao %></td>
    <td><%=weizhi %></td>
    <td><%=chezhu %></td>
    <td><%=zhuangtai %></td>
    <td><%=beizhu %></td>
    
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

