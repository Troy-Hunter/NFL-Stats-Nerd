<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@include file="common/header.jsp" %>

<section>
<h1>Running Backs</h1>
 <c:forEach items="${allRunningBacks}" var="runningback"><br>
		<h4><c:out value="${runningback.name}"/></h4>
 </c:forEach>
</section>