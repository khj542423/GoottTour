<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${userId!=null}">
	<script>
		alert("아이디는"+userId+"입니다.");
		location.href="/Hye/project/register/registerEdit.do";
	</script>
</c:if>

<c:if test="${userPwd!=null}">
	<script>
		alert("비밀번호는"+userPwd+"입니다.");
		history.back();
	</script>
</c:if>

<c:if test="${userId==null && userPwd==null}">
	<script>
		alert("해당하는 회원이 없습니다.");
		history.back();
	</script>
</c:if>