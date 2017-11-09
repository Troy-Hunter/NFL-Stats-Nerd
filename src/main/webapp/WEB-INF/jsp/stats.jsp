<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="pageTitle" value="stats"/>

<%@include file="common/header.jspf" %>

<div>
<c:url var="statsUrl" value="/stats"/>
<form:form method="GET" action="${statsUrl}" >
<div>
	<p>Week 1 Rushing Yards</p>
	<c:out value="${stats.week1RushYards}"/><br>
	<p>Week 2 Rushing Yards</p>
	<c:out value="${stats.week2RushYards}"/><br>
	<p>Week 3 Rushing Yards</p>
	<c:out value="${stats.week3RushYards}"/><br>
	<p>Week 1 Rushing Attempts</p>
	<c:out value="${stats.week1RushingAtt}"/><br>
	<p>Week 2 Rushing Attempts</p>
	<c:out value="${stats.week2RushingAtt}"/><br>
	<p>Week 3 Rushing Attempts</p>
	<c:out value="${stats.week3RushingAtt}"/><br>
	<p>Week 1 Rushing Yards Per Attempt</p>
	<c:out value="${stats.week1RushYardsPerAtt}"/><br>
	<p>Week 2 Rushing Yards Per Attempt</p>
	<c:out value="${stats.week2RushYardsPerAtt}"/><br>
	<p>Week 3 Rushing Yards Per Attempt</p>
	<c:out value="${stats.week3RushYardsPerAtt}"/><br>
	<p>Week 1 Receiving Yards</p>
	<c:out value="${stats.week1RecYards}"/><br>
	<p>Week 2 Receiving Yards</p>
	<c:out value="${stats.week2RecYards}"/><br>
	<p>Week 3 Receiving Yards</p>
	<c:out value="${stats.week3RecYards}"/><br>
	<p>Week 1 Receptions</p>
	<c:out value="${stats.week1Receptions}"/><br>
	<p>Week 2 Receptions</p>
	<c:out value="${stats.week2Receptions}"/><br>
	<p>Week 3 Receptions</p>
	<c:out value="${stats.week3Receptions}"/><br>
	<p>Week 1 Targets</p>
	<c:out value="${stats.week1Targets}"/><br>
	<p>Week 2 Targets</p>
	<c:out value="${stats.week2Targets}"/><br>
	<p>Week 3 Targets</p>
	<c:out value="${stats.week3Targets}"/><br>
	<p>Week 1 Touchdowns</p>
	<c:out value="${stats.week1TD}"/><br>
	<p>Week 2 Touchdowns</p>
	<c:out value="${stats.week2TD}"/><br>
	<p>Week 3 Touchdowns</p>
	<c:out value="${stats.week3TD}"/><br>
	<p>Total Touchdowns</p>
	<c:out value="${stats.totalTouchdowns}"/><br>
<!-- 	<p>Week 1 Yards From Scrimmage</p> -->
<%-- 	<c:out value="${stats.week1YardsFromScrimmage}"/><br> --%>
<!-- 	<p>Week 2 Yards From Scrimmage</p> -->
<%-- 	<c:out value="${stats.week2YardsFromScrimmage}"/><br> --%>
<!-- 	<p>Week 3 Yards From Scrimmage</p> -->
<%-- 	<c:out value="${stats.week3YardsFromScrimmage}"/><br> --%>

</div>
</form:form>
</div>