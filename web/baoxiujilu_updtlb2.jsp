
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
    
    <title>报修记录</title><script language="javascript" src="js/hsgrili.js"></script>
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
	if(document.form1.baoxiudanhao.value==""){alert("请输入报修单号");document.form1.baoxiudanhao.focus();return false;}
if(document.form1.wujianmingcheng.value==""){alert("请输入物件名称");document.form1.wujianmingcheng.focus();return false;}

}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="baoxiujilu_updt_postlb2.jsp?id=<%=id %>">
  设置报修记录:
  <br><br>
  <%
  String sql="select * from baoxiujilu where id="+id;
  String pingfen="";
  String pingyu="";
  String baoxiudanhao="";String wujianmingcheng="";String guzhangshijian="";String yanzhongchengdu="";String guzhangmiaoshu="";String weixiufeiyong="";String weixiujieguo="";String weixiushijian="";String weixiuren="";String shenbaoren="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  pingfen=RS_result.getString("pingfen");
  pingyu=RS_result.getString("pingyu");
  baoxiudanhao=RS_result.getString("baoxiudanhao");wujianmingcheng=RS_result.getString("wujianmingcheng");guzhangshijian=RS_result.getString("guzhangshijian");yanzhongchengdu=RS_result.getString("yanzhongchengdu");guzhangmiaoshu=RS_result.getString("guzhangmiaoshu");weixiufeiyong=RS_result.getString("weixiufeiyong");weixiujieguo=RS_result.getString("weixiujieguo");weixiushijian=RS_result.getString("weixiushijian");weixiuren=RS_result.getString("weixiuren");shenbaoren=RS_result.getString("shenbaoren");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr style='display:none'><td>报修单号：</td><td><input name='baoxiudanhao' type='text' id='baoxiudanhao' value='<%= baoxiudanhao%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr style='display:none'><td>物件名称：</td><td><input name='wujianmingcheng' type='text' id='wujianmingcheng' size='50' value='<%=wujianmingcheng%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr style='display:none'><td>故障时间：</td><td><input name='guzhangshijian' type='text' id='guzhangshijian' value='<%= guzhangshijian%>' onClick="fPopCalendar(event,this,this)" readonly='readonly' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr style='display:none'><td>严重程度：</td><td><select name='yanzhongchengdu' id='yanzhongchengdu'><option value="轻微">轻微</option><option value="中等">中等</option><option value="严重">严重</option></select></td></tr><script language="javascript">document.form1.yanzhongchengdu.value='<%=yanzhongchengdu%>';</script>
     <tr style='display:none'><td>故障描述：</td><td><textarea name='guzhangmiaoshu' cols='50' rows='5' id='guzhangmiaoshu' style='border:solid 1px #000000; color:#666666'><%=guzhangmiaoshu%></textarea></td></tr>
     <tr style='display:none'><td>维修费用：</td><td><input name='weixiufeiyong' type='text' id='weixiufeiyong' value='<%= weixiufeiyong%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr style='display:none'><td>维修结果：</td><td><textarea name='weixiujieguo' cols='50' rows='5' id='weixiujieguo' style='border:solid 1px #000000; color:#666666'><%=weixiujieguo%></textarea></td></tr>
     <tr style='display:none'><td>维修时间：</td><td><input name='weixiushijian' type='text' id='weixiushijian' value='<%= weixiushijian%>' onClick="fPopCalendar(event,this,this)" readonly='readonly' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr style='display:none'><td>维修人：</td><td><input name='weixiuren' type='text' id='weixiuren' value='<%= weixiuren%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr style='display:none'><td>申报人：</td><td><input name='shenbaoren' type='text' id='shenbaoren' value='<%= shenbaoren%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     
     <tr>
       <td>评分：</td>
       <td><input name='pingfen' type='text' id='pingfen' value='<%= pingfen%>' style='border:solid 1px #000000; color:#666666' /></td>
     </tr>
     <tr>
       <td>评语：</td>
       <td><textarea name='pingyu' cols='50' rows='5' id='pingyu' style='border:solid 1px #000000; color:#666666'><%=pingyu%></textarea></td>
     </tr>
     <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


