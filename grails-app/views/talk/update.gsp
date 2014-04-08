<html>
	<head>
		<meta name="layout" content="main">		
		<title>Talks update</title>
	</head>
	<body>
		<div>
			<g:form name="updateTalk" method="post" mapping="updateTalk">
				<p><label>Talk's name: </label><input type="text" name="name" value="${talk.name}"/></p>
				<p><label>Date of talk: </label><input type="text" name="talkDate" value="${talk.talkDate}"/></p>
				<p><label>Time of talk: </label><input type="text" name="talkTime" value="${talk.talkTime}"/></p>
				<p><label>Speaker's name: </label>
					<g:select name="speakerId" from="${speakerList}"  optionKey="id" optionValue="name"  value="${talk.speaker.id}"></g:select>
				</p>
				<input type="hidden" name="id" value="${talk.id}"/>
				<p><input type="submit" name="update" value="Send" /></p>
			</g:form>
		</div>
	</body>
</html>
