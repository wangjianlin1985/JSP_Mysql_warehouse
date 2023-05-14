<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>

<%
DBO db=new DBO();//声明 数据库链接类
request.setCharacterEncoding("gb2312");// 设置页面的字符集
ResultSet rs=null;//定义查询结果集
String sql="";//定义要查询的 sql语句变量
int row=1;//定义返回执行update 结果集变量
	String keyid=(String)request.getParameter("keyid"); 
		String bt=(String)request.getParameter("bt");//变量：标题
String ggnr=(String)request.getParameter("ggnr");//变量：公告内容
String fbsj=(String)request.getParameter("fbsj");//变量：发布时间

/*
.系统公告修改后台页面
*/	
 
sql="update xtgg set bt='"+bt+"',ggnr='"+ggnr+"',fbsj='"+fbsj+"' where xtggid='"+keyid+"'";
//拼接sql语句
 //int row=0;

try{
		
			
		 row=db.update(sql);//执行sql语句
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){//操作成功
out.println("<script>");
out.println("alert('操作成功');");
out.println("window.location='xtgglist.jsp'");
out.println("</script>");
}else{//操作失败
out.println("<script>");
out.println("alert('操作失败');");
out.println("window.location='xtgglist.jsp'");
out.println("</script>");
}
db.close();
%>

