
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
    
    <title>dx</title>
    <link rel="stylesheet" href="kindeditor_a5/themes/default/default.css" />
	<link rel="stylesheet" href="kindeditor_a5/plugins/code/prettify.css" />
	<script charset="utf-8" src="kindeditor_a5/kindeditor.js"></script>
	<script charset="utf-8" src="kindeditor_a5/lang/zh_CN.js"></script>
	<script charset="utf-8" src="kindeditor_a5/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="content"]', {
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
  </head>

  <body >
  <%
  String lb=new String(request.getParameter("lb").getBytes("8859_1"));
   %>
 
  编辑<%=lb%>:
  <br><br>
  <%
  String sql="select * from dx where leibie='"+lb+"'";
  String contdent="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  if(RS_result.next()){
contdent=RS_result.getString("content");
  }
  else
  {
  	sql="insert into dx(leibie,content) values('"+lb+"','"+lb+"')";
	
	connDbBean.executeUpdate(sql);
	 	out.print("<script>javascript:location.href='dx.jsp?lb="+lb+"';</script>");
	
  }
  
  
   %>
    <form name="form1" id="form1" method="post" action="dx_post.jsp?lb=<%=lb %>">
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>内容：</td><td><textarea name="content" cols="100" rows="8" style="width:700px;height:400px;visibility:hidden;"><%=contdent%></textarea>
			<input name="lb" type="hidden" id="lb" value="<%=lb%>"></td></tr>
     
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="确定编辑" onClick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


