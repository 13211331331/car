<%@ page language="java"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<html>
<head>
<title>报修记录</title><script language="javascript" src="js/hsgrili.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><LINK href="qtimages/style.css" type=text/css rel=stylesheet>

</head>
 <%
String sql;
ResultSet RS_result;
%>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" >
<div align="center">
<table width="1005" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td><%@ include file="qttop.jsp"%></td>
	</tr>
	<tr>
		<td><table id="__01" width="1005"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td><table id="__01" width="1005" height="39" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><img src="qtimages/1_02_01_01.jpg" width="52" height="39" alt=""></td>
                <td width="938" height="39" background="qtimages/1_02_01_02.jpg" style="padding-top:6px"><marquee behavior=alternate width=100% scrollAmount=3>
                为打造更专业的同心花园小区管家物业管理系统，我们一起努力!美好成就的“军功章”你有一半也有我的一半！真诚期待您的加入!!
            (此处文字可在qttop.jsp中修改)
                </MARQUEE></td>
                <td><img src="qtimages/1_02_01_03.jpg" width="15" height="39" alt=""></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><table id="__01" width="1005" height="768" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td valign="top" style="background: url(qtimages/44.jpg) repeat-y ; "><%@ include file="qtleft.jsp"%></td>
                <td valign="top"><table id="__01" width="717" height="768" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td valign="top"><table id="__01" width="717" height="768" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td><img src="qtimages/1_02_02_02_01_01.jpg" width="717" height="9" alt=""></td>
                      </tr>
                      <tr>
                        <td><table id="__01" width="717"  border="0" cellpadding="0" cellspacing="0">
                          <tr>
                           <td width="704" height="768" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                             <tr>
                               <td height="32" background="qtimages/33.jpg"><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                                   <tr>
                                     <td width="3%">&nbsp;</td>
                                     <td><span class="STYLE4">报修记录</span></td>
                                   </tr>
                               </table></td>
                             </tr>
                             <tr>
                               <td>
							   
							   
							   
							   
                                	<form name="form1" id="form1" method="post" action="">
   搜索: 报修单号：<input name="baoxiudanhao" type="text" id="baoxiudanhao"  style='border:solid 1px #000000; color:#666666' size="12"  /> 物件名称：<input name="wujianmingcheng" type="text" id="wujianmingcheng"  style='border:solid 1px #000000; color:#666666' size="12"  />  故障时间：<input name="guzhangshijian1" type="text" id="guzhangshijian1"  value='' onclick="fPopCalendar(event,this,this)" size="10" />-<input name="guzhangshijian2" type="text" id="guzhangshijian2"  value='' onclick="fPopCalendar(event,this,this)" size="10"  /> 严重程度：<select name="yanzhongchengdu" id="yanzhongchengdu"><option value="">所有</option><option value="轻微">轻微</option><option value="中等">中等</option><option value="严重">严重</option></select> 维修人：<input name="weixiuren" type="text" id="weixiuren"  style='border:solid 1px #000000; color:#666666' size="12"  /> 申报人：<input name="shenbaoren" type="text" id="shenbaoren"  style='border:solid 1px #000000; color:#666666' size="12"  />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit5" value="切换视图"  style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='baoxiujilulisttp.jsp';" />
</form>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>报修单号</td>
    <td bgcolor='#CCFFFF'>物件名称</td>
    <td bgcolor='#CCFFFF' width='65' align='center'>故障时间</td>
    <td bgcolor='#CCFFFF'>严重程度</td>
    
    <td bgcolor='#CCFFFF'>维修费用</td>
    
    <td bgcolor='#CCFFFF' width='65' align='center'>维修时间</td>
    <td bgcolor='#CCFFFF'>维修人</td>
    <td bgcolor='#CCFFFF'>申报人</td>
    
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    <td width="30" align="center" bgcolor="CCFFFF">详细</td>
  </tr>
  <%
  int page_record=15;
   int curpage=1;//当前页
   int zgs=0;
				int zys=0;
String fysql="select count(id) as ss from baoxiujilu";
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

  sql="select  * from baoxiujilu where 1=1";
  
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
    <td><%=baoxiudanhao %></td><td><%=wujianmingcheng %></td><td><%=guzhangshijian %></td><td><%=yanzhongchengdu %></td><td><%=weixiufeiyong %></td><td><%=weixiushijian %></td><td><%=weixiuren %></td><td><%=shenbaoren %></td>
    <td width="138" align="center"><%=addtime %></td>
    <td width="30" align="center"> <a href="baoxiujiludetail.jsp?id=<%=id%>" >详细</a></td>
  </tr>
  	<%
  }
  }
   %>
</table><br>
以上数据共<%=i %>条,<a style="cursor:hand" onclick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="baoxiujilulist.jsp?page=1">首页</a>　<a href="baoxiujilulist.jsp?page=<%= curpage-1%>">上一页</a>　<A href="baoxiujilulist.jsp?page=<%= curpage+1%>">下一页</A>　<a href="baoxiujilulist.jsp?page=<%=zys %>">尾页</A>　当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p>
						
                             
								 
								 
								 
								 
								 
								 
								 </td>
                             </tr>
                           </table></td>
                            <td width="13" background="qtimages/1_02_02_02_01_02_02.jpg">&nbsp;</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                  
                  
                </table></td>
              </tr>
            </table></td>
          </tr>
          
        </table></td>
	</tr>
	<tr>
		<td><%@ include file="qtdown.jsp"%></td>
	</tr>
</table>
</div>
</body>
</html>
