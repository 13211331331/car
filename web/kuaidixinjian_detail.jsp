
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
    
    <title>缴费记录详细</title><script language="javascript" src="js/hsgrili.js"></script>
	
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	fewgidsoidfjdkgds
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>

  缴费记录详细:
  <br><br>
   <%
  String sql="select * from jiaofeijilu where id="+id;
  String yonghuming="";
String xingming="";
String nianfen="";
String yuefen="";
String feiyongleixing="";
String feiyongjine="";
String beizhu="";

  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  yonghuming=RS_result.getString("yonghuming");
xingming=RS_result.getString("xingming");
nianfen=RS_result.getString("nianfen");
yuefen=RS_result.getString("yuefen");
feiyongleixing=RS_result.getString("feiyongleixing");
feiyongjine=RS_result.getString("feiyongjine");
beizhu=RS_result.getString("beizhu");

  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>用户名：</td><td width='39%'><%=yonghuming%></td>
<td width='11%'>姓名：</td><td width='39%'><%=xingming%></td></tr><tr>
<td width='11%'>年份：</td><td width='39%'><%=nianfen%></td>
<td width='11%'>月份：</td><td width='39%'><%=yuefen%></td></tr><tr>
<td width='11%'>费用类型：</td><td width='39%'><%=feiyongleixing%></td>
<td width='11%'>费用金额：</td><td width='39%'><%=feiyongjine%></td></tr><tr>
<td width='11%'>备注：</td><td width='39%'><%=beizhu%></td>
<td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


