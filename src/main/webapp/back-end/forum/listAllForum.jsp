<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.forum.model.*"%>
<%-- 此頁練習採用 EL 的寫法取值 --%>

<%
    ForumService forumSvc = new ForumService();
    List<ForumVO> list = forumSvc.getAll();
    pageContext.setAttribute("list",list);
%>


<html>
<head>
<title>所有員工資料 - listAllEmp.jsp</title>

<style>
  table#table-1 {
	background-color: #CCCCFF;
    border: 2px solid black;
    text-align: center;
  }
  table#table-1 h4 {
    color: red;
    display: block;
    margin-bottom: 1px;
  }
  h4 {
    color: blue;
    display: inline;
  }
</style>

<style>
  table {
	width: 800px;
	background-color: white;
	margin-top: 5px;
	margin-bottom: 5px;
  }
  table, th, td {
    border: 1px solid #CCCCFF;
  }
  th, td {
    padding: 5px;
    text-align: center;
  }
</style>

</head>
<body bgcolor='white'>

<h4>此頁練習採用 EL 的寫法取值:</h4>
<table id="table-1">
	<tr><td>
		 <h3>所有員工資料 - listAllForum.jsp</h3>
		 <h4><a href="<%=request.getContextPath()%>/back-end/forum/selectForum.jsp"><img src="<%=request.getContextPath()%>/back-end/forum/images/back1.gif" width="100" height="32" border="0">回首頁</a></h4>
	</td></tr>
</table>

<table>
	<tr>
		<th>看板編號</th>
		<th>看板名稱</th>

	</tr>
	<%@ include file="page1.file" %>
	<c:forEach var="forumVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
		
		<tr>
			<td>${forumVO.forumNumber}</td>
			<td>${forumVO.name}</td>

			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/forum/forum.do" style="margin-bottom: 0px;">
			     <input type="submit" value="修改">
			     <input type="hidden" name="forumNumber"  value="${forumVO.forumNumber}">
			     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
			</td>
			<!-- <td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/forum/forum.do" style="margin-bottom: 0px;">
			     <input type="submit" value="刪除">
			     <input type="hidden" name="forumNumber"  value="${forumVO.forumNumber}">
			     <input type="hidden" name="action" value="delete"></FORM>
			</td> -->
		</tr>
	</c:forEach>
</table>
<%@ include file="page2.file" %> 

</body>
</html>