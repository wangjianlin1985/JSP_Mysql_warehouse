<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>

<%

DBO db=new DBO();//链接数据库
request.setCharacterEncoding("gb2312"); //设置页面字符集
ResultSet rs=null;//定义结果集
String sql="";//定义sql
int row=1;
String keyid=(String)request.getParameter("keyid"); //主键id
/*
.供应商删除页面


*/	
  sql="delete from gys where gysid='"+keyid+"'";//删除sql语句
// int row=0;

try{
		
			
		 row=db.update(sql);//执行 删除的供应商的操作
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){//成功
out.println("<script>");
out.println("alert('操作成功');");
out.println("window.location='gyslist.jsp'");
out.println("</script>");
}else{//失败
out.println("<script>");
out.println("alert('操作失败');");
out.println("window.location='gyslist.jsp'");
out.println("</script>");
}
db.close();//关闭数据库链接
%>

