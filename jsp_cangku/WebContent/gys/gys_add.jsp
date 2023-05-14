<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>

<%
/*
供应商添加后台
*/
DBO db=new DBO();//初始数据库链接
request.setCharacterEncoding("gb2312");//设置字符集
ResultSet rs=null;//声明结果集
	String keyid =(String)request.getParameter("keyid");
String gysmc=(String)request.getParameter("gysmc");// 变量 名 :供应商名称
String dz=(String)request.getParameter("dz");// 变量 名 :地址
String jyfw=(String)request.getParameter("jyfw");// 变量 名 :经营范围
String dh=(String)request.getParameter("dh");// 变量 名 :电话
String fr=(String)request.getParameter("fr");// 变量 名 :法人
String zcsj=(String)request.getParameter("zcsj");// 变量 名 :注册时间

String sql="";//声明sql
 sql="insert into gys(gysmc,dz,jyfw,dh,fr,zcsj) values('"+gysmc+"','"+dz+"','"+jyfw+"','"+dh+"','"+fr+"','"+zcsj+"')";
;//供应商SQL 语句
int row=1;///定义执行结果
		
try{

	
		//int row =0;
		row=db.update(sql);//执行sql语句
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){//操作成功
out.println("<script>");
out.println("alert('操作成功');");
out.println("window.location='gysadd.jsp'");
out.println("</script>");
}else{//操作失败
out.println("<script>");
out.println("alert('操作失败');");
out.println("window.location='gysadd.jsp'");
out.println("</script>");
}
db.close();
%>

