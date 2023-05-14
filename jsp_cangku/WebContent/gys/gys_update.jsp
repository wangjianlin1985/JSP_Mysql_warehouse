<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>

<%
DBO db=new DBO();//声明 数据库链接类
request.setCharacterEncoding("gb2312");// 设置页面的字符集
ResultSet rs=null;//定义查询结果集
String sql="";//定义要查询的 sql语句变量
int row=1;//定义返回执行update 结果集变量
	String keyid=(String)request.getParameter("keyid"); 
		String gysmc=(String)request.getParameter("gysmc");//变量：供应商名称
String dz=(String)request.getParameter("dz");//变量：地址
String jyfw=(String)request.getParameter("jyfw");//变量：经营范围
String dh=(String)request.getParameter("dh");//变量：电话
String fr=(String)request.getParameter("fr");//变量：法人
String zcsj=(String)request.getParameter("zcsj");//变量：注册时间

/*
.供应商修改后台页面
*/	
 
sql="update gys set gysmc='"+gysmc+"',dz='"+dz+"',jyfw='"+jyfw+"',dh='"+dh+"',fr='"+fr+"',zcsj='"+zcsj+"' where gysid='"+keyid+"'";
//拼接sql语句
 //int row=0;

try{
		
			
		 row=db.update(sql);//执行sql语句
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){//操作成功
out.println("<script>");
out.println("alert('操作成功');");
out.println("window.location='gyslist.jsp'");
out.println("</script>");
}else{//操作失败
out.println("<script>");
out.println("alert('操作失败');");
out.println("window.location='gyslist.jsp'");
out.println("</script>");
}
db.close();
%>

