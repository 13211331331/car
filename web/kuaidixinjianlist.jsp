<%@ page language="java"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<html>
<head>
<title>快递信件</title><script language="javascript" src="js/hsgrili.js"></script>
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
                为打造更专业的三千城物业管理系统，我们一起努力!美好成就的“军功章”你有一半也有我的一半！真诚期待您的加入!!</MARQUEE></td>
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
                                     <td><span class="STYLE4">快递信件</span></td>
                                   </tr>
                               </table></td>
                             </tr>
                             <tr>
                               <td>
							   
							   
							   
							   
                                 <form name="form1" id="form1" method="post" action="">
   搜索: 快递单号：<input name="kuaididanhao" type="text" id="kuaididanhao"  style='border:solid 1px #000000; color:#666666' size="12"  /> 收件人：<input name="shoujianren" type="text" id="shoujianren"  style='border:solid 1px #000000; color:#666666' size="12"  /> 门牌号：<input name="menpaihao" type="text" id="menpaihao"  style='border:solid 1px #000000; color:#666666' size="12"  /> 寄件人：<input name="jijianren" type="text" id="jijianren"  style='border:solid 1px #000000; color:#666666' size="12"  /> 收件人电话：<input name="shoujianrendianhua" type="text" id="shoujianrendianhua"  style='border:solid 1px #000000; color:#666666' size="12"  />  送达时间：<input name="songdashijian1" type="text" id="songdashijian1"  value='' onClick="fPopCalendar(event,this,this)" size="10" />-<input name="songdashijian2" type="text" id="songdashijian2"  value='' onClick="fPopCalendar(event,this,this)" size="10"  /> 快递员：<input name="kuaidiyuan" type="text" id="kuaidiyuan"  style='border:solid 1px #000000; color:#666666' size="12"  />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
                                 </form>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td width="76" bgcolor='#CCFFFF'>快递单号</td>
    <td width="58" bgcolor='#CCFFFF'>收件人</td>
    <td width="58" bgcolor='#CCFFFF'>门牌号</td>
    <td width="75" bgcolor='#CCFFFF'>寄件人</td>
    <td width="107" bgcolor='#CCFFFF'>收件人电话</td>
    <td bgcolor='#CCFFFF' width='91' align='center'>送达时间</td>
    
    <td width="78" bgcolor='#CCFFFF'>快递员</td>
    
    <td width="67" align="center" bgcolor="CCFFFF">是否签收</td>
    </tr>
  <%
  int page_record=15;
   int curpage=1;//当前页
   int zgs=0;
				int zys=0;
String fysql="select count(id) as ss from kuaidixinjian";
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

  sql="select  * from kuaidixinjian where 1=1";
  
if(request.getParameter("kuaididanhao")=="" ||request.getParameter("kuaididanhao")==null ){}else{sql=sql+" and kuaididanhao like '%"+new String(request.getParameter("kuaididanhao").getBytes("8859_1"))+"%'";}
if(request.getParameter("shoujianren")=="" ||request.getParameter("shoujianren")==null ){}else{sql=sql+" and shoujianren like '%"+new String(request.getParameter("shoujianren").getBytes("8859_1"))+"%'";}
if(request.getParameter("menpaihao")=="" ||request.getParameter("menpaihao")==null ){}else{sql=sql+" and menpaihao like '%"+new String(request.getParameter("menpaihao").getBytes("8859_1"))+"%'";}
if(request.getParameter("jijianren")=="" ||request.getParameter("jijianren")==null ){}else{sql=sql+" and jijianren like '%"+new String(request.getParameter("jijianren").getBytes("8859_1"))+"%'";}
if(request.getParameter("shoujianrendianhua")=="" ||request.getParameter("shoujianrendianhua")==null ){}else{sql=sql+" and shoujianrendianhua like '%"+new String(request.getParameter("shoujianrendianhua").getBytes("8859_1"))+"%'";}
if (request.getParameter("songdashijian1")==""  ||request.getParameter("songdashijian1")==null ) {}else{sql=sql+" and songdashijian >= '"+new String(request.getParameter("songdashijian1").getBytes("8859_1"))+"'";}
if (request.getParameter("songdashijian2")==""  ||request.getParameter("songdashijian2")==null ) {}else {sql=sql+" and songdashijian <= '"+new String(request.getParameter("songdashijian2").getBytes("8859_1"))+"'";}
if(request.getParameter("kuaidiyuan")=="" ||request.getParameter("kuaidiyuan")==null ){}else{sql=sql+" and kuaidiyuan like '%"+new String(request.getParameter("kuaidiyuan").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc";
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String kuaididanhao="";
 String shoujianren="";
 String menpaihao="";
 String jijianren="";
 String shoujianrendianhua="";
 String songdashijian="";
 String beizhu="";
 String kuaidiyuan="";
 String issh="";
 String addtime="";
 int i=0;
 while(RS_result.next()){
 i=i+1;
   if (i>(curpage-1)*page_record && i<=page_record*curpage)
 {

 id=RS_result.getString("id");
 kuaididanhao=RS_result.getString("kuaididanhao");
 shoujianren=RS_result.getString("shoujianren");
 menpaihao=RS_result.getString("menpaihao");
 jijianren=RS_result.getString("jijianren");
 shoujianrendianhua=RS_result.getString("shoujianrendianhua");
 songdashijian=RS_result.getString("songdashijian");
 beizhu=RS_result.getString("beizhu");
 kuaidiyuan=RS_result.getString("kuaidiyuan");
 issh=RS_result.getString("issh");
 addtime=RS_result.getString("addtime");
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=kuaididanhao %></td><td><%=shoujianren %></td><td><%=menpaihao %></td><td><%=jijianren %></td><td><%=shoujianrendianhua %></td><td><%=songdashijian %></td><td><%=kuaidiyuan %></td>
    <td width="67" align="center"><%=issh %></td>
    </tr>
  	<%
  }
  }
   %>
</table>
<br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="kuaidixinjianlist.jsp?page=1">首页</a>　<a href="kuaidixinjianlist.jsp?page=<%= curpage-1%>">上一页</a>　<A href="kuaidixinjianlist.jsp?page=<%= curpage+1%>">下一页</A>　<a href="kuaidixinjianlist.jsp?page=<%=zys %>">尾页</A>　当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p>
						

								 
								 
								 
								 
								 
								 
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
