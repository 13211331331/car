
<%@ page language="java"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=jiaofeijilu.xls");
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
    <td bgcolor='#CCFFFF'>用户名</td>
    <td bgcolor='#CCFFFF'>姓名</td>
    <td bgcolor='#CCFFFF'>年份</td>
    <td bgcolor='#CCFFFF'>月份</td>
    <td bgcolor='#CCFFFF'>费用类型</td>
    <td bgcolor='#CCFFFF'>费用金额</td>
    
    <td bgcolor='#CCFFFF' width='80' align='center'>是否审核</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <%
 
   sql="";
  sql="select * from jiaofeijilu  order by id desc";
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String yonghuming="";
 String xingming="";
 String nianfen="";
 String yuefen="";
 String feiyongleixing="";
 String feiyongjine="";
 String beizhu="";
 String issh="";
 String addtime="";
 int i=0;

 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
yonghuming=RS_result.getString("yonghuming");
xingming=RS_result.getString("xingming");
nianfen=RS_result.getString("nianfen");
yuefen=RS_result.getString("yuefen");
feiyongleixing=RS_result.getString("feiyongleixing");
feiyongjine=RS_result.getString("feiyongjine");
beizhu=RS_result.getString("beizhu");
issh=RS_result.getString("issh");
 addtime=RS_result.getString("addtime");
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=yonghuming %></td>
    <td><%=xingming %></td>
    <td><%=nianfen %></td>
    <td><%=yuefen %></td>
    <td><%=feiyongleixing %></td>
    <td><%=feiyongjine %></td>
    
    <td width='80' align='center'><a href="sh.jsp?id=<%=id%>&yuan=<%=issh%>&tablename=jiaofeijilu" onclick="return confirm('您确定要执行此操作？')"><%=issh%></a></td>
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

