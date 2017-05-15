<%@ page language="java"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<html>
<head>
<title>车位信息</title><script language="javascript" src="js/hsgrili.js"></script>
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
                                     <td><span class="STYLE4">车位信息</span></td>
                                   </tr>
                               </table></td>
                             </tr>
                             <tr>
                               <td>
							   
							   
							   
							   
                                	<form name="form1" id="form1" method="post" action="">
   搜索: 车位编号：<input name="cheweibianhao" type="text" id="cheweibianhao"  style='border:solid 1px #000000; color:#666666' size="12"  /> 位置：<input name="weizhi" type="text" id="weizhi"  style='border:solid 1px #000000; color:#666666' size="12"  /> 车主：<input name="chezhu" type="text" id="chezhu"  style='border:solid 1px #000000; color:#666666' size="12"  />  状态：
   <select name='zhuangtai' id='zhuangtai'>
     <option value="">所有</option>
     <option value="空闲">空闲</option>
     <option value="已占">已占</option>
   </select>
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
                                	</form>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>车位编号</td>
    <td bgcolor='#CCFFFF'>位置</td>
    <td bgcolor='#CCFFFF'>车主</td>
    <td bgcolor='#CCFFFF'>状态</td>
    <td bgcolor='#CCFFFF'>备注</td>
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

  sql="select  * from cheweixinxi where 1=1";
  
if(request.getParameter("cheweibianhao")=="" ||request.getParameter("cheweibianhao")==null ){}else{sql=sql+" and cheweibianhao like '%"+new String(request.getParameter("cheweibianhao").getBytes("8859_1"))+"%'";}
if(request.getParameter("weizhi")=="" ||request.getParameter("weizhi")==null ){}else{sql=sql+" and weizhi like '%"+new String(request.getParameter("weizhi").getBytes("8859_1"))+"%'";}
if(request.getParameter("chezhu")=="" ||request.getParameter("chezhu")==null ){}else{sql=sql+" and chezhu like '%"+new String(request.getParameter("chezhu").getBytes("8859_1"))+"%'";}
if(request.getParameter("zhuangtai")=="" ||request.getParameter("zhuangtai")==null ){}else{sql=sql+" and zhuangtai like '%"+new String(request.getParameter("zhuangtai").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc";
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String cheweibianhao="";
 String weizhi="";
 String chezhu="";
 String zhuangtai="";
 String beizhu="";
 
 String addtime="";
 int i=0;
 while(RS_result.next()){
 i=i+1;
   if (i>(curpage-1)*page_record && i<=page_record*curpage)
 {

 id=RS_result.getString("id");
 cheweibianhao=RS_result.getString("cheweibianhao");
 weizhi=RS_result.getString("weizhi");
 chezhu=RS_result.getString("chezhu");
 zhuangtai=RS_result.getString("zhuangtai");
 beizhu=RS_result.getString("beizhu");
 
 addtime=RS_result.getString("addtime");
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=cheweibianhao %></td><td><%=weizhi %></td><td><%=chezhu %></td><td><%=zhuangtai %></td><td><%=beizhu %></td>
    </tr>
  	<%
  }
  }
   %>
</table>
<br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="cheweixinxilist.jsp?page=1">首页</a>　<a href="cheweixinxilist.jsp?page=<%= curpage-1%>">上一页</a>　<A href="cheweixinxilist.jsp?page=<%= curpage+1%>">下一页</A>　<a href="cheweixinxilist.jsp?page=<%=zys %>">尾页</A>　当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p>
						
                             
								 
								 
								 
								 
								 
								 
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
