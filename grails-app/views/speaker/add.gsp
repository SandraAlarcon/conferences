<html>
	<head>
		<meta name="layout" content="main">		
		<title>Speakers add</title>
	</head>
	<body>
		<div>
			<g:form name="addSpeaker" method="post" mapping="addSpeaker">
				<p><label>Name: </label><input type="text" name="name" /></p>
				<p><label>Date of birth: </label><input type="text" name="birthDate" /></p>
				<p><input type="submit" name="send" value="Send" /></p>
			</g:form>
		</div>
	</body>
</html>
