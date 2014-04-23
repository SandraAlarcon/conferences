<html>
    <head>
        <meta name="layout" content="main">
        <title>Room description</title>
    </head>
    <body>
        <div>
            <p>Room's name: ${room.name}</p>
            <p><g:link mapping="deleteRoom" params="[id:room.id]">Delete room</g:link></p>
            <p><g:link mapping="listRooms">Return</g:link></p>
        </div>
    </body>
</html>
