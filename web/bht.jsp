<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<META content="MSHTML 6.00.2800.1106" name=GENERATOR>

</HEAD>
<link href="css/zzsc.css" type="text/css" rel="stylesheet" />
<script src="js/jquery-1.7.1.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#featured > ul").tabs({fx:{opacity: "toggle"}}).tabs("rotate", 5000, true);
	});
</script>


<div id="featured">
	<ul class="ui-tabs-nav">
		<%
			String sqlbht;
			 i=0;
	sqlbht="select  shouyetupian from xinwentongzhi where shouyetupian<>'' and shouyetupian<>'null' order by id desc";
	ResultSet RS_resultbht=connDbBean.executeQuery(sqlbht);
	String idbht="";
	String biaotibht="";
	String shouyetupianbht="";
	 while(RS_resultbht.next()){
	 i++;
	 if(i<=5)
	 {
		%>
		<li id="nav-fragment-<%=i%>" class="ui-tabs-nav-item" style="top:<%=(i-1)*62%>px; left:0px">
		<a href="#fragment-<%=i%>"><img alt="" src="<%=RS_resultbht.getString("shouyetupian")%>" /></a></li>
		 <%
		 }
 }
%>

	</ul>
	
	<%
			
	sqlbht="select  shouyetupian,biaoti,id from xinwentongzhi where shouyetupian<>'' and shouyetupian<>'null' order by id desc";
	 RS_resultbht=connDbBean.executeQuery(sqlbht);
	i=0;
	 while(RS_resultbht.next()){
	 i++;
	 if(i<=5)
	 {
		%>
		
	<div style class="ui-tabs-panel ui-tabs-hide" id="fragment-<%=i%>">
		<a  href="gg_detail.jsp?id=<%=RS_resultbht.getString("id")%>">
		<img alt="" src="<%=RS_resultbht.getString("shouyetupian")%>" /></a>
		<div class="info">
			<h2><a class="STYLE3"  href="gg_detail.jsp?id=<%=RS_resultbht.getString("id")%>"><%=RS_resultbht.getString("biaoti")%></a><a href="gg_detail.jsp?id=<%=RS_resultbht.getString("id")%>">[详情]</a></p>
		</div>
	</div>
 <%
 }
 }
%>
	
</div>
<div style="text-align:center;clear:both">
</div>