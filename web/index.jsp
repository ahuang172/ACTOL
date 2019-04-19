<%--
  Created by IntelliJ IDEA.
  User: ahuan
  Date: 2019/4/12
  Time: 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
  <meta charset="UTF-8">
  <title>注册页面</title>
  <link href="css/bootstrap.css" rel="stylesheet">
  <link href="css/zhuye.css" type="text/css" rel="stylesheet"/>
  <link href="css/fz.css" type="text/css" rel="stylesheet"/>
  <link href="css/houhou.css" type="text/css" rel="stylesheet"/>
  <link href="css/zyq.css" type="text/css" rel="stylesheet"/>

</head>

<body>
<!--导航-->
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
<div class="row workq">
  <div class="col-md-12 workq-r-title">
    <h2>账号注册</h2>
  </div>

  <div class="col-md-12 container workq-r-t-r">
    <div class="row clearfix">
      <div class="col-md-12 column">
        <form action="RegisterServlet" onsubmit="return checknull();" method="post" >
        <div class="row clearfix ">

            <div class="adf">

              <p >
                输入你的手机号：<input id="phonenum" pattern="^1(3|4|5|7|8)\d{9}$"  type="text" name="phone" size="22"/>

              </p>
              <p >
                输入你的邮箱：<input id="emaill" type="email" name="email" size="22"/>

              </p>
              <p>
                创建昵称：<input id="namee" type="text" name="username" size="22"/>
              </p>
              <p>
                创建密码：<input id="pword1" type="password" name="pword" pattern="^(?![A-Z]+$)(?![a-z]+$)(?!\d+$)\S{8,}$" size="22"/>
                <p style="font-size: 12px;margin-left: 630px;color: red">
                 密码必须由数字,字母组成，长度不小于8
                </p>
              </p>

              <p>
                确认密码：<input id="pword2" type="password" onblur="checksame()" size="22"/>
              <p id="cueb" style="font-size: 12px;margin-left: 630px;color: red">
                 请确保两次输入的密码一致
              </p>
              </p>

              <p>
                职务偏向：<select id="zhiwu1" name="zhiwu">
                <option value="99" selected="selected">请选择</option>>
                <option value="0"  >演员</option>
                <option value="1"  >导演</option>
                <option value="2"  >后期</option>
                <option value="3"  >编剧</option>
                <option value="4"  >其他</option>

              </select>
              </p>
            </div>
            <p>
              协议：<br/>
            <div class="rwxinx ">

            </div>
            </p>

            <input id="xieyi" type="checkbox" >&nbsp;&nbsp;我认真阅读并接受以上协议。



        </div>
        <div class="row clearfix">
          <div class="col-md-6 column">

            <button class="btn btn-default btn-lg" type="button" onclick="location.href='主页.html'">返回</button>

          </div>
          <div class="col-md-6 column">

            <button class="btn btn-danger btn-lg" type="submit" id="zhuce" disabled="disabled" >注册</button>

          </div>
        </div>
        </form>
      </div>
    </div>
  </div>

</div>
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
    $(function(){
        $("#cueb").hide();
    });

    $("#xieyi").change(function() {
        if(this.checked){
            document.getElementById("zhuce").disabled =  false;
        }
        else {
            document.getElementById("zhuce").disabled = true;
        }
    });
    function checksame(){
          var psw1=document.getElementById("pword1").value;
          var psw2=document.getElementById("pword2").value;
          if(psw1 != psw2){

              $("#cueb").show();
          }
          else {
              $("#cueb").hide();
          }

    };
    function cnull(val) {
        var str = val.replace(/(^\s*)|(\s*$)/g, '');//去除空格;

        if (str == '' || str == undefined || str == null) {
            return true;

        } else {
           return false;
        }
    }

    function checknull() {
          var phone=document.getElementById("phonenum").value;
          var email=document.getElementById('emaill').value;
          var name=document.getElementById("namee").value;
          var pwd1=document.getElementById("pword1").value;
          var pwd2=document.getElementById("pword2").value;
          var zhiwu=$('#zhiwu1 option:selected').val();
          if(cnull(phone)||cnull(email)||cnull(name)||cnull(pwd1)||cnull(pwd2)||cnull(zhiwu)){
              alert("不可为空");
              return false;
          }




    }


</script>
</body>
</html>
