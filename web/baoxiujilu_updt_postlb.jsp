<%@ page language="java"  pageEncoding="UTF-8" import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'adminyanzheng.jsp' starting page</title>
  </head>
  <body>
  <%
String baoxiudanhao=request.getParameter("baoxiudanhao");
String wujianmingcheng=request.getParameter("wujianmingcheng");
String guzhangshijian=request.getParameter("guzhangshijian");
String yanzhongchengdu=request.getParameter("yanzhongchengdu");
String guzhangmiaoshu=request.getParameter("guzhangmiaoshu");
String weixiufeiyong=request.getParameter("weixiufeiyong");
String weixiujieguo=request.getParameter("weixiujieguo");
String weixiushijian=request.getParameter("weixiushijian");
String weixiuren=request.getParameter("weixiuren");
String shenbaoren=request.getParameter("shenbaoren");

String id=request.getParameter("id");
String sql="update baoxiujilu set baoxiudanhao='"+baoxiudanhao+"',wujianmingcheng='"+wujianmingcheng+"',guzhangshijian='"+guzhangshijian+"',yanzhongchengdu='"+yanzhongchengdu+"',guzhangmiaoshu='"+guzhangmiaoshu+"',weixiufeiyong='"+weixiufeiyong+"',weixiujieguo='"+weixiujieguo+"',weixiushijian='"+weixiushijian+"',weixiuren='"+weixiuren+"',shenbaoren='"+shenbaoren+"' where id= "+id;
connDbBean.executeUpdate(sql);
out.print("<script>alert('设置成功!!');location.href='baoxiujilu_updtlb.jsp?id="+id+"';</script>");
%>
  </body>
</html>


