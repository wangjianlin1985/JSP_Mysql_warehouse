<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>

<%
/*
��Ӧ����Ӻ�̨
*/
DBO db=new DBO();//��ʼ���ݿ�����
request.setCharacterEncoding("gb2312");//�����ַ���
ResultSet rs=null;//���������
	String keyid =(String)request.getParameter("keyid");
String gysmc=(String)request.getParameter("gysmc");// ���� �� :��Ӧ������
String dz=(String)request.getParameter("dz");// ���� �� :��ַ
String jyfw=(String)request.getParameter("jyfw");// ���� �� :��Ӫ��Χ
String dh=(String)request.getParameter("dh");// ���� �� :�绰
String fr=(String)request.getParameter("fr");// ���� �� :����
String zcsj=(String)request.getParameter("zcsj");// ���� �� :ע��ʱ��

String sql="";//����sql
 sql="insert into gys(gysmc,dz,jyfw,dh,fr,zcsj) values('"+gysmc+"','"+dz+"','"+jyfw+"','"+dh+"','"+fr+"','"+zcsj+"')";
;//��Ӧ��SQL ���
int row=1;///����ִ�н��
		
try{

	
		//int row =0;
		row=db.update(sql);//ִ��sql���
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){//�����ɹ�
out.println("<script>");
out.println("alert('�����ɹ�');");
out.println("window.location='gysadd.jsp'");
out.println("</script>");
}else{//����ʧ��
out.println("<script>");
out.println("alert('����ʧ��');");
out.println("window.location='gysadd.jsp'");
out.println("</script>");
}
db.close();
%>

