<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.*"%>
<%@page import="javax.servlet.jsp.jstl.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<jsp:include page="header.jsp" flush="true" />

<title>GIGA LIBRARY</title>
<style>



th, td {
	border: 1px solid black; /* セルの境界線のスタイルを設定 */
	padding: 10px;
	margin: 10px;
}

h1, table, button, h6 {
	margin-left: 20px;
}

table td {
	background: #eee;
}


table tr:nth-child(odd) td {
	background: #fff;
}

</style>
</head>
<body>

	<h1>廃棄資料</h1>

	<button type="submit" class="btn btn-primary" id="btn">この資料を廃棄する</button>
	
	<script>
		var btn = document.getElementById('btn');
		btn.addEventListener('click', function() {
	    var result = window.confirm('この資料を廃棄しますか？');
   			if( result ){	
   				window.location.href = 'DeleteBookComplete';
   	   		}
		})
	</script>

	<br>
			<%
		BookDetailBean bookDetail = (BookDetailBean)session.getAttribute("bookDetailBean");
		%>
	
	
	<table border="1">
		<tr>
			<td width="200">GIGA LIBRARY BOOK ID</td>
			<td><%=bookDetail.getBook_id()%></td>
		</tr>
		<tr>
			<td width="200">書籍名</td>
			<td><%=bookDetail.getTitle()%></td>
		</tr>
		<tr>
			<td width="200">出版社名</td>
			<td><%=bookDetail.getPublisher()%></td>
		</tr>
		<tr>
			<td width="200">所蔵機関</td>
			<td><%=bookDetail.getBelong_high_school_name()%></td>
		</tr>
		<tr>
			<td width="200">書誌ID（NDLBibID）</td>
			<td><%=bookDetail.getNb_no()%></td>
		</tr>
		<tr>
			<td width="200">ISBN</td>
			<td><%=bookDetail.getIsbn()%></td>
		</tr>				
		<tr>
			<td width="200">ISSN</td>
			<td><%=bookDetail.getIssn()%></td>
		</tr>				
		<tr>
			<td width="200">バージョン</td>
			<td><%=bookDetail.getVer()%></td>
		</tr>				
		<tr>
			<td width="200">シリーズ</td>
			<td><%=bookDetail.getSeries()%></td>
		</tr>				
		<tr>
			<td width="200">サイズ</td>
			<td><%=bookDetail.getSize()%></td>
		</tr>				
		<tr>
			<td width="200">国会図書館書誌ID</td>
			<td><%=bookDetail.getBook_no()%></td>
		</tr>				
		<tr>
			<td width="200">国会図書館書誌URL</td>
			<td><%=bookDetail.getBook_uri()%></td>
		</tr>				
	</table>

</body>
</html>