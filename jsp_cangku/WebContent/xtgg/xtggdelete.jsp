<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>

<%

DBO db=new DBO();//�������ݿ�
request.setCharacterEncoding("gb2312"); //����ҳ���ַ���
ResultSet rs=null;//��������
String sql="";//����sql
int row=1;
String keyid=(String)request.getParameter("keyid"); //����id
/*
.ϵͳ����ɾ��ҳ��


*/	
  sql="delete from xtgg where xtggid='"+keyid+"'";//ɾ��sql���
// int row=0;

try{
		
			
		 row=db.update(sql);//ִ�� ɾ����ϵͳ����Ĳ���
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){//�ɹ�
out.println("<script>");
out.println("alert('�����ɹ�');");
out.println("window.location='xtgglist.jsp'");
out.println("</script>");
}else{//ʧ��
out.println("<script>");
out.println("alert('����ʧ��');");
out.println("window.location='xtgglist.jsp'");
out.println("</script>");
}
db.close();//�ر����ݿ�����
%>
