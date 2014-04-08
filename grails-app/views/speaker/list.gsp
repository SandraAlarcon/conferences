<html>
	<head>
		<meta name="layout" content="main">		
		<title>Speakers list</title>
	</head>
	<body>
		<g:each var="speaker" in="${speakerList}">
			<div>
				<g:link mapping="descriptionSpeaker" params="[id:speaker.id]">${speaker.id} ${speaker.name}</g:link>
			</div>
		</g:each>
		<p><g:link mapping="addSpeaker">Add new speaker</g:link>	</p>
		<p><g:link mapping="index">Home</g:link></p>
	</body>
</html>
