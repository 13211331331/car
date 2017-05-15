<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



<META content="MSHTML 6.00.2800.1106" name=GENERATOR>

</HEAD>
<table id="__01" width="1005" height="271" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td><table id="__01" width="1005" height="132" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="1005" height="34" background="qtimages/1_03_01_01.jpg"><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="3%">&nbsp;</td>
                    <td width="89%" valign="bottom"><span class="STYLE4">友情连接</span></td>
                    <td width="8%" valign="bottom" >&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td><table id="__01" width="1005" height="98" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="10" background="qtimages/1_03_01_02_01.jpg">&nbsp;</td>
                    <td width="987" height="98"><table width="98%" height="78%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <%
						  sql="select  * from youqinglianjie where 1=1";
  sql=sql+" order by id desc";
  RS_result=connDbBean.executeQuery(sql);
  int lyqji=0;
 while(RS_result.next()){
 lyqji=lyqji+1;
 if(lyqji<=5)
 {

						%>
                        <td height="80" align="center"><table width="175" height="67%" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td height="80" align="center"><a href="<%=RS_result.getString("wangzhi")%>" target="_blank" title="<%=RS_result.getString("wangzhanmingcheng")%>"><img src="<%=RS_result.getString("logo")%>" width="175" height="57" border="0" /></a></td>
                          </tr>
                        </table></td>
                         <%}
						 }
						  %>
                       
                        
                      </tr>
                    </table></td>
                    <td width="8" background="qtimages/1_03_01_02_03.jpg">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><table id="__01" width="1005" height="139" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><img src="qtimages/1_03_02_01.jpg" width="1005" height="10" alt=""></td>
              </tr>
              <tr>
                <td><table id="__01" width="1005" height="129" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="10" background="qtimages/1_03_01_02_01.jpg">&nbsp;</td>
                    <td width="987" height="98"><table width="83%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td height="26" align="center">版权所有：同心花园小区管家物业管理系统 技术支持：xxxxxxxxxxxxx 开发日期： <%
	  java.util.Date date = new java.util.Date();
java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.CHINA);

String result = format.format(date);
out.print(result);
	  %></td>
                      </tr>
                      <tr>
                        <td height="24" align="center">最佳效果: 1024*768 或1440*900 或 1360*768 </td>
                      </tr>
                      <tr>
                        <td height="24" align="center">备案号：xxxxx</td>
                      </tr>
                    </table></td>
                    <td width="8" background="qtimages/1_03_01_02_03.jpg">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
        </table>