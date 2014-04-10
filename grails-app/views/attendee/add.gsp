<html>
	<head>
		<meta name="layout" content="main">		
		<title>Attendee add</title>
	</head>
	<body>
		<div>
			<g:form name="addAttendee" method="post" mapping="addAttendee">
				<p><label>Name: </label><input type="text" name="name" /></p>
				<p><label>Talk's name: </label>
					<g:select name="talksId" from="${talkList}"  optionKey="id" optionValue="name"></g:select>
				</p>
				<p><input type="submit" name="send" value="Send" /></p>
			</g:form>
		</div>
	</body>
</html>

