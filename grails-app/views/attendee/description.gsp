<html>
    <head>
        <meta name="layout" content="main">
        <title>Attendee description</title>
    </head>
    <body>
        <div>
            <p>Attendee's name: ${attendee.name}</p>
            <p><ul>
				<g:each var="talk" in="${attendee.talks}">
					<li>Talk's name: <g:link mapping="descriptionTalk" params="[id:talk.id]">${talk.name}</g:link></li>
				</g:each>
			</ul></p>
            <p>Talk's name: <g:link mapping="descriptionTalk" params="[id:attendee.talk.id]">${attendee.talk.name}</g:link> </p>
            <p><g:link mapping="deleteAttendee" params="[id:attendee.id]">Delete attendee</g:link></p>
            <p><g:link mapping="listAttendees">Return</g:link></p>
        </div>
    </body>
</html>
