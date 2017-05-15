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
    <title>报修记录</title><LINK href="css.css" type=text/css rel=stylesheet><script language="javascript" src="js/hsgrili.js"></script>
  </head>
  <%
String sql;
ResultSet RS_result;
%>
  <body >
  <p>已有报修记录列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:&nbsp;&nbsp;报修单号：<input name="baoxiudanhao" type="text" id="baoxiudanhao" style='border:solid 1px #000000; color:#666666' size="12" />&nbsp;&nbsp;物件名称：<input name="wujianmingcheng" type="text" id="wujianmingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  故障时间：<input name="guzhangshijian1" type="text" id="guzhangshijian1"  value='' onClick="fPopCalendar(event,this,this)" size="10" />-<input name="guzhangshijian2" type="text" id="guzhangshijian2"  value='' onClick="fPopCalendar(event,this,this)" size="10"  />  严重程度：<select name='yanzhongchengdu' id='yanzhongchengdu'><option value="">所有</option><option value="轻微">轻微</option><option value="中等">中等</option><option value="严重">严重</option></select>&nbsp;&nbsp;维修人：<input name="weixiuren" type="text" id="weixiuren" style='border:solid 1px #000000; color:#666666' size="12" />&nbsp;&nbsp;申报人：<input name="shenbaoren" type="text" id="shenbaoren" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>报修单号</td><td bgcolor='#CCFFFF'>物件名称</td><td bgcolor='#CCFFFF' width='65' align='center'>故障时间</td><td bgcolor='#CCFFFF'>严重程度</td><td bgcolor='#CCFFFF'>维修费用</td><td bgcolor='#CCFFFF' width='65' align='center'>维修时间</td><td bgcolor='#CCFFFF'>维修人</td><td bgcolor='#CCFFFF'>申报人</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <%
  int page_record=15;
   int curpage=1;//当前页
   int zgs=0;
				int zys=0;
String fysql="select count(id) as ss from baoxiujilu where shenbaoren='"+request.getSession().getAttribute("username")+"'";
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

  sql="select  * from baoxiujilu where  shenbaoren='"+request.getSession().getAttribute("username")+"'";

  
if(request.getParameter("baoxiudanhao")=="" ||request.getParameter("baoxiudanhao")==null ){}else{sql=sql+" and baoxiudanhao like '%"+new String(request.getParameter("baoxiudanhao").getBytes("8859_1"))+"%'";}
if(request.getParameter("wujianmingcheng")=="" ||request.getParameter("wujianmingcheng")==null ){}else{sql=sql+" and wujianmingcheng like '%"+new String(request.getParameter("wujianmingcheng").getBytes("8859_1"))+"%'";}
if (request.getParameter("guzhangshijian1")==""  ||request.getParameter("guzhangshijian1")==null ) {}else{sql=sql+" and guzhangshijian >= '"+new String(request.getParameter("guzhangshijian1").getBytes("8859_1"))+"'";}
if (request.getParameter("guzhangshijian2")==""  ||request.getParameter("guzhangshijian2")==null ) {}else {sql=sql+" and guzhangshijian <= '"+new String(request.getParameter("guzhangshijian2").getBytes("8859_1"))+"'";}
if(request.getParameter("yanzhongchengdu")=="" ||request.getParameter("yanzhongchengdu")==null ){}else{sql=sql+" and yanzhongchengdu like '%"+new String(request.getParameter("yanzhongchengdu").getBytes("8859_1"))+"%'";}
if(request.getParameter("weixiuren")=="" ||request.getParameter("weixiuren")==null ){}else{sql=sql+" and weixiuren like '%"+new String(request.getParameter("weixiuren").getBytes("8859_1"))+"%'";}
if(request.getParameter("shenbaoren")=="" ||request.getParameter("shenbaoren")==null ){}else{sql=sql+" and shenbaoren like '%"+new String(request.getParameter("shenbaoren").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc";
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String baoxiudanhao="";
 String wujianmingcheng="";
 String guzhangshijian="";
 String yanzhongchengdu="";
 String guzhangmiaoshu="";
 String weixiufeiyong="";
 String weixiujieguo="";
 String weixiushijian="";
 String weixiuren="";
 String shenbaoren="";
 
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
    if (i>(curpage-1)*page_record && i<=page_record*curpage)
 {

 id=RS_result.getString("id");
 baoxiudanhao=RS_result.getString("baoxiudanhao");
 wujianmingcheng=RS_result.getString("wujianmingcheng");
 guzhangshijian=RS_result.getString("guzhangshijian");
 yanzhongchengdu=RS_result.getString("yanzhongchengdu");
 guzhangmiaoshu=RS_result.getString("guzhangmiaoshu");
 weixiufeiyong=RS_result.getString("weixiufeiyong");
 weixiujieguo=RS_result.getString("weixiujieguo");
 weixiushijian=RS_result.getString("weixiushijian");
 weixiuren=RS_result.getString("weixiuren");
 shenbaoren=RS_result.getString("shenbaoren");
 
 addtime=RS_result.getString("addtime");
 
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=baoxiudanhao %></td>
 <td><%=wujianmingcheng %></td>
 <td><%=guzhangshijian %></td>
 <td><%=yanzhongchengdu %></td>
 
 <td><%=weixiufeiyong %></td>
 
 <td><%=weixiushijian %></td>
 <td><%=weixiuren %></td>
 <td><%=shenbaoren %></td>
 
    <td width="138" align="center"><%=addtime %></td>
    <td width="90" align="center">
	<%
		if(weixiuren.equals(""))
		{
			%>
	<a href="baoxiujilu_updt.jsp?id=<%=id%>">修改</a>  <a href="del.jsp?id=<%=id %>&tablename=baoxiujilu" onClick="return confirm('真的要删除？')">删除</a>
			<%
		}
		else
		{
		%>
	<a href="baoxiujilu_updtlb2.jsp?id=<%=id%>">评价</a>
		<%
		}
		
	%>
	
	 <a href="baoxiujilu_detail.jsp?id=<%=id%>">详细</a>
	
	</td>
  </tr>
  	<%
  }
  }
   %>
</table><br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="baoxiujilu_list2.jsp?page=1">首页</a>　<a href="baoxiujilu_list2.jsp?page=<%= curpage-1%>">上一页</a>　<A href="baoxiujilu_list2.jsp?page=<%= curpage+1%>">下一页</A>　<a href="baoxiujilu_list2.jsp?page=<%=zys %>">尾页</A>　当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p>

  </body>
</html>

