<html>
	<head>
		<meta name="layout" content="main">		
		<title>Talks list</title>
	</head>
	<body>
		<g:each var="talk" in="${talklist}">
			<div>
				<g:link mapping="descriptionTalk" params="[id:talk.id]">${talk.id} ${talk.name}</g:link>
			</div>
		</g:each>
		<p><g:link mapping="addTalk">Add new talk</g:link>	</p>
		<p><g:link mapping="index">Home</g:link></p>
	</body>
</html>
