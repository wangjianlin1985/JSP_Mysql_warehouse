<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>

<%
/*
用户添加后台
*/
DBO db=new DBO();//初始数据库链接
request.setCharacterEncoding("gb2312");//设置字符集
ResultSet rs=null;//声明结果集
	String keyid =(String)request.getParameter("keyid");
String yhm=(String)request.getParameter("yhm");// 变量 名 :用户名
String mm=(String)request.getParameter("mm");// 变量 名 :密码
String zsxm=(String)request.getParameter("zsxm");// 变量 名 :真实姓名
String qx=(String)request.getParameter("qx");// 变量 名 :权限
String zcsj=(String)request.getParameter("zcsj");// 变量 名 :注册时间
String zw=(String)request.getParameter("zw");// 变量 名 :职务

String sql="";//声明sql

int row=1;///定义执行结果
		int num=0;
try{

	sql="select count(1) as num from yonghu where yhm='"+yhm+"'";
	rs=db.query(sql);
	if(rs.next()){
	num=rs.getInt("num");
	}
	if(num>0){
	out.println("<script>");
out.println("alert('操作失败,用户名重复');");
out.println("window.location='add.jsp'");
out.println("</script>");
return;
	}
	 sql="insert into yonghu(yhm,mm,zsxm,qx,zcsj,zw) values('"+yhm+"','"+mm+"','"+zsxm+"','"+qx+"','"+zcsj+"','"+zw+"')";
;//用户SQL 语句
		//int row =0;
		row=db.update(sql);//执行sql语句
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){//操作成功
out.println("<script>");
out.println("alert('注册成功');");
out.println("window.location='../login.jsp'");
out.println("</script>");
}else{//操作失败
out.println("<script>");
out.println("alert('注册失败');");
out.println("window.location='../login.jsp'");
out.println("</script>");
}
db.close();
%>

