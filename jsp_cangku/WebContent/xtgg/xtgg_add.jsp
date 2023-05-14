<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>

<%
/*
系统公告添加后台
*/
DBO db=new DBO();//初始数据库链接
request.setCharacterEncoding("gb2312");//设置字符集
ResultSet rs=null;//声明结果集
	String keyid =(String)request.getParameter("keyid");
String bt=(String)request.getParameter("bt");// 变量 名 :标题
String ggnr=(String)request.getParameter("ggnr");// 变量 名 :公告内容
String fbsj=(String)request.getParameter("fbsj");// 变量 名 :发布时间

String sql="";//声明sql
 sql="insert into xtgg(bt,ggnr,fbsj) values('"+bt+"','"+ggnr+"','"+fbsj+"')";
;//系统公告SQL 语句
int row=1;///定义执行结果
		
try{

	
		//int row =0;
		row=db.update(sql);//执行sql语句
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){//操作成功
out.println("<script>");
out.println("alert('操作成功');");
out.println("window.location='xtggadd.jsp'");
out.println("</script>");
}else{//操作失败
out.println("<script>");
out.println("alert('操作失败');");
out.println("window.location='xtggadd.jsp'");
out.println("</script>");
}
db.close();
%>

