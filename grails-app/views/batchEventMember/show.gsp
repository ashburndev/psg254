
<%@ page import="psg254.BatchEventMember" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'batchEventMember.label', default: 'BatchEventMember')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-batchEventMember" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-batchEventMember" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list batchEventMember">
			
				<g:if test="${batchEventMemberInstance?.processedDate}">
				<li class="fieldcontain">
					<span id="processedDate-label" class="property-label"><g:message code="batchEventMember.processedDate.label" default="Processed Date" /></span>
					
						<span class="property-value" aria-labelledby="processedDate-label"><g:formatDate date="${batchEventMemberInstance?.processedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${batchEventMemberInstance?.processedSuccessfullyInd}">
				<li class="fieldcontain">
					<span id="processedSuccessfullyInd-label" class="property-label"><g:message code="batchEventMember.processedSuccessfullyInd.label" default="Processed Successfully Ind" /></span>
					
						<span class="property-value" aria-labelledby="processedSuccessfullyInd-label"><g:formatBoolean boolean="${batchEventMemberInstance?.processedSuccessfullyInd}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${batchEventMemberInstance?.statusMessage}">
				<li class="fieldcontain">
					<span id="statusMessage-label" class="property-label"><g:message code="batchEventMember.statusMessage.label" default="Status Message" /></span>
					
						<span class="property-value" aria-labelledby="statusMessage-label"><g:fieldValue bean="${batchEventMemberInstance}" field="statusMessage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${batchEventMemberInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="batchEventMember.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:fieldValue bean="${batchEventMemberInstance}" field="createdBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${batchEventMemberInstance?.createDate}">
				<li class="fieldcontain">
					<span id="createDate-label" class="property-label"><g:message code="batchEventMember.createDate.label" default="Create Date" /></span>
					
						<span class="property-value" aria-labelledby="createDate-label"><g:formatDate date="${batchEventMemberInstance?.createDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${batchEventMemberInstance?.updatedBy}">
				<li class="fieldcontain">
					<span id="updatedBy-label" class="property-label"><g:message code="batchEventMember.updatedBy.label" default="Updated By" /></span>
					
						<span class="property-value" aria-labelledby="updatedBy-label"><g:fieldValue bean="${batchEventMemberInstance}" field="updatedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${batchEventMemberInstance?.updateDate}">
				<li class="fieldcontain">
					<span id="updateDate-label" class="property-label"><g:message code="batchEventMember.updateDate.label" default="Update Date" /></span>
					
						<span class="property-value" aria-labelledby="updateDate-label"><g:formatDate date="${batchEventMemberInstance?.updateDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${batchEventMemberInstance?.batchEvent}">
				<li class="fieldcontain">
					<span id="batchEvent-label" class="property-label"><g:message code="batchEventMember.batchEvent.label" default="Batch Event" /></span>
					
						<span class="property-value" aria-labelledby="batchEvent-label"><g:link controller="batchEvent" action="show" id="${batchEventMemberInstance?.batchEvent?.id}">${batchEventMemberInstance?.batchEvent?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${batchEventMemberInstance?.person}">
				<li class="fieldcontain">
					<span id="person-label" class="property-label"><g:message code="batchEventMember.person.label" default="Person" /></span>
					
						<span class="property-value" aria-labelledby="person-label"><g:link controller="person" action="show" id="${batchEventMemberInstance?.person?.id}">${batchEventMemberInstance?.person?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:batchEventMemberInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${batchEventMemberInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
