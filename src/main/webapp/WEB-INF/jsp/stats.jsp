<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="pageTitle" value="allRunningBacks"/>

<%@include file="common/header.jspf" %>

<div>
<c:url var="statsUrl" value="/individualStats"/>
<form:form method="GET" action="${statsUrl}" >
<div>
	<c:url value="${individualStats. }" var="skillPlayers"/>
</div>
</form:form>
</div>