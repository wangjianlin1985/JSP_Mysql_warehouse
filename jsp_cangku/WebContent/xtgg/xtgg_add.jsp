<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>

<%
/*
ϵͳ������Ӻ�̨
*/
DBO db=new DBO();//��ʼ���ݿ�����
request.setCharacterEncoding("gb2312");//�����ַ���
ResultSet rs=null;//���������
	String keyid =(String)request.getParameter("keyid");
String bt=(String)request.getParameter("bt");// ���� �� :����
String ggnr=(String)request.getParameter("ggnr");// ���� �� :��������
String fbsj=(String)request.getParameter("fbsj");// ���� �� :����ʱ��

String sql="";//����sql
 sql="insert into xtgg(bt,ggnr,fbsj) values('"+bt+"','"+ggnr+"','"+fbsj+"')";
;//ϵͳ����SQL ���
int row=1;///����ִ�н��
		
try{

	
		//int row =0;
		row=db.update(sql);//ִ��sql���
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){//�����ɹ�
out.println("<script>");
out.println("alert('�����ɹ�');");
out.println("window.location='xtggadd.jsp'");
out.println("</script>");
}else{//����ʧ��
out.println("<script>");
out.println("alert('����ʧ��');");
out.println("window.location='xtggadd.jsp'");
out.println("</script>");
}
db.close();
%>

