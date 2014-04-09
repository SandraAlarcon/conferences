<html>
    <head>
        <meta name="layout" content="main">
        <title>Attendee list</title>
    </head>
    <body>

        <g:each var="attendee" in="${attendeeList}">
            <div>
                <g:link mapping="descriptionAttendee" params="[id:attendee.id]">${attendee.id} ${attendee.name}</g:link>
            </div>
        </g:each>
        <p><g:link mapping="addAttendee">Add new attendee</g:link></p>
        <p><g:link mapping="index">Home</g:link></p>
    </body>
</html>
