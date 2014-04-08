<html>
	<head>
		<meta name="layout" content="main">		
		<title>Speaker description</title>
	</head>
	<body>
		<div>
			<p>Name: ${speaker.name}</p>
			<p>Date of birth: ${speaker.birthDate}</p>
			<p><ul>
				<g:each var="talk" in="${speaker.talks}">
					<li>Talk's name: <g:link mapping="descriptionTalk" params="[id:talk.id]">${talk.name}</g:link></li>
				</g:each>
			</ul></p>
			<p><g:link mapping="deleteSpeaker" params="[id:speaker.id]">Delete speaker</g:link></p>
			<p><g:link mapping="updateSpeaker" params="[id:speaker.id]">Update speaker</g:link></p>
			<p><g:link mapping="listSpeakers">Return</g:link></p>
		</div>
	</body>
</html>
