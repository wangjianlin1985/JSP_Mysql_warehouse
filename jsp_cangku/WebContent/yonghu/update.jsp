<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>

<%
DBO db=new DBO();//���� ���ݿ�������
request.setCharacterEncoding("gb2312");// ����ҳ����ַ���
ResultSet rs=null;//�����ѯ�����
String sql="";//����Ҫ��ѯ�� sql������
int row=1;//���巵��ִ��update ���������
	String keyid=(String)request.getParameter("keyid"); 
		String yhm=(String)request.getParameter("yhm");//�������û���
String mm=(String)request.getParameter("mm");//����������
String zsxm=(String)request.getParameter("zsxm");//��������ʵ����
String qx=(String)request.getParameter("qx");//������Ȩ��
String zcsj=(String)request.getParameter("zcsj");//������ע��ʱ��
String zw=(String)request.getParameter("zw");//������ְ��

/*
.�û��޸ĺ�̨ҳ��
*/	
 
sql="update yonghu set yhm='"+yhm+"',mm='"+mm+"',zsxm='"+zsxm+"',qx='"+qx+"',zcsj='"+zcsj+"',zw='"+zw+"' where yhid='"+keyid+"'";
//ƴ��sql���
 //int row=0;

try{
		
			
		 row=db.update(sql);//ִ��sql���
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){//�����ɹ�
out.println("<script>");
out.println("alert('�����ɹ�');");
out.println("window.location='modify.jsp'");
out.println("</script>");
}else{//����ʧ��
out.println("<script>");
out.println("alert('����ʧ��');");
out.println("window.location='modify.jsp'");
out.println("</script>");
}
db.close();
%>

