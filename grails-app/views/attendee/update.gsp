<html>
    <head>
        <meta name="layout" content="main">
        <title>Attendee description</title>
    </head>
    <body>
        <div>
            <p>Attendee's name: ${attendee.name}</p>
            
            <br />
            
            <p>
                <g:form name="updateAttendee" method="post" mapping="updateAttendee">
                    Talk's name: 
                    <select name="talkListIds" multiple="multiple">
                        <g:each var="talkItem" in="${talklist}">
                            <option 
                                value="${talkItem.id}"
                                
                                <g:if test="${talkItem in attendee.talks}">
                                    selected="selected"
                                </g:if>
                            
                            >${talkItem.name}</option>
                        </g:each>
                    </select>
                    <input type="hidden" name="id" value="${attendee.id}"/>
                    <p><input type="submit" name="update" value="Send" /></p>
                </g:form>
                
            </p>
            
            <br />
                    
            <p><g:link mapping="deleteAttendee" params="[id:attendee.id]">Delete attendee</g:link></p>
            <p><g:link mapping="listAttendees">Return</g:link></p>
        </div>
    </body>
</html>
