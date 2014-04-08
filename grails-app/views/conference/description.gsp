<html>
	<head>
		<meta name="layout" content="main">		
		<title>Conferences description</title>
	</head>
	<body>
		<div>
			<p>Name: ${conference.name}</p>
			<p>Start date: ${conference.startDate}</p>
			<p>End date: ${conference.endDate}</p>
			<p><g:link mapping="deleteConference" params="[id:conference.id]">Delete conference</g:link></p>
			<p><g:link mapping="updateConference" params="[id:conference.id]">Update conference</g:link></p>
			<p><g:link mapping="listConferences">Return</g:link></p>
		</div>
	</body>
</html>
