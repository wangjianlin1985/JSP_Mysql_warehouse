<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");//设置页面字符集
DBO db=new DBO();//初始链接数据库类
String sql="select * from yonghu where 1=1 ";//查询 用户sql语句
db.open();//打开数据库链接
String yhm=(String)request.getParameter("yhm");//查询条件：用户名
String mm=(String)request.getParameter("mm");//查询条件：密码

//用户名 判断如果不为空，拼接到sql语句 通过 模糊查询的方式
if(yhm!=null){
if(!yhm.equals("")){
sql+=" and yhm like '%"+yhm+"%'";
}
}
//密码 判断如果不为空，拼接到sql语句 通过 模糊查询的方式
if(mm!=null){
if(!mm.equals("")){
sql+=" and mm like '%"+mm+"%'";
}
}

ResultSet rs=db.query(sql);//查询结果
//用户信息列表
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>用户列表</title>
</head>
<link rel="stylesheet" type="text/css" id="css" href="../images/style.css">

<body>
<form name="form" action="" method="post" >
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
  <tr>
    <td height="30" background="../images/bg_list.gif"><div  style="padding-left:10px; font-weight:bold; color:#FFFFFF">查询条件</div></td>
  </tr>
   <tr>
    <td bgcolor="#FFFFFF">用户名&nbsp;&nbsp;  <input type="text" name="yhm" />&nbsp;&nbsp;密码&nbsp;&nbsp;  <input type="text" name="mm" />&nbsp;&nbsp;<input type=submit value="查询">
	</td>
	</tr>
	</table>

<table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
  <tr>
    <td height="30" background="../images/bg_list.gif"><div  style="padding-left:10px; font-weight:bold; color:#FFFFFF">用户管理</div></td>
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
 <td  height="15" class="td" width="8%" >用户编号</td>
 <td  height="15" class="td" width="8%" >用户名</td>
 <td  height="15" class="td" width="8%" >密码</td>
 <td  height="15" class="td" width="8%" >真实姓名</td>
 <td  height="15" class="td" width="8%" >权限</td>
 <td  height="15" class="td" width="8%" >注册时间</td>
 <td  height="15" class="td" width="8%" >职务</td>
 <td width="10%" class="td">操作</td>
</tr>

          
          </table>
            
        </td>
      </tr>
	<%
					if(rs!=null){
					while(rs.next()){
					%>
    <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#FFFFFF">
       <td colspan="2"><table width="100%" border="0" cellpadding="5" cellspacing="0">
 <tr>
 <td height="15" class="td" width="8%"  ><%=rs.getString("yhid")%></td>
 <td height="15" class="td" width="8%"  ><%=rs.getString("yhm")%></td>
 <td height="15" class="td" width="8%"  ><%=rs.getString("mm")%></td>
 <td height="15" class="td" width="8%"  ><%=rs.getString("zsxm")%></td>
 <td height="15" class="td" width="8%"  ><%=rs.getString("qx")%></td>
 <td height="15" class="td" width="8%"  ><%=rs.getString("zcsj")%></td>
 <td height="15" class="td" width="8%"  ><%=rs.getString("zw")%></td>
<td class="td" width="10%"><a href="yonghudetail.jsp?keyid=<%=rs.getString("yhid")%>">查看</a></td>
</tr>
</table>
</td>
</tr>

    <%
				 }
				 }else {
out.println("<tr> <td><font color=red><h2>没有符合条件的数据</h2></font></td></tr>");
}
				 %>
    </table></td>
  </tr>
</table>





</form>


</body>
<%
db.close();
%>
</html>
