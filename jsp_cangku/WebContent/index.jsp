<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" /></head>
<frameset rows="80,*" cols="*" frameborder="no" border="0" framespacing="0">
  <frame src="top.jsp" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" title="topFrame" />
  <frameset rows="*" cols="165,*" framespacing="0" frameborder="no" border="0">
    <frame src="left.jsp" name="leftmenu" id="mainFrame" title="mainFrame" />
    <frameset rows="50,*" cols="*" framespacing="0" frameborder="no" border="0">
    <frame src="menu.jsp" name="topmenu" id="mainFrame" title="mainFrame" />
    <frame src="main/main.jsp" name="main" scrolling="yes" noresize="noresize" id="rightFrame" title="rightFrame" />
  </frameset>
  </frameset>
</frameset>
<noframes>
</html>
