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
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-repeat: repeat-x;
	background-color: #215B9A;
}
.STYLE6 {color: #FFFFFF}
.STYLE5 {color: #CCFFCC;
	font-size: 26pt;
}
.STYLE7 {color: #ffffff; font-size:12px}
-->
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></head>
<script language="javascript">
function check()
{
	if(document.form1.username.value=="" || document.form1.pwd.value=="" || document.form1.rand.value=="")
	{
		alert('请输入完整');
		return false;
	}
}
function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 
</script>
<body>
<table width="1004" height="750" border="0" align="center" cellpadding="0" cellspacing="0" background="images/login.jpg" id="__01">
  <tr>
    <td height="293" colspan="3"><p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <table width="84%" height="56" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="56"><div style="font-family:宋体; color:#FFFFFF;WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE:30px ; margin-top:5pt">
            <div align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;三千城物业管理系统</div>
        </div></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td width="434" rowspan="2">&nbsp;</td>
    <td width="289" height="152"><table width="205" border="0" align="center" cellpadding="0" cellspacing="0">
      <form name="form1" method="post" action="adminyanzheng.jsp">
        <tr>
          <td width="44" height="30"><span class="STYLE7">用户:</span></td>
          <td width="142" height="30"><input name="username" type="text" id="username" style="width:100px; height:16px; border:solid 1px #000000; color:#666666"></td>
        </tr>
        <tr>
          <td height="30"><span class="STYLE7">密码:</span></td>
          <td height="30"><input name="pwd" type="password" id="pwd" style="width:100px; height:16px; border:solid 1px #000000; color:#666666"></td>
        </tr>
      <%--  <tr>
          <td height="30"><span class="STYLE7">权限:</span></td>
          <td height="30"><select name="cx" id="cx">
              <option value="车管">物业工程部</option>
			  <option value="管理员">系统管理员</option>
			   <option value="快递员">快递员</option>
			   <option value="业主">业主</option>
            </select>
          </td>
        </tr>--%>
        <tr>
          <td height="30"><span class="STYLE7">验证码:</span></td>
          <td height="30"><input type="text" name="rand" id="rand" style="width:40px; height:16px; border:solid 1px #000000; color:#666666">
            <a href="javascript:loadimage();"><img alt="看不清请点我！" name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" align="absmiddle"> </a>     
        </tr>
        <tr>
          <td height="30" colspan="2"><input type="submit" name="Submit" value="登陆" onClick="return check();">
            <input type="reset" name="Submit2" value="重置"></td>
        </tr>
      </form>
    </table></td>
    <td width="281" rowspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>

