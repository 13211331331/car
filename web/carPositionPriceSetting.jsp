
<%@ page language="java"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";


%>
<%@ page language="java" import="java.sql.*" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
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


        String sql = "select t.price, t.guige,t.weizhi from car_positon_price t ORDER BY t.guige,t.weizhi";

        String sql2 = "select  DISTINCT t.guige,t.guige_desc from car_positon_price t ORDER BY t.guige";

        String sql1= "select DISTINCT t.weizhi,t.weizhi_desc from car_positon_price t ORDER BY t.weizhi";


        ResultSet rs = connDbBean.executeQuery(sql);
        ResultSet rs1 = connDbBean.executeQuery(sql1);
        ResultSet rs2 = connDbBean.executeQuery(sql2);
        Map<String,String> map = new HashMap<String,String>();

        while(rs.next()){

            map.put(rs.getString("weizhi") + "-" + rs.getString("guige"),rs.getString("price"));
        }



   %>
  <form name="form1" id="form1" method="post" action="cheweixinxi_add_post.jsp">
  添加车位信息:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">

<%

    List<String> list = new ArrayList<String>();
    String ss = "";
    while(rs2.next()){
        ss += "<td>"+rs2.getString("guige_desc")+"</td>";
        list.add(rs2.getString("guige"));
    }
    ss += "<td>操作</td>";

    out.print(" <tr><td>(车位区域/车位规格)</td>"+ss+"</tr>");

    int  j = 1;
   while(rs1.next()){


       String bb = "";
       for(String str1:list){
           bb += ("<td>"+map.get(rs1.getString("weizhi")+"-" +str1)+"</td>");
       }
       bb +="<td><a href='modifyPrice.jsp?id="+ rs1.getString("weizhi")+"'>修改</a></td>";
       out.print(" <tr><td>"+ rs1.getString("weizhi_desc")+"</td>"+bb+"</tr>");

       j++;
   }

%>
  </table>
</form>

  </body>
</html>

