
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
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script language="javascript" src="js/hsgrili.js"></script>

      <script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>



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
	if(document.form1.cheweibianhao.value==""){alert("请输入车位编号");document.form1.cheweibianhao.focus();return false;}
if(document.form1.weizhi.value==""){alert("请输入位置");document.form1.weizhi.focus();return false;}

}
function gow()
{
	document.location.href="cheweixinxi_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
}
</script>
  <body >
    <%
  String sql;
  ResultSet RS_result;
  String id =request.getParameter("id");

 //islbdq String id=request.getParameter("id");
 //islbdq sql="select * from melieibaoduqubiaoiguo where id="+id;
 //islbdq   gogogogogo
 //islbdq RS_result=connDbBean.executeQuery(sql);
 //islbdq while(RS_result.next()){
 //islbdq   lelelelelele
 //islbdq }

/*
        2.车位添加可以输入以下信息：车位区域（下拉框选择）、车位规格（下拉框选择）、操作者（手动输入）、位置描述（手动输入）、
        点击提交后生成临时车位信息。*/

       // String sql2 = "select  DISTINCT t.guige,t.guige_desc from car_positon_price t ORDER BY t.guige";

       // String sql1= "select DISTINCT t.weizhi,t.weizhi_desc from car_positon_price t ORDER BY t.weizhi";


      //  ResultSet rs1 = connDbBean.executeQuery(sql1);
      //  ResultSet rs2 = connDbBean.executeQuery(sql2);



   %>
  <form name="form1" id="form1" method="post" action="carPositionApply_post.jsp">
  申请车位:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
   <tr><td>车主姓名：</td><td><input name='carusername' type='text' id='carusername' value='' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr>
   <tr><td>车牌号码：</td><td><input name='carnumber' type='text' id='carnumber' value='' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr>
   <tr><td>驶入时间：</td><td>
       <input class="Wdate" readonly="readonly" type="text" name="starttime" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})">
       &nbsp;*</td></tr>

       <input type="hidden" name="id" value="<%=id%>"/>




    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" style='border:solid 1px #000000; color:#666666' />
      </td>
    </tr>
  </table>
</form>

  </body>
</html>

