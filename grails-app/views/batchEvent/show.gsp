
<%@ page import="psg254.BatchEvent" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'batchEvent.label', default: 'BatchEvent')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-batchEvent" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-batchEvent" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list batchEvent">
			
				<g:if test="${batchEventInstance?.eventDescription}">
				<li class="fieldcontain">
					<span id="eventDescription-label" class="property-label"><g:message code="batchEvent.eventDescription.label" default="Event Description" /></span>
					
						<span class="property-value" aria-labelledby="eventDescription-label"><g:fieldValue bean="${batchEventInstance}" field="eventDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${batchEventInstance?.submitterEmail}">
				<li class="fieldcontain">
					<span id="submitterEmail-label" class="property-label"><g:message code="batchEvent.submitterEmail.label" default="Submitter Email" /></span>
					
						<span class="property-value" aria-labelledby="submitterEmail-label"><g:fieldValue bean="${batchEventInstance}" field="submitterEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${batchEventInstance?.eventDate}">
				<li class="fieldcontain">
					<span id="eventDate-label" class="property-label"><g:message code="batchEvent.eventDate.label" default="Event Date" /></span>
					
						<span class="property-value" aria-labelledby="eventDate-label"><g:formatDate date="${batchEventInstance?.eventDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${batchEventInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="batchEvent.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:fieldValue bean="${batchEventInstance}" field="createdBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${batchEventInstance?.createDate}">
				<li class="fieldcontain">
					<span id="createDate-label" class="property-label"><g:message code="batchEvent.createDate.label" default="Create Date" /></span>
					
						<span class="property-value" aria-labelledby="createDate-label"><g:formatDate date="${batchEventInstance?.createDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${batchEventInstance?.updatedBy}">
				<li class="fieldcontain">
					<span id="updatedBy-label" class="property-label"><g:message code="batchEvent.updatedBy.label" default="Updated By" /></span>
					
						<span class="property-value" aria-labelledby="updatedBy-label"><g:fieldValue bean="${batchEventInstance}" field="updatedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${batchEventInstance?.updateDate}">
				<li class="fieldcontain">
					<span id="updateDate-label" class="property-label"><g:message code="batchEvent.updateDate.label" default="Update Date" /></span>
					
						<span class="property-value" aria-labelledby="updateDate-label"><g:formatDate date="${batchEventInstance?.updateDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:batchEventInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${batchEventInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
