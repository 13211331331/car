
<%@ page language="java"  pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");

%>


<%@ page language="java" import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.ParseException" %>
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

  <body >
    <%

       SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateNow = sdf.format(new java.util.Date());


        String id = request.getParameter("id");


        String pricesql = "select t.* from car_positon_price t,cheweixinxi t1 where t.guige=t1.guige and t.weizhi=t1.weizhi and t1.ID="+id;

        ResultSet pricesqlrs = connDbBean.executeQuery(pricesql);

        String price = "";
        while (pricesqlrs.next()){
            price = pricesqlrs.getString("price");
        }


        String carusername = request.getParameter("carusername");
        String carnumber = request.getParameter("carnumber");

        String sql1 = "select * from car_use_info t where t.positionid="+id;

        ResultSet rs = connDbBean.executeQuery(sql1);
        boolean flag = false;
        String starttime = "";
        while(rs.next()){
            flag = true;
            starttime = rs.getString("starttime");
        }

      //  String starttime = request.getParameter("starttime");
      //  String endtime = request.getParameter("endtime");


        if(flag){
            //新增记录 设置空闲 删除车位使用

            String sql2 = "update cheweixinxi t set t.zhuangtai='空闲' where id="+id;
            connDbBean.executeUpdate(sql2);




             long times = 0;



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




              String sql21 = "update car_use_info t set t.endtime='"+dateNow+"' ,t.times="+times+",t.price="+ (Long.parseLong(price) * times)+" where t.positionid="+id;
              connDbBean.executeUpdate(sql21);




            String sql3 = "insert into car_use_info_his select * from car_use_info t where t.positionid="+id;
            String sql4 = "delete from car_use_info  where positionid="+id;
            connDbBean.executeUpdate(sql3);
            connDbBean.executeUpdate(sql4);
             out.print("<script>alert('提交成功!!应付金额 "+(Long.parseLong(price) * times)+" 元');location.href='carPositionInfo.jsp';</script>");

        }else{
             //新增车位使用
            String sql = "insert into car_use_info(carusername,carnumber,starttime,positionid) " +
                    "values('"+carusername+"','"+carnumber+"','"+dateNow +"',"+id+")";

            connDbBean.executeUpdate(sql);

            String sql2 = "update cheweixinxi t set t.zhuangtai='占用' where id="+id;

            connDbBean.executeUpdate(sql2);
             out.print("<script>alert('提交成功!!');location.href='carPositionInfo.jsp';</script>");

        }



   %>

