<html>
	<head>
		<meta name="layout" content="main">		
		<title>Talks add</title>
	</head>
	<body>
		<div>
			<g:form name="addTalk" method="post" mapping="addTalk">
				<p><label>Talk's name: </label><input type="text" name="name" /></p>
				<p><label>Date of talk: </label><input type="text" name="talkDate" /></p>
				<p><label>Time of talk: </label><input type="text" name="talkTime" /></p>
				<p><label>Speaker's name: </label>
					<g:select name="speakerId" from="${speakerList}"  optionKey="id" optionValue="name"></g:select>
				</p>
				<p><input type="submit" name="send" value="Send" /></p>
			</g:form>
		</div>
	</body>
</html>
