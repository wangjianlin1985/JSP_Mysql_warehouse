<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>

<%
DBO db=new DBO();//���� ���ݿ�������
request.setCharacterEncoding("gb2312");// ����ҳ����ַ���
ResultSet rs=null;//�����ѯ�����
String sql="";//����Ҫ��ѯ�� sql������
int row=1;//���巵��ִ��update ���������
	String keyid=(String)request.getParameter("keyid"); 
		String spmc=(String)request.getParameter("spmc");//��������Ʒ����
String jg=(String)request.getParameter("jg");//�������۸�
String gys=(String)request.getParameter("gys");//��������Ӧ��
String gg=(String)request.getParameter("gg");//���������
String sl=(String)request.getParameter("sl");//����������
String lrr=(String)request.getParameter("lrr");//������¼����
String sx=(String)request.getParameter("sx");//����������
String xh=(String)request.getParameter("xh");//�������ͺ�
String zcsj=(String)request.getParameter("zcsj");//������ע��ʱ��

/*
.��Ʒ�޸ĺ�̨ҳ��
*/	
 
sql="update shangpin set spmc='"+spmc+"',jg='"+jg+"',gys='"+gys+"',gg='"+gg+"',sl='"+sl+"',lrr='"+lrr+"',sx='"+sx+"',xh='"+xh+"',zcsj='"+zcsj+"' where spid='"+keyid+"'";
//ƴ��sql���
 //int row=0;

try{
		
			
		 row=db.update(sql);//ִ��sql���
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){//�����ɹ�
out.println("<script>");
out.println("alert('�����ɹ�');");
out.println("window.location='shangpinlist.jsp'");
out.println("</script>");
}else{//����ʧ��
out.println("<script>");
out.println("alert('����ʧ��');");
out.println("window.location='shangpinlist.jsp'");
out.println("</script>");
}
db.close();
%>

