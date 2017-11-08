<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="pageTitle" value="stats"/>

<%@include file="common/header.jspf" %>

<div>
<c:url var="statsUrl" value="/stats"/>
<form:form method="GET" action="${statsUrl}" >
<div>
	<c:out value="${stats.week1RushYards}"/><br>
	<c:out value="${stats.week2RushYards}"/><br>
	<c:out value="${stats.weekwRushYards}"/><br>
	<c:out value="${stats.week1RushingAtt}"/><br>
	<c:out value="${stats.week2RushingAtt}"/><br>
	<c:out value="${stats.week3RushingAtt}"/><br>
	<c:out value="${stats.week1RushYardsPerAtt}"/><br>
	<c:out value="${stats.week2RushYardsPerAtt}"/><br>
	<c:out value="${stats.week3RushYardsPerAtt}"/><br>
	<c:out value="${stats.week1RecYards}"/><br>
	<c:out value="${stats.week2RecYards}"/><br>
	<c:out value="${stats.week3RecYards}"/><br>
	<c:out value="${stats.week1Receptions}"/><br>
	<c:out value="${stats.week2Receptions}"/><br>
	<c:out value="${stats.week3Receptions}"/><br>
	<c:out value="${stats.week1Targets}"/><br>
	<c:out value="${stats.week2Targets}"/><br>
	<c:out value="${stats.week3Targets}"/><br>
	<c:out value="${stats.week1TD}"/><br>
	<c:out value="${stats.week2TD}"/><br>
	<c:out value="${stats.week3TD}"/><br>
	<c:out value="${stats.totalTouchdowns}"/><br>
	<c:out value="${stats.week1YardsFromScrimmage}"/><br>
	<c:out value="${stats.week2YardsFromScrimmage}"/><br>
	<c:out value="${stats.week3YardsFromScrimmage}"/><br>

</div>
</form:form>
</div>