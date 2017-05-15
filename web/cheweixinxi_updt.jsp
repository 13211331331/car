
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
    
    <title>车位信息</title>
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
	if(document.form1.cheweibianhao.value==""){alert("请输入车位编号");document.form1.cheweibianhao.focus();return false;}
if(document.form1.weizhi.value==""){alert("请输入位置");document.form1.weizhi.focus();return false;}

}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="cheweixinxi_updt_post.jsp?id=<%=id %>">
  修改车位信息:
  <br><br>
  <%
  String sql="select * from cheweixinxi where id="+id;
  String cheweibianhao="";
  String weizhi="";
  String chezhu="";
  String zhuangtai="";
  String beizhu="";
  
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  cheweibianhao=RS_result.getString("cheweibianhao");
  weizhi=RS_result.getString("weizhi");
  chezhu=RS_result.getString("chezhu");
  zhuangtai=RS_result.getString("zhuangtai");
  beizhu=RS_result.getString("beizhu");
  
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>车位编号：</td><td><input name='cheweibianhao' type='text' id='cheweibianhao' value='<%= cheweibianhao%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>位置：</td><td><input name='weizhi' type='text' id='weizhi' size='50' value='<%=weizhi%>' style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr><td>车主：</td><td><input name='chezhu' type='text' id='chezhu' value='<%= chezhu%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>状态：</td><td><select name='zhuangtai' id='zhuangtai'>
       <option value="空闲">空闲</option>
       <option value="已占">已占</option>
     </select></td></tr><script language="javascript">document.form1.zhuangtai.value='<%=zhuangtai%>';</script>
     <tr><td>备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=beizhu%></textarea></td></tr>
     
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


