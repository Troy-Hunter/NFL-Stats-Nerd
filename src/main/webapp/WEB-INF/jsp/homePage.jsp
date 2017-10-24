<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@include file="common/header.jsp" %>

<section>
<h1>NFL Teams</h1>
 <c:forEach items="${allTeams}" var="team"><br>
 	<div>
    	<img src="img/team${team.id}.png"/>
	<div>
		<h4><c:out value="${team.name}"/></h4>
	</div>
	</div>
 </c:forEach>
</section>