<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>

<%
/*
��Ʒ��Ӻ�̨
*/
DBO db=new DBO();//��ʼ���ݿ�����
request.setCharacterEncoding("gb2312");//�����ַ���
ResultSet rs=null;//���������
	String keyid =(String)request.getParameter("keyid");
String spmc=(String)request.getParameter("spmc");// ���� �� :��Ʒ����
String jg=(String)request.getParameter("jg");// ���� �� :�۸�
String gys=(String)request.getParameter("gys");// ���� �� :��Ӧ��
String gg=(String)request.getParameter("gg");// ���� �� :���
String sl=(String)request.getParameter("sl");// ���� �� :����
String lrr=(String)request.getParameter("lrr");// ���� �� :¼����
String sx=(String)request.getParameter("sx");// ���� �� :����
String xh=(String)request.getParameter("xh");// ���� �� :�ͺ�
String zcsj=(String)request.getParameter("zcsj");// ���� �� :ע��ʱ��

String sql="";//����sql

int row=1;///����ִ�н��
		int num=0;
try{

	sql="select count(1) as num from shangpin where spmc='"+spmc+"'";
	rs=db.query(sql);
	if(rs.next()){
	num=rs.getInt("num");
	}
	if(num>0){
	out.println("<script>");
out.println("alert('����ʧ�ܣ���Ʒ�����ظ�');");
out.println("window.location='shangpinadd.jsp'");
out.println("</script>");
	return;
	}
	 sql="insert into shangpin(spmc,jg,gys,gg,sl,lrr,sx,xh,zcsj) values('"+spmc+"','"+jg+"','"+gys+"','"+gg+"','"+sl+"','"+lrr+"','"+sx+"','"+xh+"','"+zcsj+"')";
;//��ƷSQL ���

	
		//int row =0;
		row=db.update(sql);//ִ��sql���
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){//�����ɹ�
out.println("<script>");
out.println("alert('�����ɹ�');");
out.println("window.location='shangpinadd.jsp'");
out.println("</script>");
}else{//����ʧ��
out.println("<script>");
out.println("alert('����ʧ��');");
out.println("window.location='shangpinadd.jsp'");
out.println("</script>");
}
db.close();
%>

