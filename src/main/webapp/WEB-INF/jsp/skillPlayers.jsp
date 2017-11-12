<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="pageTitle" value="SkillPlayers"/>

<%@include file="common/header.jspf" %>

<div>
<c:url var="skillPlayersUrl" value="/skillPlayers"/>
<form:form method="GET" action="${skillPlayersUrl}" >

	<c:forEach items="${skillPlayers}" var ="runningback">
		<c:url value="/stats/${runningback.name.toLowerCase()}" var="playerStatsUrl"/>
		<a href="${playerStatsUrl}">
		<c:out value="${runningback.name}"/><br></a>
	</c:forEach>

</form:form>
</div>

	<%@include file="common/footer.jspf" %>
