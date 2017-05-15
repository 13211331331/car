
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
	<LINK href="css.css" type=text/css rel=stylesheet>
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
  </head>
<script language="javascript">
function check()
{
	if(document.form1.baoxiudanhao.value==""){alert("请输入报修单号");document.form1.baoxiudanhao.focus();return false;}
if(document.form1.wujianmingcheng.value==""){alert("请输入物件名称");document.form1.wujianmingcheng.focus();return false;}

}
function gow()
{
	document.location.href="baoxiujilu_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
}
</script>
  <body >
    <%
  String sql;
  ResultSet RS_result;
 //islbdq String id=request.getParameter("id");
 //islbdq sql="select * from melieibaoduqubiaoiguo where id="+id;
 //islbdq   gogogogogo
 //islbdq RS_result=connDbBean.executeQuery(sql);
 //islbdq while(RS_result.next()){
 //islbdq   lelelelelele
 //islbdq }
   %>
  <form name="form1" id="form1" method="post" action="baoxiujilu_add_post.jsp">
  添加报修记录:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
   <tr><td>报修单号：</td><td><input name='baoxiudanhao' type='text' id='baoxiudanhao' value='' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr>
<tr><td>物件名称：</td><td><input name='wujianmingcheng' type='text' id='wujianmingcheng' value='' size='50' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr>
<tr><td>故障时间：</td><td><input name='guzhangshijian' type='text' id='guzhangshijian' value='' readonly='readonly' onclick="fPopCalendar(event,this,this)" style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/></td></tr>
<tr><td>严重程度：</td><td><select name='yanzhongchengdu' id='yanzhongchengdu'><option value="轻微">轻微</option><option value="中等">中等</option><option value="严重">严重</option></select></td></tr>
<tr><td>故障描述：</td><td><textarea name='guzhangmiaoshu' cols='50' rows='5' id='guzhangmiaoshu' style='border:solid 1px #000000; color:#666666'></textarea></td></tr>
<tr style='display:none'><td>维修费用：</td><td><input name='weixiufeiyong' type='text' id='weixiufeiyong' value='' style='border:solid 1px #000000; color:#666666' /></td></tr>
<tr style='display:none'><td>维修结果：</td><td><textarea name='weixiujieguo' cols='50' rows='5' id='weixiujieguo' style='border:solid 1px #000000; color:#666666'></textarea></td></tr>
<tr style='display:none'><td>维修时间：</td><td><input name='weixiushijian' type='text' id='weixiushijian' value='' readonly='readonly' onclick="fPopCalendar(event,this,this)" style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/></td></tr>
<tr style='display:none'><td>维修人：</td><td><input name='weixiuren' type='text' id='weixiuren' value='' style='border:solid 1px #000000; color:#666666' /></td></tr>
<tr><td>申报人：</td><td><input name='shenbaoren' type='text' id='shenbaoren' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' /></td></tr>

    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return check();" style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

