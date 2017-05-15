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
  String id="";
String sql="";
String addtime="";
int i=0;
String biaoti="";
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
                                   <td width="84%"><span class="STYLE4">投诉建议</span></td>
                                   <td width="13%"><a href="lyb.jsp"><font  class="STYLE2">我要投诉</font></a></td>
                                 </tr>
                               </table></td>
                             </tr>
                             <tr>
                               <td><p align="center">
                                 <%
 int page_record=5;
   int curpage=1;//当前页
   int zgs=0;
				int zys=0;
String fysql="select count(id) as ss from liuyanban ";
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
				
				
				sql="select  * from liuyanban order by id desc";
				  


   RS_result=connDbBean.executeQuery(sql);
   id="";
 String nicheng="";String xingbie="";String QQ="";String youxiang="";String dianhua="";String neirong="";String huifuneirong="";
  addtime="";
  i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
    if (i>(curpage-1)*page_record && i<=page_record*curpage)
 {

 id=RS_result.getString("id");
nicheng=RS_result.getString("cheng");xingbie=RS_result.getString("xingbie");QQ=RS_result.getString("QQ");youxiang=RS_result.getString("youxiang");dianhua=RS_result.getString("dianhua");neirong=RS_result.getString("neirong");huifuneirong=RS_result.getString("huifuneirong");
 addtime=RS_result.getString("addtime");
 
 
%>
</p>
                                 <table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6EA6C1" class="tb">
                                   <!--DWLayoutTable-->
                                   <tr>
                                     <td width="85" rowspan="4" align="center" valign="middle" bgcolor="#FFFFFF"><img width='70'height='70' src=img/<%=xingbie %>.gif border=0> </td>
                                     <td height="20" align="left" valign="middle" bgcolor="#FFFFFF">&nbsp; &nbsp; 留言于:<%=addtime%> &nbsp;</td>
                                   </tr>
                                   <tr>
                                     <td height="78" align="left" valign="top" bgcolor="#FFFFFF">&nbsp;<%=neirong%></td>
                                   </tr>
                                   <tr>
                                     <td align="left" valign="middle" bgcolor="#FFFFFF" style="height: 25px">&nbsp; &nbsp;昵称：<%=nicheng%> &nbsp; &nbsp;电话：<%=dianhua %>&nbsp;&nbsp;邮 箱:<%=youxiang%> &nbsp; QQ:<%=QQ%>&nbsp; &nbsp; </td>
                                   </tr>
                                   <tr>
                                     <td align="left" valign="middle" bgcolor="#FFFFFF" style="height: 25px">&nbsp; &nbsp;管理员回复：<%=huifuneirong%></td>
                                   </tr>
                                 </table>
                                 <%}
						  }
						  %>
                                 <p align="center" id="fenye">&nbsp;&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="lyblist.jsp?page=1">首页</a>　<a href="lyblist.jsp?page=<%= curpage-1%>">上一页</a>　<A 
                        
                        href="lyblist.jsp?page=<%= curpage+1%>">下一页</A>　<a href="lyblist.jsp?page=<%=zys %>">尾页</A>　当前第<FONT 
                        color=red><%=curpage %></FONT>页/共<FONT 
                        color=red><%=zys %></FONT>页</p></td>
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