<%@ page language="java"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<html>
<head>
<title>三千城物业管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><LINK href="qtimages/style.css" type=text/css rel=stylesheet>


</head>
<%
String sql="";
String addtime="";
int i=0;
String biaoti="";
ResultSet RS_result;
String  id="";
%>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" >
<div align="center">
<table width="1005" height="1547" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td><%@ include file="qttop.jsp"%></td>
	</tr>
	<tr>
		<td><table id="__01" width="1005" height="1032" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td><table id="__01" width="1005" height="39" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><img src="qtimages/1_02_01_01.jpg" width="52" height="39" alt=""></td>
                <td width="938" height="39" background="qtimages/1_02_01_02.jpg" style="padding-top:6px"><marquee behavior=alternate width=100% scrollAmount=3>
                为打造更专业的三千城小区物业管理系统，我们一起努力!美好成就的“军功章”你有一半也有我的一半！真诚期待您的加入!
                </MARQUEE></td>
                <td><img src="qtimages/1_02_01_03.jpg" width="15" height="39" alt=""></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><table id="__01" width="1005" height="768" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td valign="top"><%@ include file="qtleft.jsp"%></td>
                <td valign="top"><table id="__01" width="717"  border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><table id="__01" width="717" height="342" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td><img src="qtimages/1_02_02_02_01_01.jpg" width="717" height="9" alt=""></td>
                      </tr>
                      <tr>
                        <td><table id="__01" width="717" height="333" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                           <td width="704" height="333"><%@ include file="bht.jsp"%></td>
                            <td><img src="qtimages/1_02_02_02_01_02_02.jpg" width="13" height="333" alt=""></td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="717" height="221" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td><table id="__01" width="350" height="221" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="350" height="36" background="qtimages/1_02_02_02_02_01_01.jpg"><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                              <tr>
                                <td width="5%">&nbsp;</td>
                                <td width="84%"><span class="STYLE4">社区新闻</span></td>
                                <td width="11%"  ><a href="news.jsp?lb=社区新闻">更多&gt;&gt;</a></td>
                              </tr>
                            </table></td>
                          </tr>
                          <tr>
                            <td width="350" height="182" valign="top"><table  cellspacing="0" cellpadding="0" width="98%" 
                  align="center" border="0" class="newsline">
                              <tbody>
                                <%
							 sql="";
							sql="select  id,biaoti,addtime from xinwentongzhi where leibie='社区新闻' order by id desc";
							  id="";
  biaoti="";
  addtime="";
  i=0;
   RS_result=connDbBean.executeQuery(sql);
							while(RS_result.next()){
 i=i+1;
 if(i<=7)
 {
 id=RS_result.getString("id");
biaoti=RS_result.getString("biaoti");
if(biaoti.length() >=27)
{
biaoti=biaoti.substring(0,27);
}
 addtime=RS_result.getString("addtime");
 
 
							
							%>
                                <tr>
                                  <td width="6%" height="25" align="center" ><img src="qtimages/1.jpg" ></td>
                                  <td width="94%" height="25"><a 
                        href="gg_detail.jsp?id=<%=id%>"><%=biaoti%></a> </td>
                                </tr>
                                <%
							}
							}
							%>
                              </tbody>
                            </table></td>
                          </tr>
                          <tr>
                            <td><img src="qtimages/1_02_02_02_02_01_03.jpg" width="350" height="3" alt=""></td>
                          </tr>
                        </table></td>
                        <td><table id="__01" width="350" height="221" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="350" height="36" background="qtimages/1_02_02_02_02_01_01.jpg"><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                  <td width="5%">&nbsp;</td>
                                  <td width="84%"><span class="STYLE4">通知公告</span></td>
                                  <td width="11%"  ><a href="news.jsp?lb=通知公告">更多&gt;&gt;</a></td>
                                </tr>
                            </table></td>
                          </tr>
                          <tr>
                            <td width="350" height="182" valign="top"><table  cellspacing="0" cellpadding="0" width="98%" 
                  align="center" border="0" class="newsline">
                              <tbody>
                                <%
							 sql="";
							sql="select  id,biaoti,addtime from xinwentongzhi where leibie='通知公告' order by id desc";
							  id="";
  biaoti="";
  addtime="";
  i=0;
   RS_result=connDbBean.executeQuery(sql);
							while(RS_result.next()){
 i=i+1;
 if(i<=7)
 {
 id=RS_result.getString("id");
biaoti=RS_result.getString("biaoti");
if(biaoti.length() >=26)
{
biaoti=biaoti.substring(0,26);
}
 addtime=RS_result.getString("addtime");
 
 
							
							%>
                                <tr>
                                  <td width="6%" height="25" align="center" ><img src="qtimages/1.jpg" ></td>
                                  <td width="94%" height="25"><a 
                        href="gg_detail.jsp?id=<%=id%>"><%=biaoti%></a> </td>
                                </tr>
                                <%
							}
							}
							%>
                              </tbody>
                            </table></td>
                          </tr>
                          <tr>
                            <td><img src="qtimages/1_02_02_02_02_01_03.jpg" width="350" height="3" alt=""></td>
                          </tr>
                        </table></td>
                        <td><img src="qtimages/1_02_02_02_02_03.jpg" width="17" height="221" alt=""></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td height="32" background="qtimages/33.jpg"><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="3%">&nbsp;</td>
                              <td><span class="STYLE4">车位查看</span></td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td><p align="center">&nbsp;</p>
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

  sql="select  * from cheweixinxi where 1=1";
  sql=sql+" order by id desc";
  RS_result=connDbBean.executeQuery(sql);
  id="";
 String cheweibianhao="";
 String weizhi="";
 String chezhu="";
 String zhuangtai="";
 String beizhu="";
 
  addtime="";
  i=0;
 while(RS_result.next()){
 i=i+1;
   if (i<=6)
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
                              <td><%=cheweibianhao %></td>
                              <td><%=weizhi %></td>
                              <td><%=chezhu %></td>
                              <td><%=zhuangtai %></td>
                              <td><%=beizhu %></td>
                            </tr>
                            <%
  }
  }
   %>
                          </table>                          <p align="center">&nbsp;</p></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><table id="__01" width="1005" height="225" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="1005" height="61" background="qtimages/1_02_03_01.jpg"><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="8%">&nbsp;</td>
                    <td width="84%" valign="bottom"><span class="STYLE4">业主风彩</span></td>
                    <td width="8%" valign="bottom" ><a href="yonghuzhucelist.jsp"><font class="STYLE1">更多&gt;&gt;</font></a></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td><table id="__01" width="1005" height="141" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="27" background="qtimages/1_02_03_02_01.jpg">&nbsp;</td>
                    <td width="954" height="141"><table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                              <%
				  	sql="select id,touxiang,xingming from yonghuzhuce where touxiang<>'' order by id desc";
					RS_result=connDbBean.executeQuery(sql);
					String xingming="";String touxiang="";
					i=0;
					 while(RS_result.next()){
					 i=i+1;
					 if(i<=4)
					 {
 id=RS_result.getString("id");
 xingming=RS_result.getString("xingming");touxiang=RS_result.getString("touxiang");


				  %>
                              <td align="center"><table width="150" height="123" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                  <td height="105" align="center"><a href="<%=touxiang%>"><img src="<%=touxiang%>" width="126" height="100" border="0" /></a></td>
                                </tr>
                                <tr>
                                  <td height="18" align="center"><%=xingming%></td>
                                </tr>
                              </table></td>
                              <%
				  	}
					}
				  %>
                            </tr>
                          </table></td>
                    <td width="24" background="qtimages/1_02_03_02_03.jpg">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td><img src="qtimages/1_02_03_03.jpg" width="1005" height="23" alt=""></td>
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