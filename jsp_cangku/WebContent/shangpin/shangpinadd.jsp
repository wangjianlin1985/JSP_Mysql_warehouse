<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");//设置页面字符集
DBO db=new DBO();//初始数据链接
/*
商品信息添加页面
*/
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" id="css" href="../images/style.css">

<script language="javascript">
function checkDo(){
if(form.spmc.value==""){
alert("商品名称不能为空");
return false;
form.spmc.focus();
}

if(form.jg.value==""){
alert("价格不能为空");
return false;
form.jg.focus();
}

if(form.gys.value==""){
alert("供应商不能为空");
return false;
form.gys.focus();
}

if(form.gg.value==""){
alert("规格不能为空");
return false;
form.gg.focus();
}

if(form.sl.value==""){
alert("数量不能为空");
return false;
form.sl.focus();
}

if(form.lrr.value==""){
alert("录入人不能为空");
return false;
form.lrr.focus();
}

if(form.sx.value==""){
alert("属性不能为空");
return false;
form.sx.focus();
}

if(form.xh.value==""){
alert("型号不能为空");
return false;
form.xh.focus();
}

if(form.zcsj.value==""){
alert("注册时间不能为空");
return false;
form.zcsj.focus();
}


form.action="shangpin_add.jsp";
form.submit();
}
</script>

</head>
<body>
<form name="form" action="" method="post" >


  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
  <tr>
    <td height="30" background="../images/bg_list.gif"><div  style="padding-left:10px; font-weight:bold; color:#FFFFFF">添加商品</div></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="5" cellspacing="0" >

	   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">商品名称 <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="spmc" placeholder="输入商品名称"  type="text" value="" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">价格 <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="jg" placeholder="输入价格"  type="text" value="" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">供应商 <font color="#FF0000">*</font></td>
 <td colspan="2" class="td">
 <select name="gys">
 <%
 String sql="select * from gys";
 ResultSet rs=null;
 rs=db.query(sql);
 while(rs.next()){
 %>
 <option value="<%=rs.getString("gysmc")%>"><%=rs.getString("gysmc")%></option>
 <% }%>
 
 </select>
  </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">规格 <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="gg" placeholder="输入规格"  type="text" value="" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">数量 <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="sl" placeholder="输入数量"  type="text" value="0" onKeyUp="this.value=this.value.replace(/\D/g,'')" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">录入人 <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="lrr" placeholder="输入录入人"  type="text" value="<%=session.getAttribute("yhm")%>" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">属性 <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="sx" placeholder="输入属性"  type="text" value="" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">型号 <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="xh" placeholder="输入型号"  type="text" value="" /> </td>
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
