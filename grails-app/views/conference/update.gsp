<html>
	<head>
		<meta name="layout" content="main">		
		<title>Conferences update</title>
	</head>
	<body>
		<div>
			<g:form name="add" method="post" mapping="updateConference">
				<p><label>Name: </label><input type="text" name="name" value="${conference.name}"/></p>
				<p><label>Start date: </label><input type="text" name="startDate" value="${conference.startDate}"/></p>
				<p><label>End date: </label><input type="text" name="endDate" value="${conference.endDate}"/></p>
				<input type="hidden" name="id" value="${conference.id}"/>
				<p><input type="submit" name="update" value="Send" /></p>
			</g:form>
		</div>
	</body>
</html>
