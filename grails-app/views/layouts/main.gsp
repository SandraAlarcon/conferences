<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html assetPathlang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title><g:layoutTitle default="Grails"/></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="styleshet" href="${resource (dir:'css', file:'style.css')}" type="text/css"/>
        <asset:javascript src="application.js"/>
        <g:layoutHead/>
    </head>
    <body>
        <div id="grailsLogo" role="banner"><g:link mapping="index"><asset:image src="grails_logo.png" alt="Grails"/></g:link></div>
        <div>
            <g:link mapping="listConferences">Conferences</g:link> |
            <g:link mapping="listSpeakers">Speakers</g:link> |
            <g:link mapping="listTalks">Talks</g:link> |
            <g:link mapping="listAttendees">Attendees</g:link> |
            <g:link mapping="listRooms">Rooms</g:link>
        </div>
        <g:if test="${flash.message}">
        <div>
            ${flash.message}
        </div>
        </g:if>

        <g:if test="${flash.error}">
        <div>
            ERROR: ${flash.error}
        </div>
        </g:if>

        <g:layoutBody/>
        <div class="footer" role="contentinfo"></div>
        <div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
    </body>
</html>
