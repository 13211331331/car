<%@ page language="java"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>alert('对不起,请您先登陆!');location.href='index.jsp';</script>");
}
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<html>
<head>
<title>报修记录</title>
<link rel="stylesheet" href="kindeditor_a5/themes/default/default.css" />
	<link rel="stylesheet" href="kindeditor_a5/plugins/code/prettify.css" />
	<script charset="utf-8" src="kindeditor_a5/kindeditor.js"></script>
	<script charset="utf-8" src="kindeditor_a5/lang/zh_CN.js"></script>
	<script charset="utf-8" src="kindeditor_a5/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="neffifrofng"]', {
				cssPath : 'kindeditor_a5/plugins/code/prettify.css',
				uploadJson : 'kindeditor_a5/jsp/upload_json.jsp',
				fileManagerJson : 'kindeditor_a5/jsp/file_manager_json.jsp',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><LINK href="qtimages/style.css" type=text/css rel=stylesheet>

</head>
<script language="javascript" src="js/hsgrili.js"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	    <script type="text/javascript">
	    function up(tt)
	    {
	        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:320,height:50});
            pop.setContent("contentUrl","upload.jsp?Result="+tt);
            pop.setContent("title","文件上传");
            pop.build();
            pop.show();
	    }
	</script>
	<script language="javascript">
function check()
{
	if(document.form1.baoxiudanhao.value==""){alert("请输入报修单号");document.form1.baoxiudanhao.focus();return false;}
if(document.form1.wujianmingcheng.value==""){alert("请输入物件名称");document.form1.wujianmingcheng.focus();return false;}

}
function gow()
{
	document.location.href="baoxiujiluadd.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
}
</script>
                                <%
  String sql;
  ResultSet RS_result;
	String id;
	int i=0;
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
                                     <td><span class="STYLE4">报修申请</span></td>
                                   </tr>
                               </table></td>
                             </tr>
                             <tr>
                               <td>
							   
							   
							   
							   

  <form name="form1" id="form1" method="post" action="baoxiujiluadd_post.jsp">
    <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
       <tr><td>报修单号：</td><td><input name='baoxiudanhao' type='text' id='baoxiudanhao' value='' style='border:solid 1px #000000; color:#666666' /></td></tr>
       <tr><td>物件名称：</td><td><input name='wujianmingcheng' type='text' id='wujianmingcheng' value='' size='50' style='border:solid 1px #000000; color:#666666' /></td></tr>
       <tr><td>故障时间：</td><td><input name='guzhangshijian' type='text' id='guzhangshijian' value='' readonly='readonly' onClick="fPopCalendar(event,this,this)" style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/></td></tr>
       <tr><td>严重程度：</td><td><select name='yanzhongchengdu' id='yanzhongchengdu'><option value="轻微">轻微</option><option value="中等">中等</option><option value="严重">严重</option></select></td></tr>
       <tr><td>故障描述：</td><td><textarea name='guzhangmiaoshu' cols='50' rows='5' id='guzhangmiaoshu' style='border:solid 1px #000000; color:#666666'></textarea></td></tr>
       <tr style='display:none'><td>维修费用：</td><td><input name='weixiufeiyong' type='text' id='weixiufeiyong' value='' style='border:solid 1px #000000; color:#666666' /></td></tr>
       <tr style='display:none'><td>维修结果：</td><td><textarea name='weixiujieguo' cols='50' rows='5' id='weixiujieguo' style='border:solid 1px #000000; color:#666666'></textarea></td></tr>
       <tr style='display:none'><td>维修时间：</td><td><input name='weixiushijian' type='text' id='weixiushijian' value='' readonly='readonly' onClick="fPopCalendar(event,this,this)" style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/></td></tr>
       <tr style='display:none'><td>维修人：</td><td><input name='weixiuren' type='text' id='weixiuren' value='' style='border:solid 1px #000000; color:#666666' /></td></tr>
       <tr><td>申报人：</td><td><input name='shenbaoren' type='text' id='shenbaoren' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' /></td></tr>
       
   
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
	</table>
  </form>

								 
								 
								 
								 
								 
								 
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
