<%@ page language="java" contentType="text/html; charset=GB2312"  pageEncoding="GB2312"%>
<%
		request.getSession().invalidate();
		out.println("<script>");
		out.println("alert('�ɹ��˳�');");
		out.println("</script>");
		response.sendRedirect("login.jsp");
 %>
