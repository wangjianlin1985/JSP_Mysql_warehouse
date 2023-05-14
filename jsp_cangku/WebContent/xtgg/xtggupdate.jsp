<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");//设置页面字符集
DBO db=new DBO();//数据库链接
String   bt="",ggnr="",fbsj="";//初始化变量
String keyid=(String)request.getParameter("keyid");//主键
String sql="select * from xtgg where xtggid="+keyid;//定义查询sql语句
ResultSet rs=null;//定义查询结果集
db.open();//打开数据库链接
rs=db.query(sql);//执行查询结果

/*
系统公告信息修改页面
*/
if(rs.next()){//遍历结果集查询 相应的变量
 bt=rs.getString("bt");
ggnr=rs.getString("ggnr");
fbsj=rs.getString("fbsj");

}
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


form.action="xtgg_update.jsp";
form.submit();
}
</script>

</head>
<body>

<form name="form" action="" method="post" >



  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
  <tr>
    <td height="30" background="../images/bg_list.gif"><div  style="padding-left:10px; font-weight:bold; color:#FFFFFF">修改系统公告</div></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="5" cellspacing="0" >

	   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">标题 <font color="#FF0000">*</font></td>
<td colspan="2" class="td" ><input type="text"  style="FONT-SIZE: 12px; WIDTH: 300px"  placeholder="输入标题"  name=bt value="<%=bt%>"></td>
</tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">公告内容 <font color="#FF0000">*</font></td>
<td colspan="2" class="td" >
 <textarea name="ggnr" cols="80" rows="5"  placeholder="输入公告内容" ><%=ggnr%></textarea>
</td>
</tr>
   <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
<td height="25" class="td">发布时间 <font color="#FF0000">*</font></td>
<td colspan="2" class="td" ><input type="text"  style="FONT-SIZE: 12px; WIDTH: 300px"  placeholder="输入发布时间"  name=fbsj value="<%=fbsj%>"></td>
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
