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
<script language="javascript">
function checklyb()
{
	if(document.formlyb.cheng.value=="")
	{
		alert("请输入昵称");
		document.formlyb.cheng.focus();
		return false;
	}
	if(document.formlyb.neirong.value=="")
	{
		alert("请输入留言内容");
		document.formlyb.neirong.focus();
		return false;
	}
	if(document.formlyb.youxiang.value!="")
	{
		var strEmail = document.getElementById("youxiang").value;		
		var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
		var email_Flag = reg.test(strEmail);
		if(email_Flag){
		
		}
		else{
			alert("对不起，您输入的邮箱地址格式错误。");
			return false;
		}
	}
	if(document.formlyb.QQ.value!="")
	{
		var strQQ = document.getElementById("QQ").value;		
		var regQQ = /^[1-9]\d{4,8}$/;
		var qq_Flag =  regQQ.test(strQQ);
		if(qq_Flag){
		
		}else{
			alert("对不起，您输入的QQ号码格式错误。");
			return false;
		}
	}
	if(document.formlyb.dianhua.value!="")
	{
		var strPhone = document.getElementById("dianhua").value; 
		var reg = /^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/;
		phone_Flag = reg.test(strPhone);
		if(phone_Flag){
		}else{
		alert("对不起，您输入的电话号码格式错误。");
		return false;
		}
	}
}
</script>
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
                为打造更专业的同心花园小区管家物业管理系统，我们一起努力!美好成就的“军功章”你有一半也有我的一半！真诚期待您的加入!!
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
                                   <td width="84%"><span class="STYLE4">投诉建议</span></td>
                                   <td width="13%"><a href="lyblist.jsp"><font  class="STYLE2">查看建议</font></a></td>
                                 </tr>
                               </table></td>
                             </tr>
                             <tr>
                               <td><table width="98%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#6FA9C1" style="border-collapse:collapse">
                                 <form name="formlyb" method="post" action="liuyanban_add_post.jsp">
                                   <tr>
                                     <td width="12%">昵称：</td>
                                     <td width="88%"><input name='cheng' type='text' id='cheng' value='' />
                                       *</td>
                                   </tr>
                                   <tr>
                                     <td>头像：</td>
                                     <td><input name="xingbie" type="radio" value="1" checked>
                                         <img src="img/1.gif" width="64" height="71">
                                         <input type="radio" name="xingbie" value="2">
                                         <img src="img/2.gif" width="64" height="71">
                                         <input type="radio" name="xingbie" value="3">
                                         <img src="img/3.gif" width="64" height="71">
                                         <input type="radio" name="xingbie" value="4">
                                         <img src="img/4.gif" width="64" height="71">
                                         <input type="radio" name="xingbie" value="5">
                                         <img src="img/5.gif" width="64" height="71"></td>
                                   </tr>
                                   <tr>
                                     <td>QQ：</td>
                                     <td><input name='QQ' type='text' id='QQ' value='' /></td>
                                   </tr>
                                   <tr>
                                     <td>邮箱：</td>
                                     <td><input name='youxiang' type='text' id='youxiang' value='' /></td>
                                   </tr>
                                   <tr>
                                     <td>电话：</td>
                                     <td><input name='dianhua' type='text' id='dianhua' value='' /></td>
                                   </tr>
                                   <tr>
                                     <td>内容：</td>
                                     <td><textarea name="neirong" cols="50" rows="10" id="neirong"></textarea>
                                       *</td>
                                   </tr>
                                   <tr>
                                     <td>&nbsp;</td>
                                     <td><input type="submit" name="Submit42" value="提交" onClick="return checklyb();" style=" height:19px; border:solid 1px #000000; color:#666666" />
                                         <input type="reset" name="Submit22" value="重置" style=" height:19px; border:solid 1px #000000; color:#666666" /></td>
                                   </tr>
                                 </form>
                               </table>                               <p align="center">&nbsp;</p>
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