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
 

String wangzhanmingcheng=request.getParameter("wangzhanmingcheng");
String wangzhi=request.getParameter("wangzhi");
String LOGO=request.getParameter("LOGO");

//gdsosss ResultSet RS_result=connDbBean.executeQuery("select * from youqinglianjie where wangzhanmingcheng='"+wangzhanmingcheng+"'");

//gdsosss if(RS_result.next())
//gdsosss{
//gdsosssout.print("<script>alert('该网站名称已经存在,请换其他网站名称!');window.history.go(-1);</script>");
//gdsosss	}
//gdsossselse{

	
  	  	String sql="insert into youqinglianjie(wangzhanmingcheng,wangzhi,LOGO) values('"+wangzhanmingcheng+"','"+wangzhi+"','"+LOGO+"') ";
  	  	
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('添加成功!!');location.href='youqinglianjie_add.jsp';</script>");
  	  
//gdsosss	}
//gdsosss RS_result.close();

 %>
  </body>
</html>

