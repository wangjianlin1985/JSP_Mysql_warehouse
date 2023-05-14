<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");//设置页面字符集
DBO db=new DBO();//初始数据链接
/*
用户信息添加页面
*/
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" id="css" href="../images/style.css">

<script language="javascript">
function checkDo(){
if(form.yhm.value==""){
alert("用户名不能为空");
return false;
form.yhm.focus();
}

if(form.mm.value==""){
alert("密码不能为空");
return false;
form.mm.focus();
}

if(form.zsxm.value==""){
alert("真实姓名不能为空");
return false;
form.zsxm.focus();
}

if(form.qx.value==""){
alert("权限不能为空");
return false;
form.qx.focus();
}

if(form.zcsj.value==""){
alert("注册时间不能为空");
return false;
form.zcsj.focus();
}

if(form.zw.value==""){
alert("职务不能为空");
return false;
form.zw.focus();
}


form.action="do.jsp";
form.submit();
}
</script>

</head>
<body>
<form name="form" action="" method="post" ><br />
<br />
<br />
<br />
<br />
<br />



  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
  <tr>
    <td height="30" background="../images/bg_list.gif"><div  style="padding-left:10px; font-weight:bold; color:#FFFFFF">注册用户</div></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="5" cellspacing="0" >

	   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">用户名 <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="yhm" placeholder="输入用户名"  type="text" value="" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">密码 <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="mm" placeholder="输入密码"  type="text" value="" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">真实姓名 <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="zsxm" placeholder="输入真实姓名"  type="text" value="" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">权限 <font color="#FF0000">*</font></td>
 <td colspan="2" class="td">
 
 <select name="qx">
 
 <option value="用户">用户</option>

 </select>
  </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">注册时间 <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="zcsj" placeholder="输入注册时间"  type="text" value="<%=StaticMethod.getStringDate()%>" readonly="" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">职务 <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="zw" placeholder="输入职务"  type="text" value="" /> </td>
 </tr>



   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
         <td height="12" class="td">&nbsp;</td>
         <td colspan="2" class="td">
		  <input type="button" value="注册" name="B1" class="btn" style="width:60px" onclick="checkDo()"  />
                      &nbsp;&nbsp;
                      <input type="button" value="返回" style="width:60px" name="chanel" class="btn" onclick="window.history.go(-1)" />
		 
		 </td>
       </tr>
	  </table>
</td>
  </tr>

  </table>








</form>



</body>
</html>
