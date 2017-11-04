<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="pageTitle" value="allRunningBacks"/>

<%@include file="common/header.jspf" %>

<div>
<c:url var="allRunningBacksUrl" value="/allRunningBacks"/>
<form:form method="GET" action="${allRunningBacksUrl}" >
<div>
<c:forEach items="${allRunningBacks}" var ="runningbacks">
	<c:url value="${runningbacks.name}"/><br>
</c:forEach>
</div>
</form:form>
</div>

<%@include file="common/footer.jspf" %>