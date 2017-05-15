
<%@ page language="java"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";


%>
<%@ page language="java" import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.ParseException" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.util.*" %>
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

        String id = request.getParameter("id");


        String pricesql = "select t.* from car_positon_price t,cheweixinxi t1 where t.guige=t1.guige and t.weizhi=t1.weizhi and t1.ID="+id;

        ResultSet pricesqlrs = connDbBean.executeQuery(pricesql);

        String price = "";
        while (pricesqlrs.next()){
            price = pricesqlrs.getString("price");
        }

        pricesqlrs.close();

        String sql = "select * from car_use_info t where t.positionid="+id;

        String sql1 = "select * from car_use_info_his t where t.positionid="+id;




        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateNow = sdf.format(new java.util.Date());


        ResultSet rs = connDbBean.executeQuery(sql);
        ResultSet rs1 = connDbBean.executeQuery(sql1);
        //ResultSet rs2 = connDbBean.executeQuery(sql2);

        String carusername = "";
        String carnumber = "";
        String starttime = "";
        String endtime = "";

        boolean isEnd = false;
        while (rs.next()){
            carusername = rs.getString("carusername");
            carnumber = rs.getString("carnumber");
            starttime = rs.getString("starttime");
            isEnd = true;
        }
        rs.close();

        starttime = dateNow;
        String bntStr = "提交开始使用该车位";
        if (isEnd){
            bntStr = "提交结束使用该车位";
        }
        /*
        点击详情后弹出操作输入框，里面可以输如（车牌号码、驶入时间、驶出时间、总时长、总价格）。
        最后有确认和清空按钮。点击清空可以删除操作输入框里的所有信息。
        驶入时间、驶出时间可以手动输入也可以截取当前时间。
        总时长、总价格自动计算。
        目前状态默认为空，在输入驶入时间点击确认时时变为占用，
        在输入驶出时间并点击确认时变为目前状态变为空并生成车位使用记录
        （序号、编号、车位区域、车位规格、管理者、位置描述、车牌号码、驶入总时长、总价格）。并更新统计数据（已占车位总数、空闲车位总数、
        总收入金额按车位区域统计）显示在统计子功能模块里（图表显示）。
*/




    %>
  <form name="form1" id="form1" method="post" action="carPositionUseAdd.jsp">
  车位详情
  <br><br>


   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
       <tr><td>车主姓名:</td><td><input type="text" name="carusername" VALUE="<%=carusername%>" /></td></tr>
       <tr><td>车牌号码:</td><td><input type="text" name="carnumber" VALUE="<%=carnumber%>" /></td></tr>

       <%
           if (isEnd){



               long times = 0l;


               // 按照传入的格式生成一个simpledateformate对象
               SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
               long nd = 1000 * 24 * 60 * 60;// 一天的毫秒数
               long nh = 1000 * 60 * 60;// 一小时的毫秒数
               long nm =  1000*  60;// 一分钟的毫秒数
               long ns = 1000;// 一秒钟的毫秒数
               long diff;
               long day = 0;
               long hour = 0;
               long min = 0;
               long sec = 0;
               // 获得两个时间的毫秒时间差异
               try {
                   diff = new java.util.Date().getTime() - sd.parse(starttime).getTime();
                   day = diff / nd;// 计算差多少天
                   hour = diff % nd / nh + day * 24;// 计算差多少小时
                   min = diff % nd % nh / nm + day * 24 * 60;// 计算差多少分钟
                   sec = diff % nd % nh % nm / ns;// 计算差多少秒
                   // 输出结果
                   System.out.println("时间相差：" + day + "天" + (hour - day * 24) + "小时"
                           + (min - day * 24 * 60) + "分钟" + sec + "秒。");
                   System.out.println("hour=" + hour + ",min=" + min);

                   times = hour + (day*24);
                   if(sec > 0){
                       min = min +1;
                   }
                   if(min > 0){
                       times = times +1;
                   }


               } catch (ParseException e) {
                   // TODO Auto-generated catch block
                   e.printStackTrace();
               }

               //System.out.println(times);
               //System.out.println(price);

               out.print("<tr><td>驶入时间:</td><td><input type=\"text\" name=\"start\" VALUE=\""+starttime+"\" /></td></tr>");
            //   out.print("<tr><td>应付金额:</td><td> "+(times*Long.parseLong(price))+" </td></tr>");
           }
       %>


       <input type="hidden" name="id" VALUE="<%=id%>" />
       <tr><td>&nbsp;</td><td><input type="submit" name="Submit" value="<%=bntStr%>"  style='border:solid 1px #000000; color:#666666' /></td></tr>
  </table>


</form>




    车位使用记录
    <br><br>
    <input type="button" name="button" value="清空使用记录"  style='border:solid 1px #000000; color:#666666' />

    <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">

        <tr>
            <td bgcolor='#CCFFFF'>车主姓名</td>
            <td bgcolor='#CCFFFF'>车牌号码</td>
            <td bgcolor='#CCFFFF'>驶入时间</td>
            <td bgcolor='#CCFFFF'>驶出时间</td>
            <td bgcolor='#CCFFFF'>总时长</td>
            <td bgcolor='#CCFFFF'>总价格</td>
        </tr>

        <%
            while (rs1.next()){
               out.print("<tr><td>"+rs1.getString("carusername")+"</td><td>"+rs1.getString("carnumber")+"</td>" +
                       "<td>"+rs1.getString("starttime")+"</td><td>"+rs1.getString("endtime")+
                       "</td><td>"+rs1.getString("times")+"</td><td>"+rs1.getString("price")+"</td></tr>");
            }
            rs1.close();

        %>

    </table>



  </body>
</html>

