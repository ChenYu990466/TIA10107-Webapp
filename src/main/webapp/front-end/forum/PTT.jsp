<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.forum.model.*" %>
<!DOCTYPE html>
<html lang="zh-TW">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PTT 文章列表</title>
    <link rel="stylesheet" href="ptt.css">
    <style>
		/* Styles for header */
		.header {
		    background-color: #4CAF50; /* Green background */
		    padding: 20px 0;
		    text-align: center;
		}
		
		.container {
		    display: flex;
		    align-items: center;
		    justify-content: center;
		}
		
		.logo {
		    margin-right: auto;
		    font-size: 24px;
		    color: #FFF; /* White text */
		}
		
		.search-container {
		    display: flex;
		    align-items: center;
		    justify-content: center;
		}
		
		.search-select,
		.search-input,
		.search-button {
		    margin: 0 5px;
		}
		
		.search-select,
		.search-input {
		    padding: 8px;
		    border: 1px solid #ccc; /* Grey border */
		}
		
		.search-button {
		    padding: 8px 15px;
		    background-color: #008CBA; /* Blue button */
		    border: none;
		    color: #FFF; /* White text */
		    border-radius: 5px;
		    cursor: pointer;
		}
		
		.search-button:hover {
		    background-color: #005f77; /* Darker blue on hover */
		}
		/* Styles for article list */
		.article-list {
		    list-style-type: none;
		    padding: 0;
		}
		
		.article-item {
		    margin-bottom: 20px;
		    border: 2px solid #ccc; /* Grey border */
		    border-radius: 5px; /* Rounded corners */
		    padding: 10px; /* Add some padding for spacing */
		}

    </style>

</head>
<body>
	<header class="header">
	    <div class="container">
	        <h1 class="logo">book talk</h1>
	        <div class="search-container">
		        
	            <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/forum/forum.do">
	            	<select class="search-select">
		                <option value="option1">看板</option>
		                <option value="option2">文章</option>
		                <option value="option3">作者</option>
	            	</select>
		            <input type="text" name="name" class="search-input" placeholder="Search">
		            <input type="hidden" name="action" value="getName_For_Front_Display">
        			<input type="submit" class="search-button" value="送出">
	            </FORM>
	        </div>
	    </div>
	</header>
	<%-- 錯誤表列 --%>
	<div style = "position: relative;top: 50%;left:83%;">
		<c:if test="${not empty errorMsgs}">
			<font style="color:red">請修正以下錯誤:</font>
			<ul>
			    <c:forEach var="message" items="${errorMsgs}">
					<li style="color:red">${message}</li>
				</c:forEach>
			</ul>
		</c:if>
	</div>
    
    <ul class="article-list">
        <li class="article-item">
            <div class="article-header">
                <span class="article-category">新聞</span>
                <span class="article-author">作者：user</span>
                <span class="article-time">發表時間：2024-04-17 10:00</span>
            </div>
            <a href="#" class="article-title">這是一個示例文章標題</a>
            <div class="article-content">
                這是一個示例文章的內容。在這裡，我們可以顯示文章的一部分內容或摘要。
            </div>
        </li>
        <!-- 其他文章項目 -->
    </ul>
   
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   
</body>
</html>