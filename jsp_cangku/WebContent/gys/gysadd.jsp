<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");//设置页面字符集
DBO db=new DBO();//初始数据链接
/*
供应商信息添加页面
*/
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" id="css" href="../images/style.css">

<script language="javascript">
function checkDo(){
if(form.gysmc.value==""){
alert("供应商名称不能为空");
return false;
form.gysmc.focus();
}

if(form.dz.value==""){
alert("地址不能为空");
return false;
form.dz.focus();
}

if(form.jyfw.value==""){
alert("经营范围不能为空");
return false;
form.jyfw.focus();
}

if(form.dh.value==""){
alert("电话不能为空");
return false;
form.dh.focus();
}

if(form.fr.value==""){
alert("法人不能为空");
return false;
form.fr.focus();
}

if(form.zcsj.value==""){
alert("注册时间不能为空");
return false;
form.zcsj.focus();
}


form.action="gys_add.jsp";
form.submit();
}
</script>

</head>
<body>
<form name="form" action="" method="post" >


  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
  <tr>
    <td height="30" background="../images/bg_list.gif"><div  style="padding-left:10px; font-weight:bold; color:#FFFFFF">添加供应商</div></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="5" cellspacing="0" >

	   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">供应商名称 <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="gysmc" placeholder="输入供应商名称"  type="text" value="" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">地址 <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="dz" placeholder="输入地址"  type="text" value="" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">经营范围 <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="jyfw" placeholder="输入经营范围"  type="text" value="" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">电话 <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="dh" placeholder="输入电话"  type="text" value="" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">法人 <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="fr" placeholder="输入法人"  type="text" value="" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">注册时间 <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="zcsj" placeholder="输入注册时间"  type="text" value="<%=StaticMethod.getStringDate()%>" readonly="" /> </td>
 </tr>



   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
         <td height="12" class="td">&nbsp;</td>
         <td colspan="2" class="td">
		  <input type="button" value="保存" name="B1" class="btn" style="width:60px" onclick="checkDo()"  />
                      &nbsp;&nbsp;
                      <input type="reset" value="取消" style="width:60px" name="chanel" class="btn" />
		 
		 </td>
       </tr>
	  </table>
</td>
  </tr>

  </table>








</form>



</body>
</html>
