
<%@ page language="java"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>友情连接</title><LINK href="css.css" type=text/css rel=stylesheet><script language="javascript" src="js/hsgrili.js"></script>
    

  </head>
<%
String sql;
ResultSet RS_result;
%>
  <body >
  <p>已有友情连接列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:&nbsp;&nbsp;网站名称：<input name="wangzhanmingcheng" type="text" id="wangzhanmingcheng" style='border:solid 1px #000000; color:#666666' size="12" />&nbsp;&nbsp;网址：<input name="wangzhi" type="text" id="wangzhi" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='youqinglianjie_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td width="273" bgcolor='#CCFFFF'>网站名称</td>
    <td width="207" bgcolor='#CCFFFF'>网址</td>
    <td bgcolor='#CCFFFF' width='236' align='center'>LOGO</td>
    
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <%
  int page_record=15;
   int curpage=1;//当前页
   int zgs=0;
				int zys=0;
String fysql="select count(id) as ss from youqinglianjie";
				ResultSet RS_resultfy=connDbBean.executeQuery(fysql);
  while(RS_resultfy.next()){
  zgs=Integer.parseInt(RS_resultfy.getString("ss"));
  if(zgs % page_record==0)
  {
	  zys=zgs/page_record;
  }
  else
  {
	  zys=zgs/page_record+1;
  }
  }
  
  String hsgnpage=request.getParameter("page");
  				if (hsgnpage!=null)
				{
					curpage=Integer.parseInt(request.getParameter("page"));//获取传递的值，需要显示的页
				}
				else
				{
					curpage=1;
				}
				if (curpage==0)
				{
					curpage=1;
				}
				if(curpage>zys)
				{
					curpage=zys;
				}
				
				
   sql="";

  sql="select  * from youqinglianjie where 1=1";
  
if(request.getParameter("wangzhanmingcheng")=="" ||request.getParameter("wangzhanmingcheng")==null ){}else{sql=sql+" and wangzhanmingcheng like '%"+new String(request.getParameter("wangzhanmingcheng").getBytes("8859_1"))+"%'";}
if(request.getParameter("wangzhi")=="" ||request.getParameter("wangzhi")==null ){}else{sql=sql+" and wangzhi like '%"+new String(request.getParameter("wangzhi").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc";
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String wangzhanmingcheng="";
 String wangzhi="";
 String LOGO="";
 
 String addtime="";
 int i=0;
 //difengysfiqfgieuheze

 while(RS_result.next()){
 i=i+1;
  if (i>(curpage-1)*page_record && i<=page_record*curpage)
 {

 id=RS_result.getString("id");
wangzhanmingcheng=RS_result.getString("wangzhanmingcheng");
wangzhi=RS_result.getString("wangzhi");
LOGO=RS_result.getString("LOGO");

 addtime=RS_result.getString("addtime");
  //zoxngxetxoxngjxvi
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=wangzhanmingcheng %></td>
    <td><%=wangzhi %></td>
    <td width='236'><a href='<%=LOGO %>' target='_blank'><img src='<%=LOGO %>' width=234 height=63 border=0 /></a></td>
    
    <td width="138" align="center"><%=addtime %></td>
    <td width="60" align="center"><a href="youqinglianjie_updt.jsp?id=<%=id%>">修改</a>  <a href="del.jsp?id=<%=id %>&tablename=youqinglianjie" onClick="return confirm('真的要删除？')">删除</a></td>
  </tr>
  	<%
  }

  }
   %>
</table>
<%//yougongzitongji%>
<br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="youqinglianjie_list.jsp?page=1">首页</a>　<a href="youqinglianjie_list.jsp?page=<%= curpage-1%>">上一页</a>　<A href="youqinglianjie_list.jsp?page=<%= curpage+1%>">下一页</A>　<a href="youqinglianjie_list.jsp?page=<%=zys %>">尾页</A>　当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p>
  </body>
</html>

