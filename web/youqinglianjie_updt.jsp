
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
    
    <title>友情连接</title>
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
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.wangzhanmingcheng.value==""){alert("请输入网站名称");document.form1.wangzhanmingcheng.focus();return false;}
if(document.form1.wangzhi.value==""){alert("请输入网址");document.form1.wangzhi.focus();return false;}
if(document.form1.LOGO.value==""){alert("请输入LOGO");document.form1.LOGO.focus();return false;}

}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="youqinglianjie_updt_post.jsp?id=<%=id %>">
  修改友情连接:
  <br><br>
  <%
  String sql="select * from youqinglianjie where id="+id;
  String wangzhanmingcheng="";
  String wangzhi="";
  String LOGO="";
  
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  wangzhanmingcheng=RS_result.getString("wangzhanmingcheng");
  wangzhi=RS_result.getString("wangzhi");
  LOGO=RS_result.getString("LOGO");
  
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>网站名称：</td><td><input name='wangzhanmingcheng' type='text' id='wangzhanmingcheng' size='50' value='<%=wangzhanmingcheng%>' style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr><td>网址：</td><td><input name='wangzhi' type='text' id='wangzhi' size='50' value='<%=wangzhi%>' style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr><td>LOGO：</td><td><input name='LOGO' type='text' id='LOGO' size='50' value='<%= LOGO%>' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='上传' onClick="up('LOGO')" style='border:solid 1px #000000; color:#666666'/></td></tr>
     
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


