<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");//设置页面字符集
DBO db=new DBO();//初始数据链接
/*
系统公告信息添加页面
*/
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" id="css" href="../images/style.css">

<script language="javascript">
function checkDo(){
if(form.bt.value==""){
alert("标题不能为空");
return false;
form.bt.focus();
}

if(form.ggnr.value==""){
alert("公告内容不能为空");
return false;
form.ggnr.focus();
}

if(form.fbsj.value==""){
alert("发布时间不能为空");
return false;
form.fbsj.focus();
}


form.action="xtgg_add.jsp";
form.submit();
}
</script>

</head>
<body>
<form name="form" action="" method="post" >


  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
  <tr>
    <td height="30" background="../images/bg_list.gif"><div  style="padding-left:10px; font-weight:bold; color:#FFFFFF">添加系统公告</div></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="5" cellspacing="0" >

	   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">标题 <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="bt" placeholder="输入标题"  type="text" value="" /> </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">公告内容 <font color="#FF0000">*</font></td>
 <td colspan="2" class="td">
 
 <textarea name="ggnr" cols="80" rows="5"  placeholder="输入公告内容" ></textarea>
  </td>
 </tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
      <td height="25" class="td">发布时间 <font color="#FF0000">*</font></td>
 <td colspan="2" class="td"><input name="fbsj" placeholder="输入发布时间"  type="text" value="<%=StaticMethod.getStringDate()%>" /> </td>
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
