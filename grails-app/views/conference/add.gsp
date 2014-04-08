<html>
	<head>
		<meta name="layout" content="main">		
		<title>Conferences add</title>
	</head>
	<body>
		<div>
			<g:form name="add" method="post" mapping="addConference">
				<p><label>Name: </label><input type="text" name="name" /></p>
				<p><label>Start date: </label><input type="text" name="startDate" /></p>
				<p><label>End date: </label><input type="text" name="endDate" /></p>
				<p><input type="submit" name="send" value="Send" /></p>
			</g:form>
		</div>
	</body>
</html>
