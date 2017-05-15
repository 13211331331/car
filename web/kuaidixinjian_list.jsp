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
    <title>缴费记录</title><LINK href="css.css" type=text/css rel=stylesheet><script language="javascript" src="js/hsgrili.js"></script>
  </head>
  <%
String sql;
ResultSet RS_result;
%>
  <body >
  <p>已有缴费记录列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:&nbsp;&nbsp;用户名：<input name="yonghuming" type="text" id="yonghuming" style='border:solid 1px #000000; color:#666666' size="12" />&nbsp;&nbsp;姓名：<input name="xingming" type="text" id="xingming" style='border:solid 1px #000000; color:#666666' size="12" />  年份：<select name='nianfen' id='nianfen'><option value="">所有</option><%int nnf=0;for(nnf=2016;nnf>=2010;nnf--){%><option value='<%=nnf%>'><%=nnf%></option><%}%></select>  费用类型：
   <select name='feiyongleixing' id='feiyongleixing'>
     <option value="">所有</option>
	 <option value="水费">水费</option>
     <option value="电费">电费</option>
     <option value="物业费">物业费</option>
     <option value="燃气费">燃气费</option>
   </select>
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='jiaofeijilu_listxls.jsp';" />
</form>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>用户名</td>
    <td bgcolor='#CCFFFF'>姓名</td>
    <td bgcolor='#CCFFFF'>年份</td>
    <td bgcolor='#CCFFFF'>月份</td>
    <td bgcolor='#CCFFFF'>费用类型</td>
    <td bgcolor='#CCFFFF'>费用金额</td>
    
    <td bgcolor='#CCFFFF' width='80' align='center'>是否已交</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <%
   int page_record=15;
   int curpage=1;//当前页
   int zgs=0;
				int zys=0;
String fysql="select count(id) as ss from jiaofeijilu";
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

  sql="select  * from jiaofeijilu where 1=1";
  
if(request.getParameter("yonghuming")=="" ||request.getParameter("yonghuming")==null ){}else{sql=sql+" and yonghuming like '%"+new String(request.getParameter("yonghuming").getBytes("8859_1"))+"%'";}
if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+new String(request.getParameter("xingming").getBytes("8859_1"))+"%'";}
if(request.getParameter("nianfen")=="" ||request.getParameter("nianfen")==null ){}else{sql=sql+" and nianfen like '%"+new String(request.getParameter("nianfen").getBytes("8859_1"))+"%'";}
if(request.getParameter("feiyongleixing")=="" ||request.getParameter("feiyongleixing")==null ){}else{sql=sql+" and feiyongleixing like '%"+new String(request.getParameter("feiyongleixing").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc";
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
  double feiyongjinez=0;
 while(RS_result.next()){
 i=i+1;
  if (i>(curpage-1)*page_record && i<=page_record*curpage)
 {
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
 feiyongjinez=feiyongjinez+Float.valueOf(feiyongjine).floatValue();

%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=yonghuming %></td>
    <td><%=xingming %></td>
    <td><%=nianfen %></td>
    <td><%=yuefen %></td>
    <td><%=feiyongleixing %></td>
    <td><%=feiyongjine %></td>
    
    <td width='80' align='center'><a href="sh.jsp?id=<%=id%>&yuan=<%=issh%>&tablename=jiaofeijilu" onClick="return confirm('您确定要执行此操作？')"><%=issh%></a></td>
    <td width="138" align="center"><%=addtime %></td>
    <td width="90" align="center"><a href="jiaofeijilu_updt.jsp?id=<%=id%>">修改</a>  <a href="del.jsp?id=<%=id %>&tablename=jiaofeijilu" onClick="return confirm('真的要删除？')">删除</a> <a href="jiaofeijilu_detail.jsp?id=<%=id%>">详细</a></td>
  </tr>
  	<%
  }
  }
   %>
</table>
<p>数据统计：共计费用金额:<%=feiyongjinez%>；</p>
<br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="jiaofeijilu_list.jsp?page=1">首页</a>　<a href="jiaofeijilu_list.jsp?page=<%= curpage-1%>">上一页</a>　<A href="jiaofeijilu_list.jsp?page=<%= curpage+1%>">下一页</A>　<a href="jiaofeijilu_list.jsp?page=<%=zys %>">尾页</A>　当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p>
  </body>
</html>
