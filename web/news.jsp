<%@ page language="java"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<html>
<head>
<title>同心花园小区管家物业管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><LINK href="qtimages/style.css" type=text/css rel=stylesheet>


</head>
<%
String lb=new String(request.getParameter("lb").getBytes("8859_1"));
String sql="";
String addtime="";
int i=0;
String biaoti="";
ResultSet RS_result;
String  id="";
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
                为打造更专业的三千城物业管理系统，我们一起努力!美好成就的“军功章”你有一半也有我的一半！真诚期待您的加入!!
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
                                     <td><span class="STYLE4"><%=lb%></span></td>
                                   </tr>
                               </table></td>
                             </tr>
                             <tr>
                               <td><table width="98%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#FA9090" class="newsline" style="border-collapse:collapse">
                                 <%
 int page_record=20;
   int curpage=1;//当前页
   int zgs=0;
				int zys=0;
String fysql="select count(id) as ss from xinwentongzhi where leibie='"+lb+"'";
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
				


  sql="select  * from xinwentongzhi where leibie='"+lb+"' ";
  RS_result=connDbBean.executeQuery(sql);
  id="";
  biaoti="";String leibie="";String neirong="";String tianjiaren="";String shouyetupian="";String dianjilv="";
  addtime="";
  i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
    if (i>(curpage-1)*page_record && i<=page_record*curpage)
 {

 id=RS_result.getString("id");
biaoti=RS_result.getString("biaoti");leibie=RS_result.getString("leibie");neirong=RS_result.getString("neirong");tianjiaren=RS_result.getString("tianjiaren");shouyetupian=RS_result.getString("shouyetupian");dianjilv=RS_result.getString("dianjilv");
 addtime=RS_result.getString("addtime");
 
 
%>
                                 <tr>
                                   <td width="31" align="center"><%=i %></td>
                                   <td width="517"><a href="gg_detail.jsp?id=<%=id%>"><%=biaoti %></a></td>
                                   <td width="79">被点击<%=dianjilv %>次</td>
                                   <td width="79" align="center"><%=addtime.substring(0,10) %></td>
                                 </tr>
                                 <%
  }
  }
   %>
                               </table>
                                 <br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="news.jsp?page=1&lb=<%=lb%>">首页</a>　<a href="news.jsp?page=<%= curpage-1%>&lb=<%=lb%>">上一页</a>　<A href="news.jsp?page=<%= curpage+1%>&lb=<%=lb%>">下一页</A>　<a href="news.jsp?page=<%=zys %>&lb=<%=lb%>">尾页</A>　当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p>
<p align="center">&nbsp;</p></td>
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