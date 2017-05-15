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
  String id=request.getParameter("id");
  connDbBean.executeUpdate("update xinwentongzhi set dianjilv=dianjilv+1 where id="+id);
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
                为打造更专业的三千城小区物业管理系统，我们一起努力!美好成就的“军功章”你有一半也有我的一半！真诚期待您的加入!!
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
                                     <td><span class="STYLE4">内容详细</span></td>
                                   </tr>
                               </table></td>
                             </tr>
                             <tr>
                               <td>
							   
							   
							   
							   
                                 <%
   sql="select * from xinwentongzhi where id="+id;
   biaoti="";String leibie="";String neirong="";String dianjilv="";
   RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  biaoti=RS_result.getString("biaoti");leibie=RS_result.getString("leibie");neirong=RS_result.getString("neirong");dianjilv=RS_result.getString("dianjilv");
   %>
                                 <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FA8A89" class="newsline" style="border-collapse:collapse">
                                   <tr>
                                     <td height="46" align="center" class="STYLE8"><%=biaoti %> (被访问<%=dianjilv%>次) </td>
                                   </tr>
                                   <tr>
                                     <td height="110" align="left"><%=neirong %></td>
                                   </tr>
                                   <tr>
                                     <td height="33" align="right"><input type="button" name="Submit5" value="返回" onClick="javascript:history.back();" style=" height:19px; border:solid 1px #000000; color:#666666"></td>
                                   </tr>
                                 </table>
                                 <%}%>
								 
								 
								 
								 
								 
								 
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