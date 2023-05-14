<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>

<%
DBO db=new DBO();//声明 数据库链接类
request.setCharacterEncoding("gb2312");// 设置页面的字符集
ResultSet rs=null;//定义查询结果集
String sql="";//定义要查询的 sql语句变量
int row=1;//定义返回执行update 结果集变量
	String keyid=(String)request.getParameter("keyid"); 
		String yhm=(String)request.getParameter("yhm");//变量：用户名
String mm=(String)request.getParameter("mm");//变量：密码
String zsxm=(String)request.getParameter("zsxm");//变量：真实姓名
String qx=(String)request.getParameter("qx");//变量：权限
String zcsj=(String)request.getParameter("zcsj");//变量：注册时间
String zw=(String)request.getParameter("zw");//变量：职务

/*
.用户修改后台页面
*/	
 
sql="update yonghu set yhm='"+yhm+"',mm='"+mm+"',zsxm='"+zsxm+"',qx='"+qx+"',zcsj='"+zcsj+"',zw='"+zw+"' where yhid='"+keyid+"'";
//拼接sql语句
 //int row=0;

try{
		
			
		 row=db.update(sql);//执行sql语句
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){//操作成功
out.println("<script>");
out.println("alert('操作成功');");
out.println("window.location='modify.jsp'");
out.println("</script>");
}else{//操作失败
out.println("<script>");
out.println("alert('操作失败');");
out.println("window.location='modify.jsp'");
out.println("</script>");
}
db.close();
%>

