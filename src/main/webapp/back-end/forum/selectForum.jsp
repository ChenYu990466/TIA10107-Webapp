<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>g3 forum: Home</title>

<style>
  table#table-1 {
	width: 450px;
	background-color: #CCCCFF;
	margin-top: 5px;
	margin-bottom: 10px;
    border: 3px ridge Gray;
    height: 80px;
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

</head>
<body bgcolor='white'>

<table id="table-1">
   <tr><td><h3>g3 forum: Home</h3><h4>( MVC )</h4></td></tr>
</table>

<p>This is the Home page for g3 forum: Home</p>

<h3>資料查詢:</h3>
	<%-- 錯誤表列 --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">請修正以下錯誤:</font>
	<ul>
	    <c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<ul>
  <li><a href="<%=request.getContextPath()%>/back-end/forum/listAllForum.jsp">List</a> all Forums.  <br><br></li>
  
  
  <li>
    <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/forum/forum.do">
        <b>輸入看板類別編號 (如1):</b>
        <input type="text" name="forumNumber">
        <input type="hidden" name="action" value="getOne_For_Display">
        <input type="submit" value="送出">
    </FORM>
  </li>
  <jsp:useBean id="forumSvc" scope="page" class="com.forum.model.ForumService"/>
   
  <li>
     <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/forum/forum.do" >
       <b>選擇看板編號:</b>
       <select size="1" name="forumNumber">
         <c:forEach var="forumVO" items="${forumSvc.all}" > 
          <option value="${forumVO.forumNumber}">${forumVO.forumNumber}
         </c:forEach>   
       </select>
       <input type="hidden" name="action" value="getOne_For_Display">
       <input type="submit" value="送出">
    </FORM>
  </li>
  <li>
    <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/forum/forum.do">
        <b>輸入看板類別名稱 (看板A):</b>
        <input type="text" name="name">
        <input type="hidden" name="action" value="getName_For_Display">
        <input type="submit" value="送出">
    </FORM>
  </li>
</ul>
	<h3>看板管理</h3>
	
	<ul>
	  <li><a href='<%=request.getContextPath()%>/back-end/forum/addForum.jsp'>Add</a> a new forum.</li>
	</ul>

  </body>
</html>
  