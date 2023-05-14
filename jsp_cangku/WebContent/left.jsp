<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");
String qx="";
if(session.getAttribute("qx")!=null){
qx=(String)session.getAttribute("qx");
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" id="css" href="images/M1.css">
<script src="images/common.js" type="text/javascript"></script>
<script>
var collapsed = getcookie('cdb_collapse');
function collapse_change(menucount) {
	if($('menu_' + menucount).style.display == 'none') {
		$('menu_' + menucount).style.display = '';collapsed = collapsed.replace('[' + menucount + ']' , '');
		$('menuimg_' + menucount).src = 'images/menu_reduce.gif';
	} else {
		$('menu_' + menucount).style.display = 'none';collapsed += '[' + menucount + ']';
		$('menuimg_' + menucount).src = 'images/menu_add.gif';
	}
	setcookie('cdb_collapse', collapsed, 2592000);
}
</script>
</head>

<body style="margin:5px!important;margin:3px;">
	<table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist" style="margin-bottom: 5px;">
		<tr class="leftmenutext">
			<td align="center"><div style="margin-left:48px;">管理菜单</div></td>
		</tr>	
</table>
<div id="home">




<%
if(qx.equals("管理员")){
%>
		<table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist" style="margin-bottom: 5px;">
		<tr class="leftmenutext">
			<td><a href="#" onClick="collapse_change(1)"><img id="menuimg_2" src="images/menu_add.gif" border="0"/></a>&nbsp;<a href="#" onClick="collapse_change(1)">用户管理</a></td>
		</tr>
		<tbody id="menu_1" style="display:none">
			<tr class="leftmenutd">
				<td>
					<table border="0" cellspacing="0" cellpadding="0" class="leftmenuinfo">
						<tr >
						  <td><a href="yonghu/yonghuadd.jsp" target="main">增加用户</a></td>
						</tr>
						<tr >
						  <td><a href="yonghu/yonghulist.jsp" target="main">管理用户</a></td>
					  </tr>
					</table>
			  </td>
			</tr>
		</tbody>
	</table>
<% }%>

<table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist" style="margin-bottom: 5px;">
		<tr class="leftmenutext">
			<td><a href="#" onClick="collapse_change(2)"><img id="menuimg_2" src="images/menu_add.gif" border="0"/></a>&nbsp;<a href="#" onClick="collapse_change(2)">供应商管理</a></td>
		</tr>
		<tbody id="menu_2" style="display:none">
			<tr class="leftmenutd">
				<td>
					<table border="0" cellspacing="0" cellpadding="0" class="leftmenuinfo">
						<tr >
						  <td><a href="gys/gysadd.jsp" target="main">增加供应商</a></td>
						</tr>
						<tr >
						  <td><a href="gys/gyslist.jsp" target="main">管理供应商</a></td>
					  </tr>
					</table>
			  </td>
			</tr>
		</tbody>
	</table>


<table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist" style="margin-bottom: 5px;">
		<tr class="leftmenutext">
			<td><a href="#" onClick="collapse_change(3)"><img id="menuimg_2" src="images/menu_add.gif" border="0"/></a>&nbsp;<a href="#" onClick="collapse_change(3)">商品管理</a></td>
		</tr>
		<tbody id="menu_3" style="display:none">
			<tr class="leftmenutd">
				<td>
					<table border="0" cellspacing="0" cellpadding="0" class="leftmenuinfo">
						<tr >
						  <td><a href="shangpin/shangpinadd.jsp" target="main">增加商品</a></td>
						</tr>
						<tr >
						  <td><a href="shangpin/shangpinlist.jsp" target="main">管理商品</a></td>
					  </tr>
					  <tr >
						  <td><a href="shangpin/shangpininfo.jsp" target="main">商品查询</a></td>
					  </tr>
					</table>
			  </td>
			</tr>
		</tbody>
	</table>


<table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist" style="margin-bottom: 5px;">
		<tr class="leftmenutext">
			<td><a href="#" onClick="collapse_change(4)"><img id="menuimg_2" src="images/menu_add.gif" border="0"/></a>&nbsp;<a href="#" onClick="collapse_change(4)">入库管理</a></td>
		</tr>
		<tbody id="menu_4" style="display:none">
			<tr class="leftmenutd">
				<td>
					<table border="0" cellspacing="0" cellpadding="0" class="leftmenuinfo">
						<tr >
						  <td><a href="ruku/rukuadd.jsp" target="main">增加入库</a></td>
						</tr>
						<tr >
						  <td><a href="ruku/rukulist.jsp" target="main">管理入库</a></td>
					  </tr>
					  
					  <tr >
						  <td><a href="ruku/rukuinfo.jsp" target="main">入库查询</a></td>
					  </tr>
					</table>
			  </td>
			</tr>
		</tbody>
	</table>


<table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist" style="margin-bottom: 5px;">
		<tr class="leftmenutext">
			<td><a href="#" onClick="collapse_change(5)"><img id="menuimg_2" src="images/menu_add.gif" border="0"/></a>&nbsp;<a href="#" onClick="collapse_change(5)">出库管理</a></td>
		</tr>
		<tbody id="menu_5" style="display:none">
			<tr class="leftmenutd">
				<td>
					<table border="0" cellspacing="0" cellpadding="0" class="leftmenuinfo">
						<tr >
						  <td><a href="chuku/chukuadd.jsp" target="main">增加出库</a></td>
						</tr>
						<tr >
						  <td><a href="chuku/chukulist.jsp" target="main">管理出库</a></td>
					  </tr>
					  <tr >
						  <td><a href="chuku/chukuinfo.jsp" target="main">出库查询</a></td>
					  </tr>
					</table>
			  </td>
			</tr>
		</tbody>
	</table>


<table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist" style="margin-bottom: 5px;">
		<tr class="leftmenutext">
			<td><a href="#" onClick="collapse_change(6)"><img id="menuimg_2" src="images/menu_add.gif" border="0"/></a>&nbsp;<a href="#" onClick="collapse_change(6)">系统公告管理</a></td>
		</tr>
		<tbody id="menu_6" style="display:none">
			<tr class="leftmenutd">
				<td>
					<table border="0" cellspacing="0" cellpadding="0" class="leftmenuinfo">
					<%
if(qx.equals("管理员")){
%>

						<tr >
						  <td><a href="xtgg/xtggadd.jsp" target="main">增加系统公告</a></td>
						</tr>
						<tr >
						  <td><a href="xtgg/xtgglist.jsp" target="main">管理系统公告</a></td>
					  </tr>
					  <% }%>
					  <tr >
						  <td><a href="xtgg/xtgginfo.jsp" target="main">系统公告</a></td>
					  </tr>
					</table>
			  </td>
			</tr>
		</tbody>
	</table>




</div>
<table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist">
	<tr class="leftmenutext">
		<td><div style="margin-left:48px;"><a href="yonghu/modify.jsp" target="main">个人信息</a></div></td>
	</tr>
</table>

<table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist">
	<tr class="leftmenutext">
		<td><div style="margin-left:48px;"><a href="out.jsp" target="_parent">退出</a></div></td>
	</tr>
</table>



</div>
</body>
</html>
