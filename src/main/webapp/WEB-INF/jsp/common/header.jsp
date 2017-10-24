<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>National Stat Leader</title><br>
    <c:url value="/css/solarsystemgeek.css" var="cssHref" />
    <link rel="stylesheet" href="${cssHref}">
</head>

<body>
    <header>
    		<c:url value="/" var="homePageHref" />
    		<c:url value="/img/ssg_logo.png" var="logoSrc" />
        <a href="${homePageHref}">
        		<img src="${logoSrc}" alt="Football Logo" />
        </a>
        <h1>National Stat Leader</h1>
        <p>Welcome to the leader in everything NFL stats! Here to help you dig deep and research your way to a fantasy win!</p>
    </header>
    <nav>
        <h2>Running Back Options</h2>
        <p>Select an option or choose from one of the teams below to look at each team's running backs and their individual stats.<p>
        <ul>
            <c:url var="homePage" value="/homePage"/>
            <li><a href="${homePage}">Home</a></li>
            
            <c:url var="allRunningBacks" value="/allRunningBacks"/>
            <li><a href="${allRunningBacks}">All Running Backs</a></li> 
                              
        </ul>
    </nav>