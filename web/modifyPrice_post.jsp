<%@ page language="java"  pageEncoding="UTF-8" import="java.sql.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
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
 



String weizhi = request.getParameter("weizhi");




 ResultSet rs = connDbBean.executeQuery("SELECT * from car_positon_price t where t.weizhi="+weizhi+" ORDER BY guige");


 List<String> list = new ArrayList();
 Map map = new HashMap();

 while(rs.next()){
     list.add(rs.getString("guige"));
     map.put(rs.getString("guige"),request.getParameter("price-"+rs.getString("guige")));
 }

 for(String str:list){
     String sql = "update car_positon_price t set t.price="+map.get(str)+" where t.weizhi="+weizhi+" and t.guige="+str;
     connDbBean.executeUpdate(sql);
 }
      out.print("<script>alert('修改成功!!');location.href='carPositionPriceSetting.jsp';</script>");


  %>
  </body>
</html>

