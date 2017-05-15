<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<META content="MSHTML 6.00.2800.1106" name=GENERATOR>
<script language="javascript"> 

function checkuserlog()
{
	if(document.formlog.username.value=="" || document.formlog.pwd1.value=="" || document.formlog.rand.value=="")
	{
		alert('请输入完整');
		return false;
	}
}

function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 
</script>
</HEAD>
<table id="__01" width="288" height="768" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><table id="__01" width="288" height="210" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="288" height="41" background="qtimages/1_02_02_01_01_01.jpg"><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="11%">&nbsp;</td>
                            <td width="89%" valign="bottom"><span class="STYLE2">点击排行</span></td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td><table id="__01" width="288" height="169" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="14" background="qtimages/1_02_02_01_01_02_01.jpg">&nbsp;</td>
                            <td width="266" height="169" valign="top"><table  cellspacing="0" cellpadding="0" width="98%" 
                  align="center" border="0" class="newsline">
                              <tbody>
                                <%
							
							
 int lti=0;
 ResultSet  RS_resultqt=connDbBean.executeQuery("select  id,biaoti,addtime from xinwentongzhi  order by dianjilv desc, id desc");
							while(RS_resultqt.next()){
lti=lti+1;
 if(lti<=6)
 {

							
							%>
                                <tr>
								<%
								if(lti<=3)
								{
								%>
                                    <td width="9%" align="center" style="height:14px; line-height:14px; font-size:11px; font-weight:bold;"><div style='width:14px;height:13px;background:url(qtimages/i_u_1.gif) no-repeat; color:#ffffff'><%=lti%></div></td>
                                    <%
								}
								else
								{
								%>
                                    <td width="12%" align="center" style="height:14px; line-height:14px; font-size:11px; font-weight:bold;"><div style='width:14px;height:13px;background:url(qtimages/i_u_0.gif) no-repeat; color:#ffffff'><%=lti%></div></td>
                                    <%
								}
								%>
                                  
                                  <td width="79%" height="25"><a  href="gg_detail.jsp?id=<%=RS_resultqt.getString("id")%>"><%
						if(RS_resultqt.getString("biaoti").length() >=18)
						{
							out.print(RS_resultqt.getString("biaoti").substring(0,18));
						}
						else
						{
							out.print(RS_resultqt.getString("biaoti"));
						}
						%></a> </td>
                                </tr>
                                <%
							}
							}
							%>
                              </tbody>
                            </table></td>
                            <td width="8" background="qtimages/1_02_02_01_01_02_03.jpg">&nbsp;</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="288" height="185" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="288" height="41" background="qtimages/22.jpg"><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="11%">&nbsp;</td>
                              <td width="89%" valign="bottom"><span class="STYLE2">系统公告</span></td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td height="144"><table id="__01" width="288" height="144" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="14" background="qtimages/1_02_02_01_01_02_01.jpg">&nbsp;</td>
                              <td width="266" height="144" valign="top"><marquee border="0" direction="up" height="100%" onMouseOut="start()" onMouseOver="stop()"
                scrollamount="1" scrolldelay="50">
                          <TABLE width="100%" height="82%" >
                      <TR><TD height="144" ><%
			String sqlxtgg="select * from dx where leibie='系统公告'";
			 ResultSet RS_resultxtgg=connDbBean.executeQuery(sqlxtgg);
			 while(RS_resultxtgg.next())
			 {
			 out.print(RS_resultxtgg.getString("content"));
			 }
			%></TD></TR></TABLE></marquee></td>
                              <td width="8" background="qtimages/1_02_02_01_01_02_03.jpg">&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="288" height="197" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="288" height="41" background="qtimages/22.jpg"><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="11%">&nbsp;</td>
                              <td width="89%" valign="bottom"><span class="STYLE2">业主登陆</span></td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td height="156"><table id="__01" width="288" height="156" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="14" background="qtimages/1_02_02_01_01_02_01.jpg">&nbsp;</td>
                              <td width="266" height="156" align="center" valign="top"><%

	
	if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
	{
	 %>
                                <table width="91%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#EFCE7B" style="border-collapse:collapse" >
                                  <form name="formlog" method="post" action="userlog_post.jsp">
                                    <tr>
                                      <td width="28%" height="30">用户名</td>
                                      <td height="30" colspan="2"><input name="username" type="text" id="username" style="width:128px; height:20px; border:solid 1px #000000; color:#666666"></td>
                                    </tr>
                                    <tr>
                                      <td height="30">密码</td>
                                      <td height="30" colspan="2"><input name="pwd1" type="password" id="pwd1" style="width:128px; height:20px; border:solid 1px #000000; color:#666666"></td>
                                    </tr>
                                    <tr style="display:none">
                                      <td height="30">权限</td>
                                      <td height="30" colspan="2"><select name="cx" id="cx" style="width:128px; height:20px; border:solid 1px #000000; color:#666666">
                                          <option value="业主">业主</option>
                                        </select>
                                      </td>
                                    </tr>
                                    <tr>
                                      <td height="30">验证码</td>
                                      <td width="23%" height="30"><input type="text" name="rand" id="rand" style="width:45px; height:20px; border:solid 1px #000000; color:#666666"></td>
                                      <td width="49%"><a href="javascript:loadimage();"><img alt="看不清请点我！" name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" align="absmiddle"></a></td>
                                    </tr>
                                    <tr>
                                      <td height="30">&nbsp;</td>
                                      <td height="30" colspan="2"><input type="submit" name="Submit" value="登陆" style=" height:19px; border:solid 1px #000000; color:#666666" onClick="return checkuserlog()">
                                          <input type="reset" name="Submit2" value="重置" style=" height:19px; border:solid 1px #000000; color:#666666"></td>
                                    </tr>
                                  </form>
                                </table>
                                <%
					}
					else
					{
					%>
                                <table width="90%" height="82%" border="0" align="center" cellpadding="0" cellspacing="0">
                                  <tr>
                                    <td width="31%" height="30">用户名</td>
                                    <td width="69%" height="30"><%=request.getSession().getAttribute("username")%></td>
                                  </tr>
                                  <tr>
                                    <td height="30">权限</td>
                                    <td height="30"><%=request.getSession().getAttribute("cx")%> </td>
                                  </tr>
                                  <tr>
                                    <td height="30" colspan="2" align="center"><input type="button" name="Submit3" value="退出" onClick="javascript:location.href='logout.jsp';" style=" height:19px; border:solid 1px #000000; color:#666666">
                                        <input type="button" name="Submit32" value="个人后台" onClick="javascript:location.href='main.jsp';" style=" height:19px; border:solid 1px #000000; color:#666666">
                                    </td>
                                  </tr>
                                </table>
                                <%
					}
					%></td>
                              <td width="8" background="qtimages/1_02_02_01_01_02_03.jpg">&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="288" height="161" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="288" height="41" background="qtimages/22.jpg"><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="11%">&nbsp;</td>
                              <td width="89%" valign="bottom"><span class="STYLE2">站内搜索</span></td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td height="120"><table id="__01" width="288" height="120" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="14" background="qtimages/1_02_02_01_01_02_01.jpg">&nbsp;</td>
                              <td width="266" height="120" align="center" valign="top"><table width="90%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <form action="news.jsp" method="post" name="formsearch" id="formsearch" >
                                  <tr>
                                    <td width="19%" height="30">标题</td>
                                    <td width="81%" height="30"><input name="keyword" type="text" id="keyword" size="18" style=" height:19px; border:solid 1px #000000; color:#666666" /></td>
                                  </tr>
                                  <tr>
                                    <td height="30">类别</td>
                                    <td height="30"><select name="lb" style=" height:19px; border:solid 1px #000000; color:#666666">
                                        <%
						 String sqllb="";
  sqllb="select distinct(leibie) from xinwentongzhi";
 ResultSet RS_resultlb=connDbBean.executeQuery(sqllb);
 while(RS_resultlb.next()){
						%>
                                        <option value="<%=RS_resultlb.getString("leibie")%>"><%=RS_resultlb.getString("leibie")%></option>
                                        <%
						  }
						  %>
                                      </select>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td height="30">&nbsp;</td>
                                    <td height="30"><input type="submit" name="Submit4" value="提交" style=" height:19px; border:solid 1px #000000; color:#666666; width:80px" /></td>
                                  </tr>
                                </form>
                              </table></td>
                              <td width="8" background="qtimages/1_02_02_01_01_02_03.jpg">&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_02_01_05.jpg" width="288" height="12" alt=""></td>
                  </tr>
                </table>