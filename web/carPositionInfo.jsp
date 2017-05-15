
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
    
    <title>车位信息</title><LINK href="css.css" type=text/css rel=stylesheet><script language="javascript" src="js/hsgrili.js"></script>
    

  </head>
<%
String sql;
ResultSet RS_result;
%>
  <body >
  <p>已有车位信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:&nbsp;&nbsp;车位编号：<input name="cheweibianhao" type="text" id="cheweibianhao" style='border:solid 1px #000000; color:#666666' size="12" />&nbsp;&nbsp;位置：<input name="weizhi" type="text" id="weizhi" style='border:solid 1px #000000; color:#666666' size="12" />&nbsp;&nbsp;车主：<input name="chezhu" type="text" id="chezhu" style='border:solid 1px #000000; color:#666666' size="12" />  状态：
   <select name='zhuangtai' id='zhuangtai'>
     <option value="">所有</option>
	 <option value="空闲">空闲</option>
     <option value="已占">已占</option>
   </select>
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='cheweixinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>车位编号</td>
    <td bgcolor='#CCFFFF'>车位区域</td>
    <td bgcolor='#CCFFFF'>车位规格</td>
    <td bgcolor='#CCFFFF'>目前状态</td>
    <td bgcolor='#CCFFFF'>管理者</td>
    <td bgcolor='#CCFFFF'>位置描述</td>
    <td bgcolor='#CCFFFF'>车位价格</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    <td bgcolor='#CCFFFF'>操作</td>

  </tr>
  <%
  int page_record=15;
   int curpage=1;//当前页
   int zgs=0;
				int zys=0;
String fysql="select count(id) as ss from cheweixinxi";
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

  sql="select  t.*,t1.guige_desc,t1.weizhi_desc,t1.price from cheweixinxi t,car_positon_price t1 where 1=1 and t.weizhi=t1.weizhi and t.guige = t1.guige";
  
if(request.getParameter("cheweibianhao")=="" ||request.getParameter("cheweibianhao")==null ){}else{sql=sql+" and cheweibianhao like '%"+request.getParameter("cheweibianhao")+"%'";}
if(request.getParameter("weizhi")=="" ||request.getParameter("weizhi")==null ){}else{sql=sql+" and weizhi like '%"+request.getParameter("weizhi")+"%'";}
if(request.getParameter("chezhu")=="" ||request.getParameter("chezhu")==null ){}else{sql=sql+" and chezhu like '%"+request.getParameter("chezhu")+"%'";}
if(request.getParameter("zhuangtai")=="" ||request.getParameter("zhuangtai")==null ){}else{sql=sql+" and zhuangtai like '%"+request.getParameter("zhuangtai")+"%'";}
  sql=sql+" order by id desc";
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String cheweibianhao="";
 String weizhi_desc="";
 String guige_desc="";
 String chezhu="";
 String zhuangtai="";
 String beizhu="";
 String price="";

 String addtime="";
 int i=0;
 //difengysfiqfgieuheze

 while(RS_result.next()){
 i=i+1;
  if (i>(curpage-1)*page_record && i<=page_record*curpage)
 {

 id=RS_result.getString("id");
cheweibianhao=RS_result.getString("cheweibianhao");
weizhi_desc=RS_result.getString("weizhi_desc");
guige_desc=RS_result.getString("guige_desc");
chezhu=RS_result.getString("chezhu");
     if(chezhu == null){
         chezhu = "-";
     }
zhuangtai=RS_result.getString("zhuangtai");
beizhu=RS_result.getString("beizhu");
     price=RS_result.getString("price");

 addtime=RS_result.getString("addtime");
  //zoxngxetxoxngjxvi


 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=cheweibianhao %></td>
    <td><%=weizhi_desc %></td>
    <td><%=guige_desc %></td>
     <td><%=zhuangtai %></td>
    <td><%=chezhu %></td>
    <td><%=beizhu %></td>
    <td><%=price %></td>
    <td width="138" align="center"><%=addtime %></td>
    <td width="90" align="center"><a href="carPositionDetail.jsp?id=<%=id%>">详情</a>  <a href="cheweixinxi_updt.jsp?id=<%=id%>">修改</a>  <a href="del.jsp?id=<%=id %>&tablename=cheweixinxi" onClick="return confirm('真的要删除？')">删除</a></td>
  </tr>
  	<%
  }

  }
   %>
</table>
<%//yougongzitongji%>
<br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="cheweixinxi_list.jsp?page=1">首页</a>　<a href="cheweixinxi_list.jsp?page=<%= curpage-1%>">上一页</a>　<A href="cheweixinxi_list.jsp?page=<%= curpage+1%>">下一页</A>　<a href="cheweixinxi_list.jsp?page=<%=zys %>">尾页</A>　当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p>
  </body>
</html>

