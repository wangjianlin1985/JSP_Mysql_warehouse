<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>

<%
DBO db=new DBO();//���� ���ݿ�������
request.setCharacterEncoding("gb2312");// ����ҳ����ַ���
ResultSet rs=null;//�����ѯ�����
String sql="";//����Ҫ��ѯ�� sql������
int row=1;//���巵��ִ��update ���������
	String keyid=(String)request.getParameter("keyid"); 
		String bt=(String)request.getParameter("bt");//����������
String ggnr=(String)request.getParameter("ggnr");//��������������
String fbsj=(String)request.getParameter("fbsj");//����������ʱ��

/*
.ϵͳ�����޸ĺ�̨ҳ��
*/	
 
sql="update xtgg set bt='"+bt+"',ggnr='"+ggnr+"',fbsj='"+fbsj+"' where xtggid='"+keyid+"'";
//ƴ��sql���
 //int row=0;

try{
		
			
		 row=db.update(sql);//ִ��sql���
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){//�����ɹ�
out.println("<script>");
out.println("alert('�����ɹ�');");
out.println("window.location='xtgglist.jsp'");
out.println("</script>");
}else{//����ʧ��
out.println("<script>");
out.println("alert('����ʧ��');");
out.println("window.location='xtgglist.jsp'");
out.println("</script>");
}
db.close();
%>

