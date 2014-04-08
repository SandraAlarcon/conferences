<html>
	<head>
		<meta name="layout" content="main">		
		<title>Speakers update</title>
	</head>
	<body>
		<div>
			<g:form name="updateSpeaker" method="post" mapping="updateSpeaker">
				<p><label>Name: </label><input type="text" name="name" value="${speaker.name}"/></p>
				<p><label>Date of birth: </label><input type="text" name="birthDate" value="${speaker.birthDate}"/></p>
				<input type="hidden" name="id" value="${speaker.id}"/>
				<p><input type="submit" name="update" value="Send" /></p>
			</g:form>
		</div>
	</body>
</html>

