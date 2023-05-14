<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");//设置页面字符集
DBO db=new DBO();//数据库链接
String   gysmc="",dz="",jyfw="",dh="",fr="",zcsj="";//初始化变量
String keyid=(String)request.getParameter("keyid");//主键
String sql="select * from gys where gysid="+keyid;//定义查询sql语句
ResultSet rs=null;//定义查询结果集
db.open();//打开数据库链接
rs=db.query(sql);//执行查询结果

/*
供应商信息修改页面
*/
if(rs.next()){//遍历结果集查询 相应的变量
 gysmc=rs.getString("gysmc");
dz=rs.getString("dz");
jyfw=rs.getString("jyfw");
dh=rs.getString("dh");
fr=rs.getString("fr");
zcsj=rs.getString("zcsj");

}
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


form.action="gys_update.jsp";
form.submit();
}
</script>

</head>
<body>

<form name="form" action="" method="post" >



  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
  <tr>
    <td height="30" background="../images/bg_list.gif"><div  style="padding-left:10px; font-weight:bold; color:#FFFFFF">修改供应商</div></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="5" cellspacing="0" >

	   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">供应商名称 <font color="#FF0000">*</font></td>
<td colspan="2" class="td" ><input type="text"  style="FONT-SIZE: 12px; WIDTH: 300px"  placeholder="输入供应商名称"  name=gysmc value="<%=gysmc%>"></td>
</tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">地址 <font color="#FF0000">*</font></td>
<td colspan="2" class="td" ><input type="text"  style="FONT-SIZE: 12px; WIDTH: 300px"  placeholder="输入地址"  name=dz value="<%=dz%>"></td>
</tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">经营范围 <font color="#FF0000">*</font></td>
<td colspan="2" class="td" ><input type="text"  style="FONT-SIZE: 12px; WIDTH: 300px"  placeholder="输入经营范围"  name=jyfw value="<%=jyfw%>"></td>
</tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">电话 <font color="#FF0000">*</font></td>
<td colspan="2" class="td" ><input type="text"  style="FONT-SIZE: 12px; WIDTH: 300px"  placeholder="输入电话"  name=dh value="<%=dh%>"></td>
</tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">法人 <font color="#FF0000">*</font></td>
<td colspan="2" class="td" ><input type="text"  style="FONT-SIZE: 12px; WIDTH: 300px"  placeholder="输入法人"  name=fr value="<%=fr%>"></td>
</tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">注册时间 <font color="#FF0000">*</font></td>
<td colspan="2" class="td" ><input type="text"  style="FONT-SIZE: 12px; WIDTH: 300px"  placeholder="输入注册时间"  name=zcsj value="<%=zcsj%>"></td>
</tr>


<input type="hidden" name="keyid" value="<%=keyid%>">
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
<%
db.close();
%>
</html>
