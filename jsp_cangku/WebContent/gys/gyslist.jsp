<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");//设置页面字符集
DBO db=new DBO();//初始链接数据库类
String sql="select * from gys where 1=1 ";//查询 供应商sql语句
db.open();//打开数据库链接
ResultSet rs=db.query(sql);//查询结果
//供应商信息列表
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>供应商列表</title>
</head>
<link rel="stylesheet" type="text/css" id="css" href="../images/style.css">

<body>
<form name="form" action="" method="post" >

<table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
  <tr>
    <td height="30" background="../images/bg_list.gif"><div  style="padding-left:10px; font-weight:bold; color:#FFFFFF">供应商管理</div></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="1">
      <tr>
        <td bgcolor="#FFFFFF">
        </td>
      </tr>
  
             	 		<tr  onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#FFFFFF'" bgcolor="#F1F5F8">
 <td  height="15" class="td" width="8%" >供应商编号</td>
 <td  height="15" class="td" width="8%" >供应商名称</td>
 <td  height="15" class="td" width="8%" >地址</td>
 <td  height="15" class="td" width="8%" >经营范围</td>
 <td  height="15" class="td" width="8%" >电话</td>
 <td  height="15" class="td" width="8%" >法人</td>
 <td  height="15" class="td" width="8%" >注册时间</td>
 <td width="10%" class="td">操作</td>
</tr>

          
        
	<%
				
		int Page=0;	
		int maxPage=0;
					if(rs!=null){
					String str=(String)request.getParameter("Page");
if(str==null){
str="0";
}
int pagesize=10;
rs.last();
int RecordCount=rs.getRow(); 

if(RecordCount>0){
System.out.println("RecordCount=="+RecordCount);
maxPage=(RecordCount%pagesize==0)?(RecordCount/pagesize):(RecordCount/pagesize+1);
 Page=Integer.parseInt(str);
if(Page<1){
 	Page=1;
}else{
	if(Page>maxPage){
	Page=maxPage;
}}
rs.absolute((Page-1)*pagesize+1);
for(int i=1;i<=pagesize;i++){
					%>
    <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#FFFFFF">
 <td height="15" class="td" width="8%"  ><%=rs.getString("gysid")%></td>
 <td height="15" class="td" width="8%"  ><%=rs.getString("gysmc")%></td>
 <td height="15" class="td" width="8%"  ><%=rs.getString("dz")%></td>
 <td height="15" class="td" width="8%"  ><%=rs.getString("jyfw")%></td>
 <td height="15" class="td" width="8%"  ><%=rs.getString("dh")%></td>
 <td height="15" class="td" width="8%"  ><%=rs.getString("fr")%></td>
 <td height="15" class="td" width="8%"  ><%=rs.getString("zcsj")%></td>
<td class="td" width="10%"><a href="gysupdate.jsp?keyid=<%=rs.getString("gysid")%>">编辑</a> |<a href="gysdelete.jsp?keyid=<%=rs.getString("gysid")%>"   onClick="javascript:if(confirm('是否删除')){return true;}else{return false;}">删除</a>|<a href="gysdetail.jsp?keyid=<%=rs.getString("gysid")%>">查看</a></td>
</tr>

    <%
				try{
	if(!rs.next()){break;}
}catch(Exception e){System.out.println(e.toString());}
}
}
				 %>
				 	 <tr>
    <td height="38" width="100%" colspan="20"><div align="center"><table width="98%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
 <td align="right">当前页数：[<%=Page%>/<%=maxPage%>]&nbsp;
	<%if(Page>1){%>
<a href="gyslist.jsp?Page=1">第一页</a>　<a href="gyslist.jsp?Page=<%=Page-1%>">上一页</a>
	<% }
if(Page<maxPage){%>
<a href="gyslist.jsp?Page=<%=Page+1%>">下一页</a>　<a href="gyslist.jsp?Page=<%=maxPage%>">最后一页&nbsp;</a>
	<%}

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
