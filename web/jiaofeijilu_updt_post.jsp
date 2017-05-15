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
String yonghuming=request.getParameter("yonghuming");
String xingming=request.getParameter("xingming");
String nianfen=request.getParameter("nianfen");
String yuefen=request.getParameter("yuefen");
String feiyongleixing=request.getParameter("feiyongleixing");
String feiyongjine=request.getParameter("feiyongjine");
String beizhu=request.getParameter("beizhu");

String id=request.getParameter("id");
String sql="update jiaofeijilu set yonghuming='"+yonghuming+"',xingming='"+xingming+"',nianfen='"+nianfen+"',yuefen='"+yuefen+"',feiyongleixing='"+feiyongleixing+"',feiyongjine='"+feiyongjine+"',beizhu='"+beizhu+"' where id= "+id;
connDbBean.executeUpdate(sql);
out.print("<script>alert('修改成功!!');location.href='jiaofeijilu_updt.jsp?id="+id+"';</script>");
%>
  </body>
</html>


