<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@include file="common/header.jspf" %>



<c:set var="pageTitle" value="homePage"/>

<div>
	<c:url var="homeUrl" value="/"/>
	<form:form method="GET" action="${homeUrl}">
	<div class="container">
	<c:set var="teamsLen" value="${allTeams.size() }"/>
	<c:forEach begin="0" end="${teamsLen / 4 - 1}" var="i">
	<div class="row">
		<c:forEach begin="0" end="3" var="j">
			<div class="col-lg-3 col-xs-12 team-div col-md-6">
			<c:url value="/skillPlayers/${allTeams[4*i+j].name.toLowerCase()}" var="skillPlayers"/>
	
				<c:url value="img/teams/${allTeams[4*i+j].name.toLowerCase()}.png" var="image"/>
				<a href="${skillPlayers}"> <img class="img-responsive" src="${image}"/> </a> 
				<figure>
				<figcaption class="team-name"><c:out value="${allTeams[4*i+j].name}"/></figcaption>
				</figure>
			
				</div>
				
		</c:forEach>
		</div>
	</c:forEach>
	</div>
	</form:form>
	</div>
	
	
	
	<%@include file="common/footer.jspf" %>


