<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/qrcode.js"></script>
<html>
<body>
<div>
    <div>名称 : <input type="text" name="user" id="user"></div>
    <div>密码 : <input type="password" name="pwd" id="pwd"></div>
   <div>协议 :
       <select name="enc" id="enc" class="form-control">
           <option value="WPA">WPA/WPA2</option>
           <option value="WEP">WEP</option>
           <option value="nopass">None</option>
       </select>
   </div>
    <div><input type="button" value="点击生成" onclick="out()"></div>
</div>
<div id="qrcode" float="right" ></div>
<script type="text/javascript">
  function out(){
    document.getElementById("qrcode").innerHTML="";
    let user = document.getElementById("user").value;
    let pwd = document.getElementById("pwd").value;
    let xieyi = document.getElementById("enc").value;
    var i = 128;
    new QRCode(document.getElementById("qrcode"),{
      text: "WIFI:S:"+user+";P:"+pwd+";T:"+xieyi+";; ",
      width: i-3,
      height: i,
      correctLevel : 0 // 二维码结构复杂性 0~3
    });
  }
  // new QRCode(document.getElementById("qrcode"), "https://github.com/davidshimjs/qrcodejs");
</script>
</body>
</html>
