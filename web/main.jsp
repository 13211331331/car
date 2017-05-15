<%@ page language="java"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <title>三千城物业管理系统</title>
    <script language="javascript" type="text/javascript">
        function G(id) {
            return document.getElementById(id);
        }
        var status = 1;
        function switchSysBar() {
            if (1 == status) {
                status = 0;
                G("switchPoint").innerHTML = '<img src="images/left.gif" style="margin:0 2px">';
                G("frmTitle").style.display = "none";
            }
            else {
                status = 1;
                G("switchPoint").innerHTML = '<img src="images/right.gif" style="margin:0 2px">';
                G("frmTitle").style.display = "";
            }
        }
    </script>
    <link rel="stylesheet" type="text/css" href="css/houtai.css" />
</head>
<body>

    <table cellpadding="0" cellspacing="0" class="table">
        <tr>
            <td colspan="3" class="top_menu">
                <div style="font-family:宋体; color:#006633;WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE:30px ; margin-top:5pt">
            <div >&nbsp;&nbsp;三千城物业管理系统</div>
        </div>
               
            </td>
        </tr>
        <tr>
            <td id="frmTitle" style="width: 182px;">
                <table height="100%" style="width: 182px;" cellpadding="0" cellspacing="0">
                    <tr>
                        <td style="background-color: #c9defa; padding: 3px; padding-bottom: 0">
                            <div class="lie lie2">
                                <a onClick="javascript:history.back();" style="cursor:pointer" class="shouye" target="frmright">返回</a> <a style="cursor:pointer"  onClick="javascript:if(confirm('确定要退出吗？')==true){parent.location.href='logout.jsp';}"
                                    class="tuichu">退出</a>
                                <div style="clear: both">
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" style="background: #c9defa" height="100%" name="fmtitle">
                            <iframe frameborder="0" id="frmleft" name="frmleft" scrolling="yes" src="mygo.jsp"
                                style="height: 100%; visibility: inherit; width: 182px;" allowtransparency="true">
                            </iframe>
                        </td>
                    </tr>
                </table>
            </td>
            <td valign="middle" style="width: 12px; cursor: pointer;" bgcolor="#c3daf9" onMouseOver="this.style.backgroundColor='#ddeafc';this.style.color='red'"
                onmouseout="this.style.backgroundColor='';this.style.color=''" onClick="switchSysBar()">
                <span class="navpoint" id="switchPoint" title="关闭/打开左栏">
                    <img src="images/right.gif" style="margin: 0 2px"></span>
            </td>
            <td style="width: 100%" valign="top">
                <table width="100%" cellpadding="0" cellspacing="0" style="height: 100%;">
                    <tr>
                        <td>
                            <div class="menu">
                                <div class="wenzi">
                                    <a href="sy.jsp" target="frmright" class="a1">显示桌面</a><em>|</em><a
                                        href="yhzhgl.jsp" target="frmright" class="a1">系统用户管理</a><em>|</em><a
                                            href="databack.jsp" target="frmright" class="a1">数据备份</a><em>|</em><a
                                                href="mod.jsp" target="frmright" class="a1">修改密码</a>
                                </div>
								
                                <div class="wenzi2">
									当前日期：<%
	  java.util.Date date = new java.util.Date();
java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.CHINA);

String result = format.format(date);
out.print(result);
	  %>
                                    <a href="index.jsp" target="_parent">
                                        返回前台</a> <a href="logout.jsp" target="_parent">
                                        退出</a></div>
                               
                            </div>
                           
                           
                        </td>
                    </tr>
                    <tr>
                        <td style="height:100%" valign="top" id="tdframe">
                            <iframe frameborder="0" id="frmright" name="frmright" scrolling="auto" src="sy.jsp"
                                style="margin: 0; visibility: inherit; width: 100%; height:100%; z-index:1" onload="InitBulletin()" >
                            </iframe>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
    <script language="javascript" type="text/javascript">
        var mobjs = null;
        var mIndex = 0;
        var mCount = 0;
        var mHandle = null;
        //开始播放
        function StartMusic() {
            mobjs = document.getElementsByTagName("object");
            mCount = mobjs.length;
            if (mCount > 0) {
                mIndex = 0;
                var obj = document.getElementById(mobjs[mIndex].id.replace("_Obj", ""));
                if (obj != null && obj.innerText != "0") {
                    if (typeof (mobjs[mIndex].controls) != "undefined") {
                        mobjs[mIndex].controls.play();
                    }
                }
                mHandle = window.setInterval("LoopMusic()", 2000);
            }
        }
        //循环播放
        function LoopMusic() {
            if (typeof (mobjs[mIndex].playState) != "undefined") {
                var status = mobjs[mIndex].playState;
                if (status == 1 || status == 2 || status == 8 || status == 10) {
                    if (mIndex < mCount - 1) {
                        mIndex = mIndex + 1;
                    }
                    else {
                        mIndex = 0;
                    }
                    var obj = document.getElementById(mobjs[mIndex].id.replace("_Obj", ""));
                    if (obj != null && obj.innerText != "0") {
                        mobjs[mIndex].controls.play();
                    }
                }
            }
        }
        //刷新停止播放
        function StopMusic() {
            if (mHandle != null) {
                window.clearInterval(mHandle);
            }
            if (mobjs != null && mobjs[mIndex] != null) {
                if (typeof (mobjs[mIndex].controls) != "undefined") {
                    mobjs[mIndex].controls.stop();
                }
            }
        }
        //异步请求
        function AjaxMusic() {
            $.ajax({
                url: 'SystemManage.ashx',
                success: function (data) {
                    StopMusic();
                    data = (new Function("return " + data))();
                    var obj;
                    for (var i in data) {
                        if (i == "ret" && data[i] == "fail") {
                            window.location.href = "Default.jspx?r=" + data["code"];
                            break;
                        }

                        obj = $("#" + i);
                        obj.text(data[i]);
                        if (i == "Balance") {
                            if (data[i] == "0.000") {
                                obj.removeClass("blue");
                                obj.addClass("red");
                            }
                            else {
                                obj.removeClass("red");
                                obj.addClass("blue");
                            }
                        }
                        else {
                            if (data[i] == "0") {
                                obj.removeClass("red");
                                obj.addClass("blue");
                            }
                            else {
                                obj.removeClass("blue");
                                obj.addClass("red");
                            }
                        }
                    }

                    StartMusic();
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    if (Request(window.location.href, "d") == "1") {
                        alert(XMLHttpRequest.status);
                        alert(XMLHttpRequest.readyState);
                        alert(textStatus);
                        alert(errorThrown);
                    }
                },
                cache: false
            });
        }

        $(function () {
            AjaxMusic();
            window.setInterval(AjaxMusic, 60000);
        });

        function Request(url, para) {
            para = para.toLowerCase();
            var paraString = url.substring(url.indexOf("?") + 1, url.length).split("&");
            var key, j;
            for (i = 0; i < paraString.length; i++) {
                j = paraString[i];
                key = j.substring(0, j.indexOf("=")).toLowerCase();
                if (key == para) {
                    return j.substring(j.indexOf("=") + 1, j.length);
                }
            }
            return "";
        }

    </script>
</body>
</html>
