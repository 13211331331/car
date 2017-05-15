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

//gdsosss ResultSet RS_result=connDbBean.executeQuery("select * from jiaofeijilu where yonghuming='"+yonghuming+"'");

//gdsosss if(RS_result.next())
//gdsosss{
//gdsosssout.print("<script>alert('该用户名已经存在,请换其他用户名!');window.history.go(-1);</script>");
//gdsosss	}
//gdsossselse{

	
  	  	String sql="insert into jiaofeijilu(yonghuming,xingming,nianfen,yuefen,feiyongleixing,feiyongjine,beizhu) values('"+yonghuming+"','"+xingming+"','"+nianfen+"','"+yuefen+"','"+feiyongleixing+"','"+feiyongjine+"','"+beizhu+"') ";
  	  	
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('添加成功!!');location.href='jiaofeijilu_add.jsp';</script>");
  	  
//gdsosss	}
//gdsosss RS_result.close();

 %>
  </body>
</html>

