<html>
    <head>
        <meta name="layout" content="main">
        <title>Room list</title>
    </head>
    <body>
        <g:each var="room" in="${roomList}">
            <div>
                <g:link mapping="descriptionList" params="[id:room.id]">${room.id} ${room.name}</g:link>
            </div>
        </g:each>
        <p><g:link mapping="index">Home</g:link></p>
    </body>
</html>
