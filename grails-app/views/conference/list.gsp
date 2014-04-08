<html>
	<head>
		<meta name="layout" content="main">		
		<title>Conferences list</title>
	</head>
	<body>
		<g:each var="conference" in="${conferenceList}">
			<div>
				<g:link mapping="descriptionConference" params="[id:conference.id]">${conference.id} ${conference.name}</g:link>
			</div>
		</g:each>
		<p><g:link mapping="addConference">Add new conference</g:link>	</p>
		<p><g:link mapping="index">Home</g:link></p>
	</body>
</html>
