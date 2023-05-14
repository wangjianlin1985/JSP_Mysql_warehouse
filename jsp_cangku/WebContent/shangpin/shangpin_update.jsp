<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>

<%
DBO db=new DBO();//声明 数据库链接类
request.setCharacterEncoding("gb2312");// 设置页面的字符集
ResultSet rs=null;//定义查询结果集
String sql="";//定义要查询的 sql语句变量
int row=1;//定义返回执行update 结果集变量
	String keyid=(String)request.getParameter("keyid"); 
		String spmc=(String)request.getParameter("spmc");//变量：商品名称
String jg=(String)request.getParameter("jg");//变量：价格
String gys=(String)request.getParameter("gys");//变量：供应商
String gg=(String)request.getParameter("gg");//变量：规格
String sl=(String)request.getParameter("sl");//变量：数量
String lrr=(String)request.getParameter("lrr");//变量：录入人
String sx=(String)request.getParameter("sx");//变量：属性
String xh=(String)request.getParameter("xh");//变量：型号
String zcsj=(String)request.getParameter("zcsj");//变量：注册时间

/*
.商品修改后台页面
*/	
 
sql="update shangpin set spmc='"+spmc+"',jg='"+jg+"',gys='"+gys+"',gg='"+gg+"',sl='"+sl+"',lrr='"+lrr+"',sx='"+sx+"',xh='"+xh+"',zcsj='"+zcsj+"' where spid='"+keyid+"'";
//拼接sql语句
 //int row=0;

try{
		
			
		 row=db.update(sql);//执行sql语句
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){//操作成功
out.println("<script>");
out.println("alert('操作成功');");
out.println("window.location='shangpinlist.jsp'");
out.println("</script>");
}else{//操作失败
out.println("<script>");
out.println("alert('操作失败');");
out.println("window.location='shangpinlist.jsp'");
out.println("</script>");
}
db.close();
%>

