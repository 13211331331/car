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

//gdsosss ResultSet RS_result=connDbBean.executeQuery("select * from baoxiujilu where shenbaoren='"+shenbaoren+"'");

//gdsosss if(RS_result.next())
//gdsosss{
//gdsosssout.print("<script>alert('该申报人已经存在,请换其他申报人!');window.history.go(-1);</script>");
//gdsosss	}
//gdsossselse{

	
  	  	String sql="insert into baoxiujilu(baoxiudanhao,wujianmingcheng,guzhangshijian,yanzhongchengdu,guzhangmiaoshu,weixiufeiyong,weixiujieguo,weixiushijian,weixiuren,shenbaoren) values('"+baoxiudanhao+"','"+wujianmingcheng+"','"+guzhangshijian+"','"+yanzhongchengdu+"','"+guzhangmiaoshu+"','"+weixiufeiyong+"','"+weixiujieguo+"','"+weixiushijian+"','"+weixiuren+"','"+shenbaoren+"') ";
  	  	
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('操作成功!');location.href='index.jsp';</script>");
  	  
//gdsosss	}
//gdsosss RS_result.close();

 %>
  </body>
</html>

