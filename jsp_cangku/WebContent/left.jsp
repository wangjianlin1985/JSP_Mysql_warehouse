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
			<td align="center"><div style="margin-left:48px;">����˵�</div></td>
		</tr>	
</table>
<div id="home">




<%
if(qx.equals("����Ա")){
%>
		<table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist" style="margin-bottom: 5px;">
		<tr class="leftmenutext">
			<td><a href="#" onClick="collapse_change(1)"><img id="menuimg_2" src="images/menu_add.gif" border="0"/></a>&nbsp;<a href="#" onClick="collapse_change(1)">�û�����</a></td>
		</tr>
		<tbody id="menu_1" style="display:none">
			<tr class="leftmenutd">
				<td>
					<table border="0" cellspacing="0" cellpadding="0" class="leftmenuinfo">
						<tr >
						  <td><a href="yonghu/yonghuadd.jsp" target="main">�����û�</a></td>
						</tr>
						<tr >
						  <td><a href="yonghu/yonghulist.jsp" target="main">�����û�</a></td>
					  </tr>
					</table>
			  </td>
			</tr>
		</tbody>
	</table>
<% }%>

<table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist" style="margin-bottom: 5px;">
		<tr class="leftmenutext">
			<td><a href="#" onClick="collapse_change(2)"><img id="menuimg_2" src="images/menu_add.gif" border="0"/></a>&nbsp;<a href="#" onClick="collapse_change(2)">��Ӧ�̹���</a></td>
		</tr>
		<tbody id="menu_2" style="display:none">
			<tr class="leftmenutd">
				<td>
					<table border="0" cellspacing="0" cellpadding="0" class="leftmenuinfo">
						<tr >
						  <td><a href="gys/gysadd.jsp" target="main">���ӹ�Ӧ��</a></td>
						</tr>
						<tr >
						  <td><a href="gys/gyslist.jsp" target="main">����Ӧ��</a></td>
					  </tr>
					</table>
			  </td>
			</tr>
		</tbody>
	</table>


<table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist" style="margin-bottom: 5px;">
		<tr class="leftmenutext">
			<td><a href="#" onClick="collapse_change(3)"><img id="menuimg_2" src="images/menu_add.gif" border="0"/></a>&nbsp;<a href="#" onClick="collapse_change(3)">��Ʒ����</a></td>
		</tr>
		<tbody id="menu_3" style="display:none">
			<tr class="leftmenutd">
				<td>
					<table border="0" cellspacing="0" cellpadding="0" class="leftmenuinfo">
						<tr >
						  <td><a href="shangpin/shangpinadd.jsp" target="main">������Ʒ</a></td>
						</tr>
						<tr >
						  <td><a href="shangpin/shangpinlist.jsp" target="main">������Ʒ</a></td>
					  </tr>
					  <tr >
						  <td><a href="shangpin/shangpininfo.jsp" target="main">��Ʒ��ѯ</a></td>
					  </tr>
					</table>
			  </td>
			</tr>
		</tbody>
	</table>


<table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist" style="margin-bottom: 5px;">
		<tr class="leftmenutext">
			<td><a href="#" onClick="collapse_change(4)"><img id="menuimg_2" src="images/menu_add.gif" border="0"/></a>&nbsp;<a href="#" onClick="collapse_change(4)">������</a></td>
		</tr>
		<tbody id="menu_4" style="display:none">
			<tr class="leftmenutd">
				<td>
					<table border="0" cellspacing="0" cellpadding="0" class="leftmenuinfo">
						<tr >
						  <td><a href="ruku/rukuadd.jsp" target="main">�������</a></td>
						</tr>
						<tr >
						  <td><a href="ruku/rukulist.jsp" target="main">�������</a></td>
					  </tr>
					  
					  <tr >
						  <td><a href="ruku/rukuinfo.jsp" target="main">����ѯ</a></td>
					  </tr>
					</table>
			  </td>
			</tr>
		</tbody>
	</table>


<table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist" style="margin-bottom: 5px;">
		<tr class="leftmenutext">
			<td><a href="#" onClick="collapse_change(5)"><img id="menuimg_2" src="images/menu_add.gif" border="0"/></a>&nbsp;<a href="#" onClick="collapse_change(5)">�������</a></td>
		</tr>
		<tbody id="menu_5" style="display:none">
			<tr class="leftmenutd">
				<td>
					<table border="0" cellspacing="0" cellpadding="0" class="leftmenuinfo">
						<tr >
						  <td><a href="chuku/chukuadd.jsp" target="main">���ӳ���</a></td>
						</tr>
						<tr >
						  <td><a href="chuku/chukulist.jsp" target="main">�������</a></td>
					  </tr>
					  <tr >
						  <td><a href="chuku/chukuinfo.jsp" target="main">�����ѯ</a></td>
					  </tr>
					</table>
			  </td>
			</tr>
		</tbody>
	</table>


<table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist" style="margin-bottom: 5px;">
		<tr class="leftmenutext">
			<td><a href="#" onClick="collapse_change(6)"><img id="menuimg_2" src="images/menu_add.gif" border="0"/></a>&nbsp;<a href="#" onClick="collapse_change(6)">ϵͳ�������</a></td>
		</tr>
		<tbody id="menu_6" style="display:none">
			<tr class="leftmenutd">
				<td>
					<table border="0" cellspacing="0" cellpadding="0" class="leftmenuinfo">
					<%
if(qx.equals("����Ա")){
%>

						<tr >
						  <td><a href="xtgg/xtggadd.jsp" target="main">����ϵͳ����</a></td>
						</tr>
						<tr >
						  <td><a href="xtgg/xtgglist.jsp" target="main">����ϵͳ����</a></td>
					  </tr>
					  <% }%>
					  <tr >
						  <td><a href="xtgg/xtgginfo.jsp" target="main">ϵͳ����</a></td>
					  </tr>
					</table>
			  </td>
			</tr>
		</tbody>
	</table>




</div>
<table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist">
	<tr class="leftmenutext">
		<td><div style="margin-left:48px;"><a href="yonghu/modify.jsp" target="main">������Ϣ</a></div></td>
	</tr>
</table>

<table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist">
	<tr class="leftmenutext">
		<td><div style="margin-left:48px;"><a href="out.jsp" target="_parent">�˳�</a></div></td>
	</tr>
</table>



</div>
</body>
</html>
