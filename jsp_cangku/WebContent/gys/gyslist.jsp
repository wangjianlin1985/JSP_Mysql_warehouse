<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");//����ҳ���ַ���
DBO db=new DBO();//��ʼ�������ݿ���
String sql="select * from gys where 1=1 ";//��ѯ ��Ӧ��sql���
db.open();//�����ݿ�����
ResultSet rs=db.query(sql);//��ѯ���
//��Ӧ����Ϣ�б�
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��Ӧ���б�</title>
</head>
<link rel="stylesheet" type="text/css" id="css" href="../images/style.css">

<body>
<form name="form" action="" method="post" >

<table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
  <tr>
    <td height="30" background="../images/bg_list.gif"><div  style="padding-left:10px; font-weight:bold; color:#FFFFFF">��Ӧ�̹���</div></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="1">
      <tr>
        <td bgcolor="#FFFFFF">
        </td>
      </tr>
  
             	 		<tr  onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#FFFFFF'" bgcolor="#F1F5F8">
 <td  height="15" class="td" width="8%" >��Ӧ�̱��</td>
 <td  height="15" class="td" width="8%" >��Ӧ������</td>
 <td  height="15" class="td" width="8%" >��ַ</td>
 <td  height="15" class="td" width="8%" >��Ӫ��Χ</td>
 <td  height="15" class="td" width="8%" >�绰</td>
 <td  height="15" class="td" width="8%" >����</td>
 <td  height="15" class="td" width="8%" >ע��ʱ��</td>
 <td width="10%" class="td">����</td>
</tr>

          
        
	<%
				
		int Page=0;	
		int maxPage=0;
					if(rs!=null){
					String str=(String)request.getParameter("Page");
if(str==null){
str="0";
}
int pagesize=10;
rs.last();
int RecordCount=rs.getRow(); 

if(RecordCount>0){
System.out.println("RecordCount=="+RecordCount);
maxPage=(RecordCount%pagesize==0)?(RecordCount/pagesize):(RecordCount/pagesize+1);
 Page=Integer.parseInt(str);
if(Page<1){
 	Page=1;
}else{
	if(Page>maxPage){
	Page=maxPage;
}}
rs.absolute((Page-1)*pagesize+1);
for(int i=1;i<=pagesize;i++){
					%>
    <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#FFFFFF">
 <td height="15" class="td" width="8%"  ><%=rs.getString("gysid")%></td>
 <td height="15" class="td" width="8%"  ><%=rs.getString("gysmc")%></td>
 <td height="15" class="td" width="8%"  ><%=rs.getString("dz")%></td>
 <td height="15" class="td" width="8%"  ><%=rs.getString("jyfw")%></td>
 <td height="15" class="td" width="8%"  ><%=rs.getString("dh")%></td>
 <td height="15" class="td" width="8%"  ><%=rs.getString("fr")%></td>
 <td height="15" class="td" width="8%"  ><%=rs.getString("zcsj")%></td>
<td class="td" width="10%"><a href="gysupdate.jsp?keyid=<%=rs.getString("gysid")%>">�༭</a> |<a href="gysdelete.jsp?keyid=<%=rs.getString("gysid")%>"   onClick="javascript:if(confirm('�Ƿ�ɾ��')){return true;}else{return false;}">ɾ��</a>|<a href="gysdetail.jsp?keyid=<%=rs.getString("gysid")%>">�鿴</a></td>
</tr>

    <%
				try{
	if(!rs.next()){break;}
}catch(Exception e){System.out.println(e.toString());}
}
}
				 %>
				 	 <tr>
    <td height="38" width="100%" colspan="20"><div align="center"><table width="98%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
 <td align="right">��ǰҳ����[<%=Page%>/<%=maxPage%>]&nbsp;
	<%if(Page>1){%>
<a href="gyslist.jsp?Page=1">��һҳ</a>��<a href="gyslist.jsp?Page=<%=Page-1%>">��һҳ</a>
	<% }
if(Page<maxPage){%>
<a href="gyslist.jsp?Page=<%=Page+1%>">��һҳ</a>��<a href="gyslist.jsp?Page=<%=maxPage%>">���һҳ&nbsp;</a>
	<%}

					}

%>
    </table></td>
  </tr>
</table>





</form>


</body>
<%
db.close();
%>
</html>
