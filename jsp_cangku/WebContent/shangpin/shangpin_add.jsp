<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>

<%
/*
商品添加后台
*/
DBO db=new DBO();//初始数据库链接
request.setCharacterEncoding("gb2312");//设置字符集
ResultSet rs=null;//声明结果集
	String keyid =(String)request.getParameter("keyid");
String spmc=(String)request.getParameter("spmc");// 变量 名 :商品名称
String jg=(String)request.getParameter("jg");// 变量 名 :价格
String gys=(String)request.getParameter("gys");// 变量 名 :供应商
String gg=(String)request.getParameter("gg");// 变量 名 :规格
String sl=(String)request.getParameter("sl");// 变量 名 :数量
String lrr=(String)request.getParameter("lrr");// 变量 名 :录入人
String sx=(String)request.getParameter("sx");// 变量 名 :属性
String xh=(String)request.getParameter("xh");// 变量 名 :型号
String zcsj=(String)request.getParameter("zcsj");// 变量 名 :注册时间

String sql="";//声明sql

int row=1;///定义执行结果
		int num=0;
try{

	sql="select count(1) as num from shangpin where spmc='"+spmc+"'";
	rs=db.query(sql);
	if(rs.next()){
	num=rs.getInt("num");
	}
	if(num>0){
	out.println("<script>");
out.println("alert('操作失败，商品名称重复');");
out.println("window.location='shangpinadd.jsp'");
out.println("</script>");
	return;
	}
	 sql="insert into shangpin(spmc,jg,gys,gg,sl,lrr,sx,xh,zcsj) values('"+spmc+"','"+jg+"','"+gys+"','"+gg+"','"+sl+"','"+lrr+"','"+sx+"','"+xh+"','"+zcsj+"')";
;//商品SQL 语句

	
		//int row =0;
		row=db.update(sql);//执行sql语句
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){//操作成功
out.println("<script>");
out.println("alert('操作成功');");
out.println("window.location='shangpinadd.jsp'");
out.println("</script>");
}else{//操作失败
out.println("<script>");
out.println("alert('操作失败');");
out.println("window.location='shangpinadd.jsp'");
out.println("</script>");
}
db.close();
%>

