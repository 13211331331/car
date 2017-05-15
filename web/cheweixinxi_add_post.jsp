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
 

String cheweibianhao = request.getParameter("cheweibianhao");
String weizhi = request.getParameter("weizhi");
String guige = request.getParameter("guige");
//String chezhu=request.getParameter("chezhu");
//String zhuangtai=request.getParameter("zhuangtai");

String beizhu =  request.getParameter("beizhu");


 ResultSet RS_result = connDbBean.executeQuery("select * from cheweixinxi where cheweibianhao='"+cheweibianhao+"'");

 if(RS_result.next()){
     out.print("<script>alert('该车位编号已经存在,请换其他车位编号!');window.history.go(-1);</script>");
     RS_result.close();
 }else{
     String sql="insert into cheweixinxi(cheweibianhao,weizhi,zhuangtai,beizhu,guige) values('"+cheweibianhao+"','"+weizhi+"','"+"空闲"+"','"+beizhu+"',"+guige+") ";
     connDbBean.executeUpdate(sql);
     out.print("<script>alert('添加成功!!');location.href='cheweixinxi_add.jsp';</script>");
 }


 %>
  </body>
</html>

