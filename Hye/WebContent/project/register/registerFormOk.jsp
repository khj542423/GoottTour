<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${cnt>0}" >
	<script>
		alert("회원등록되었습니다...홈으로 이동합니다.");
		location.href = "/Hye/index.do";
		
	</script>
</c:if>

<c:if test="${cnt<=0}" >
	<script>
		alert("회원등록 실패했습니다...");
		history.back();
	</script>

</c:if>