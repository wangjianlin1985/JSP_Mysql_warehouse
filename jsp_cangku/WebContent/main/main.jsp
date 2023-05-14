<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");//设置页面字符集
DBO db=new DBO();//初始数据链接
String sql="select * from xtgg where 1=1 limit 0,5 ";//查询 系统公告sql语句
db.open();//打开数据库链接
String bt=(String)request.getParameter("bt");//查询条件：标题
String ggnr=(String)request.getParameter("ggnr");//查询条件：公告内容



ResultSet rs=db.query(sql);//查询结果
//系统公告信息列表
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" id="css" href="../images/style.css">
<style type="text/css">
* {padding: 0;margin: 0;font-family: "微软雅黑";font-size: 14px;}
ul,li {list-style: none;}
a {text-decoration: none;color: black;}
.box{width: 800px;height: 400px;margin: 20px auto;overflow: hidden;position: relative;}
.box-1 ul{}
.box-1 ul li{width: 800px;height: 400px;position: relative;overflow: hidden;}
.box-1 ul li img{display:block;width: 800px; height: 400px;}
.box-1 ul li h2{position: absolute;left: 0;bottom: 0;height: 40px;width:300px;background: rgba(125,125,120,.4);text-indent: 2em;
				padding-right:500px ;font-size: 15px;line-height: 40px;text-overflow: ellipsis;overflow: hidden;
				white-space: nowrap;font-weight: normal;color: ghostwhite}
.box-2{position: absolute;right: 10px;bottom: 14px;}
.box-2 ul li{float:left;width: 12px;height: 12px;overflow: hidden; margin: 0 5px; border-radius: 50%;
				background: rgba(0,0,0,0.5);text-indent: 100px;cursor: pointer;}
.box-2 ul .on{background: rgba(255,255,255,0.6);}
.box-3 span{position: absolute;color: white;background: rgba(125,125,120,.3);width: 50px;height: 80px;
				top:50%; font-family: "宋体";line-height: 80px;font-size:60px;margin-top: -40px;
				text-align: center;cursor: pointer;}
.box-3 .prev{left: 10px;}
.box-3 .next{right: 10px;}
.box-3 span::selection{background: transparent;}
.box-3 span:hover{background: rgba(125,125,120,.8);}
</style>

<script type="text/javascript">
window.onload = function(){
	function $(param){
		if(arguments[1] == true){
			return document.querySelectorAll(param);
		}else{
			return document.querySelector(param);
		}
	}
	var $box = $(".box");
	var $box1 = $(".box-1 ul li",true);
	var $box2 = $(".box-2 ul");
	var $box3 = $(".box-3");
	var $length = $box1.length;
	
	var str = "";
	for(var i =0;i<$length;i++){
		if(i==0){
			str +="<li class='on'>"+(i+1)+"</li>";
		}else{
			str += "<li>"+(i+1)+"</li>";
		}
	}
	$box2.innerHTML = str;
	
	var current = 0;
	
	var timer;
	timer = setInterval(go,1000);
	function go(){
		for(var j =0;j<$length;j++){
			$box1[j].style.display = "none";
			$box2.children[j].className = "";
		}
		if($length == current){
			current = 0;
		}
		$box1[current].style.display = "block";
		$box2.children[current].className = "on";
		current++;
	}
	
	for(var k=0;k<$length;k++){
		$box1[k].onmouseover = function(){
			clearInterval(timer);
		}
		$box1[k].onmouseout = function(){
			timer = setInterval(go,1000);
		}
	}
	for(var p=0;p<$box3.children.length;p++){
		$box3.children[p].onmouseover = function(){
			clearInterval(timer);
		};
		$box3.children[p].onmouseout = function(){
			timer = setInterval(go,1000);
		}
	}
	
	for(var u =0;u<$length;u++){
		$box2.children[u].index  = u;
		$box2.children[u].onmouseover = function(){
			clearInterval(timer);
			for(var j=0;j<$length;j++){
				$box1[j].style.display = "none";
				$box2.children[j].className = "";
			}
			this.className = "on";
			$box1[this.index].style.display = "block";
			current = this.index +1;
		}
		$box2.children[u].onmouseout = function(){
			timer = setInterval(go,1000);
		}
	}
	
	$box3.children[0].onclick = function(){
		back();
	}
	$box3.children[1].onclick = function(){
		go();
	}
	function back(){
		for(var j =0;j<$length;j++){
			$box1[j].style.display = "none";
			$box2.children[j].className = "";
		}
		if(current == 0){
			current = $length;
		}
		$box1[current-1].style.display = "block";
		$box2.children[current-1].className = "on";
		current--;
	}
}
</script>
</head>
<body>
<form name="form" action="" method="post" ><br />



  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
  <tr>
    <td height="30" background="../images/bg_list.gif"><div  style="padding-left:10px; font-weight:bold; color:#FFFFFF">系统公告</div></td>
  </tr>
    <tr>
    <td bgcolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="1">
      <tr>
        <td bgcolor="#FFFFFF">
        </td>
      </tr>
      <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#FFFFFF'" bgcolor="#F1F5F8">
        <td colspan="2"><table width="100%" border="0" cellpadding="5" cellspacing="0">
           
             	 		<tr >

 <td  height="15" class="td" width="8%" >标题</td>

 <td  height="15" class="td" width="8%" >发布时间</td>
 <td width="10%" class="td">操作</td>
</tr>

          
          </table>
            
        </td>
      </tr>
	<%
					
					while(rs.next()){
					%>
    <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#FFFFFF">
       <td colspan="2"><table width="100%" border="0" cellpadding="5" cellspacing="0">
 <tr>

 <td height="15" class="td" width="8%"  ><%=rs.getString("bt")%></td>

 <td height="15" class="td" width="8%"  ><%=rs.getString("fbsj")%></td>
<td class="td" width="10%"><a href="../xtgg/xtggdetail.jsp?keyid=<%=rs.getString("xtggid")%>">查看</a></td>
</tr>
</table>
</td>
</tr>

    <%
				 }
		
				 %>
    </table></td>
  </tr>

  </table>
<div class="box">
	<div class="box-1">
		<ul>
			<li>
				<img src="1.jpg" alt=""></img>
			
			</li>
		 
			<li>
				<img src="3.jpg" alt=""></img>
				
			</li>
		
		</ul>
	</div>
	<div class="box-2">
		<ul>
			
		</ul>
	</div>
	<div class="box-3">
		<span class="prev"> < </span>
		<span class="next"> > </span>
	</div>
</div>






</form>



</body>
</html>
