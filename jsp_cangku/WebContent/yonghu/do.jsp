<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>

<%
/*
�û���Ӻ�̨
*/
DBO db=new DBO();//��ʼ���ݿ�����
request.setCharacterEncoding("gb2312");//�����ַ���
ResultSet rs=null;//���������
	String keyid =(String)request.getParameter("keyid");
String yhm=(String)request.getParameter("yhm");// ���� �� :�û���
String mm=(String)request.getParameter("mm");// ���� �� :����
String zsxm=(String)request.getParameter("zsxm");// ���� �� :��ʵ����
String qx=(String)request.getParameter("qx");// ���� �� :Ȩ��
String zcsj=(String)request.getParameter("zcsj");// ���� �� :ע��ʱ��
String zw=(String)request.getParameter("zw");// ���� �� :ְ��

String sql="";//����sql

int row=1;///����ִ�н��
		int num=0;
try{

	sql="select count(1) as num from yonghu where yhm='"+yhm+"'";
	rs=db.query(sql);
	if(rs.next()){
	num=rs.getInt("num");
	}
	if(num>0){
	out.println("<script>");
out.println("alert('����ʧ��,�û����ظ�');");
out.println("window.location='add.jsp'");
out.println("</script>");
return;
	}
	 sql="insert into yonghu(yhm,mm,zsxm,qx,zcsj,zw) values('"+yhm+"','"+mm+"','"+zsxm+"','"+qx+"','"+zcsj+"','"+zw+"')";
;//�û�SQL ���
		//int row =0;
		row=db.update(sql);//ִ��sql���
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){//�����ɹ�
out.println("<script>");
out.println("alert('ע��ɹ�');");
out.println("window.location='../login.jsp'");
out.println("</script>");
}else{//����ʧ��
out.println("<script>");
out.println("alert('ע��ʧ��');");
out.println("window.location='../login.jsp'");
out.println("</script>");
}
db.close();
%>

