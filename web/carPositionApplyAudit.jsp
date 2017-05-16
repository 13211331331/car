
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
  <p>车位申请审核列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:&nbsp;&nbsp;车位编号：<input name="cheweibianhao" type="text" id="cheweibianhao" style='border:solid 1px #000000; color:#666666' size="12" />&nbsp;&nbsp;位置：<input name="weizhi" type="text" id="weizhi" style='border:solid 1px #000000; color:#666666' size="12" />&nbsp;&nbsp;
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>车位编号</td>
    <td bgcolor='#CCFFFF'>车位区域</td>
    <td bgcolor='#CCFFFF'>车主</td>
    <td bgcolor='#CCFFFF'>车牌号码</td>
    <td bgcolor='#CCFFFF'>目前状态</td>
    <td bgcolor='#CCFFFF'>申请驶入时间</td>
    <td bgcolor='#CCFFFF'>审核状态</td>
    <td bgcolor='#CCFFFF'>备注</td>
    <td width="138" align="center" bgcolor="CCFFFF">申请时间</td>
    <td bgcolor='#CCFFFF'>操作</td>

  </tr>
  <%
  int page_record=15;
   int curpage=1;//当前页
   int zgs=0;
				int zys=0;
String fysql="select count(tt.id) as ss from (select  t.*,t1.cheweibianhao,t2.price,t2.weizhi_desc from car_postion_apply t,cheweixinxi t1,car_positon_price t2 where 1=1 and t.positionid=t1.id  and t1.weizhi=t2.weizhi and t1.guige = t2.guige) tt";
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
				
				
  sql="select  t.*,t1.cheweibianhao,t2.price,t2.weizhi_desc,t1.zhuangtai from car_postion_apply t,cheweixinxi t1,car_positon_price t2 where 1=1 and t.positionid=t1.id  and t1.weizhi=t2.weizhi and t1.guige = t2.guige";
  

  sql=sql+" order by t.createtime desc";
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String cheweibianhao="";
 String weizhi_desc="";
 String zhuangtai="";
 String remark="";
 String starttime="";

 String carnumber="";
 String carusername="";
 String createtime="";
 String status_desc="";


 int i=0;
 //difengysfiqfgieuheze

 while(RS_result.next()){
 i=i+1;
  if (i>(curpage-1)*page_record && i<=page_record*curpage)
 {

 id=RS_result.getString("id");
cheweibianhao=RS_result.getString("cheweibianhao");
weizhi_desc=RS_result.getString("weizhi_desc");
//guige_desc=RS_result.getString("guige_desc");

carnumber=RS_result.getString("carnumber");
carusername=RS_result.getString("carusername");
zhuangtai=RS_result.getString("zhuangtai");
remark=RS_result.getString("remark");
     weizhi_desc=RS_result.getString("weizhi_desc");

 createtime=RS_result.getString("createtime");
 int status =RS_result.getInt("status");
     if(status == 0){
         status_desc="等待审核";
     }
     if(status == 1){
         status_desc="审核通过";
     }
     if(status == 2){
         status_desc="审核不通过";
     }
  //zoxngxetxoxngjxvi


/*
     <td width="30" align="center" bgcolor="CCFFFF">序号</td>
     <td bgcolor='#CCFFFF'>车位编号</td>
     <td bgcolor='#CCFFFF'>车位区域</td>
     <td bgcolor='#CCFFFF'>车主</td>
     <td bgcolor='#CCFFFF'>车牌号码</td>
     <td bgcolor='#CCFFFF'>目前状态</td>
     <td bgcolor='#CCFFFF'>申请驶入时间</td>
     <td bgcolor='#CCFFFF'>审核状态</td>
     <td bgcolor='#CCFFFF'>备注</td>
     <td width="138" align="center" bgcolor="CCFFFF">申请时间</td>
     <td bgcolor='#CCFFFF'>操作</td>*/

 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=cheweibianhao %></td>
    <td><%=weizhi_desc %></td>
    <td><%=carusername %></td>
     <td><%=carnumber %></td>
    <td><%=zhuangtai %></td>
    <td><%=starttime %></td>
    <td><%=status_desc %></td>
    <td><%=remark %></td>
    <td><%=createtime %></td>
    <td width="90" align="center">
        <a href="carPositionApply_input.jsp?id=<%=id%>">审核</a>
    </td>
  </tr>
  	<%
  }

  }
   %>
</table>
<%//yougongzitongji%>
<br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="carPositionApplyAudit.jsp?page=1">首页</a>　<a href="carPositionApplyAudit.jsp?page=<%= curpage-1%>">上一页</a>　<A href="carPositionApplyAudit.jsp?page=<%= curpage+1%>">下一页</A>　<a href="carPositionApplyAudit.jsp?page=<%=zys %>">尾页</A>　当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p>
  </body>
</html>

