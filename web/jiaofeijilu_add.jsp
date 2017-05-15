
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
    
    <title>缴费记录</title>
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
	if(document.form1.yonghuming.value==""){alert("请输入用户名");document.form1.yonghuming.focus();return false;}
if(document.form1.xingming.value==""){alert("请输入姓名");document.form1.xingming.focus();return false;}
if(document.form1.feiyongjine.value==""){alert("请输入费用金额");document.form1.feiyongjine.focus();return false;}
if((/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(document.form1.feiyongjine.value))){}else{alert("费用金额必需数字型");document.form1.feiyongjine.focus();return false;}
}
function gow()
{
	document.location.href="jiaofeijilu_add.jsp?yonghuming="+document.form1.yonghuming.value;
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
  <form name="form1" id="form1" method="post" action="jiaofeijilu_add_post.jsp">
  添加缴费记录:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
   <tr><td>用户名：</td><td><select name='yonghuming' id='yonghuming' onchange='gow();'><option value=''>请选择</option><%sql="select yonghuming from yonghuzhuce order by id desc";RS_result=connDbBean.executeQuery(sql);while(RS_result.next()){%><option value="<%= RS_result.getString("yonghuming")%>" ><%=RS_result.getString("yonghuming")%></option><%}%></select>&nbsp;*</td></tr><%if(request.getParameter("yonghuming")!=null){%><script language="javascript">document.form1.yonghuming.value='<%=new String(request.getParameter("yonghuming").getBytes("8859_1"))%>';</script><%}%>
<tr><td>姓名：</td><td><input name='xingming' type='text' id='xingming' style='border:solid 1px #000000; color:#666666' <%if( request.getParameter("yonghuming")!=null){String sql2="select xingming from yonghuzhuce where yonghuming='"+new String(request.getParameter("yonghuming").getBytes("8859_1"))+"'";ResultSet RS_result2=connDbBean.executeQuery(sql2);while(RS_result2.next()){%>value="<%=RS_result2.getString("xingming") %>"<%}}%>>&nbsp;*</td></tr>
<tr><td>年份：</td><td><select name='nianfen' id='nianfen'><%int nnf=0;for(nnf=2016;nnf>=2010;nnf--){%><option value='<%=nnf%>'><%=nnf%></option><%}%></select></td></tr>
<tr><td>月份：</td><td><select name='yuefen' id='yuefen'><%int nyf=0;for(nyf=1;nyf<=12;nyf++){%><option value='<%=nyf%>'><%=nyf%></option><%}%></select></td></tr>
<tr><td>费用类型：</td><td><select name='feiyongleixing' id='feiyongleixing'>
  <option value="水费">水费</option>
  <option value="电费">电费</option>
  <option value="物业费">物业费</option>
  <option value="燃气费">燃气费</option>
</select></td></tr>
<tr><td>费用金额：</td><td><input name='feiyongjine' type='text' id='feiyongjine' value='' style='border:solid 1px #000000; color:#666666' />&nbsp;*&nbsp;&nbsp;必需数字型</td></tr>
<tr><td>备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'></textarea></td></tr>

    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

