<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>

<%
DBO db=new DBO();//���� ���ݿ�������
request.setCharacterEncoding("gb2312");// ����ҳ����ַ���
ResultSet rs=null;//�����ѯ�����
String sql="";//����Ҫ��ѯ�� sql������
int row=1;//���巵��ִ��update ���������
	String keyid=(String)request.getParameter("keyid"); 
		String gysmc=(String)request.getParameter("gysmc");//��������Ӧ������
String dz=(String)request.getParameter("dz");//��������ַ
String jyfw=(String)request.getParameter("jyfw");//��������Ӫ��Χ
String dh=(String)request.getParameter("dh");//�������绰
String fr=(String)request.getParameter("fr");//����������
String zcsj=(String)request.getParameter("zcsj");//������ע��ʱ��

/*
.��Ӧ���޸ĺ�̨ҳ��
*/	
 
sql="update gys set gysmc='"+gysmc+"',dz='"+dz+"',jyfw='"+jyfw+"',dh='"+dh+"',fr='"+fr+"',zcsj='"+zcsj+"' where gysid='"+keyid+"'";
//ƴ��sql���
 //int row=0;

try{
		
			
		 row=db.update(sql);//ִ��sql���
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){//�����ɹ�
out.println("<script>");
out.println("alert('�����ɹ�');");
out.println("window.location='gyslist.jsp'");
out.println("</script>");
}else{//����ʧ��
out.println("<script>");
out.println("alert('����ʧ��');");
out.println("window.location='gyslist.jsp'");
out.println("</script>");
}
db.close();
%>

