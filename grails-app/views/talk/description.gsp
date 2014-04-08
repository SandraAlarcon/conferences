<html>
	<head>
		<meta name="layout" content="main">		
		<title>Talk description</title>
	</head>
	<body>
		<div>
			<p>Talk's name: ${talk.name}</p>
			<p>Date of talk: ${talk.talkDate}</p>
			<p>Time of talk: ${talk.talkTime}</p>
			<p>Speaker's name: <g:link mapping="descriptionSpeaker" params="[id:talk.speaker.id]">${talk.speaker.name}</g:link> </p>
			<p><g:link mapping="deleteTalk" params="[id:talk.id]">Delete talk</g:link></p>
			<p><g:link mapping="updateTalk" params="[id:talk.id]">Update talk</g:link></p>
			<p><g:link mapping="listTalks">Return</g:link></p>
		</div>
	</body>
</html>
