<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"	prefix="c" %>   

<c:if test="${cnt>0 }">
	<script>
		alert("회원정보가 수정됨...");
		location.href="/Hye/project/register/registerEdit.do";
	</script>

</c:if>

<c:if test="${cnt<=0 }">

	<script>
		alert("회원정보 수정실패..");
		history.back();
	</script>

</c:if>

