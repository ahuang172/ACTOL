<%--
  Created by IntelliJ IDEA.
  User: ahuan
  Date: 2019/4/15
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<div lang="zh-CN"></div>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>ID</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/zhuye.css" type="text/css" rel="stylesheet"/>

</head>
<body>
<div id="kuanja">
    <div  id="caidan">
        <div class="da">
            <ul>
                <li>
                    <div class="fx">
                        <a  href="主页.html" style="color:red">主页</a>
                    </div></li>
                <li>
                    <div class="dropdown" id="tz" >
                        <div class="fx">
                            <a  style="color:black" id="dLabel" data-target="#" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                发现

                            </a>
                        </div>
                        <ul class="dropdown-menu" aria-labelledby="dLabel">
                            <li><a href="发现项目.html">发现项目</a></li>
                            <li><a href="发现演员.html">发现演员</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div class="fx">
                        <a href="观影大厅.html" style="color:black">观影</a>
                    </div>
                </li>



            </ul>
            <div class="da2">
                <input type="text" name="sousuo">
                <button type="button"></button>
            </div>
        </div>
    </div>

    <!--轮播-->
    <div id="sc" class="col-md-8">
        <div id="lb">
            <div id="myCarousel" class="carousel slide">
                <!-- 轮播（Carousel）指标 -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <!-- 轮播（Carousel）项目 -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img class="ttimg" src="images/1/zy.png" alt="First slide">
                    </div>
                    <div class="item">
                        <img class="ttimg" src="images/1/liulang.jpg" alt="Second slide">
                    </div>
                    <div class="item">
                        <img class="ttimg" src="images/1/st.jpg" alt="Third slide">
                    </div>
                </div>
                <!-- 轮播（Carousel）导航 -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>

    <!--通知栏-->


    <div class="col-md-8" id="tzl">
        <ul id="tongzhi" class="nav nav-tabs">
            <li><a href="#find" data-toggle="tab">发现项目</a></li>
            <li><a href="#actor" data-toggle="tab">发现演员</a></li>
            <li><a href="#vedio" data-toggle="tab">观影大厅</a></li>
            <li><a href="#chat" data-toggle="tab">论坛</a></li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane fade in active" id="find">
                <ul class="tZlieb">
                    <li><a>新西游记</a></li>
                    <li><a>新东游记</a></li>
                    <li><a>新大闹天宫</a></li>
                    <li><a>新谢罪</a></li>
                </ul>
            </div>
            <div class="tab-pane fade" id="actor">
                <ul class="tZlieb">
                    <li><a>沈猴猴</a></li>
                    <li><a>张张张</a></li>
                    <li><a>黄黄黄</a></li>
                    <li><a>苏苏苏</a></li>
                </ul>
            </div>
            <div class="tab-pane fade" id="vedio">
                <div class="row">
                    <div class=" col-md-3 " style="height: 150px">
                        <a class="thumbnail">
                            <img src="images/1/l1.jpg" alt="houhou">
                            <div class="caption">
                                <h3>新西游记</h3>
                                <p>主演：沈猴猴</p>
                            </div>
                        </a>
                    </div>
                    <div class=" col-md-3 " style="height: 150px">
                        <a class="thumbnail">
                            <img src="images/1/l1.jpg" alt="houhou1">
                            <div class="caption">
                                <h3>新西游记</h3>
                                <p>主演：沈猴猴</p>
                            </div>
                        </a>
                    </div>
                    <div class=" col-md-3 " style="height: 150px">
                        <a class="thumbnail">
                            <img src="images/1/l1.jpg" alt="houhou2">
                            <div class="caption">
                                <h3>新西游记</h3>
                                <p>主演：沈猴猴</p>
                            </div>
                        </a>
                    </div>
                    <div class=" col-md-3 " style="height: 150px">
                        <a class="thumbnail">
                            <img src="images/1/l1.jpg" alt="houhou3">
                            <div class="caption">
                                <h3>新西游记</h3>
                                <p>主演：沈猴猴</p>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="chat">
                <ul class="tZlieb">
                    <li><a>dasdddddddddddddddddddddddddddddddddd</a></li>
                    <li><a>wwwwwwwwwwwdwwwwwwddddddddddddddddddddddd</a></li>
                    <li><a>wdddddddddddddddddddddddddddddddddddddddddd</a></li>
                    <li><a>dwddddddddddddddddddddddddddddddddddddddddddddd</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--登录-->
<%  Cookie[] cookies=request.getCookies();
    String uname=null;
    String uface=null;
    if(cookies!=null) {
        for (int i = 0; i < cookies.length; i++) {
            if (cookies[i].getName().equals("uname")) {
                uname = cookies[i].getValue();

            }
            if(cookies[i].getName().equals("uface")){
                uface = cookies[i].getValue();
            }
        }

    }
%>
<div class="col-md-3" id="login">
    <div   id="line1">
        <div class="col-md-5" id="circle">
            <img id="tt" src=<%=request.getContextPath()+"/userimg/"+uface%> >
        </div>
    </div>
    <!--登录-->

    <div class="col-md-12 denglu" id="dlhou">
        <div class="dl">
            <%out.println("<h2 >"+uname+"</h2>");%>

        </div>
        <div class="dlbutton">

            <button class="btn btn-default btn-lg" type="button"  onclick="location.href='个人中心.html'">个人中心</button>
        </div>

        <div class="dlbutton">

            <button class="btn btn-danger btn-lg" id="zxbtn" type="button"  onclick="out()">注销</button>


        </div>



    </div>

</div>

</div>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js">

</script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.js">

</script>
<script>
    function out() {
        window.location.href="/first/LogoutServlet";
    }
</script>

</body>
</html>
