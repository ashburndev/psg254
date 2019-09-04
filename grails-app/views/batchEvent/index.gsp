
<%@ page import="psg254.BatchEvent" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'batchEvent.label', default: 'BatchEvent')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-batchEvent" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-batchEvent" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="eventDescription" title="${message(code: 'batchEvent.eventDescription.label', default: 'Event Description')}" />
					
						<g:sortableColumn property="submitterEmail" title="${message(code: 'batchEvent.submitterEmail.label', default: 'Submitter Email')}" />
					
						<g:sortableColumn property="eventDate" title="${message(code: 'batchEvent.eventDate.label', default: 'Event Date')}" />
					
						<g:sortableColumn property="createdBy" title="${message(code: 'batchEvent.createdBy.label', default: 'Created By')}" />
					
						<g:sortableColumn property="createDate" title="${message(code: 'batchEvent.createDate.label', default: 'Create Date')}" />
					
						<g:sortableColumn property="updatedBy" title="${message(code: 'batchEvent.updatedBy.label', default: 'Updated By')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${batchEventInstanceList}" status="i" var="batchEventInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${batchEventInstance.id}">${fieldValue(bean: batchEventInstance, field: "eventDescription")}</g:link></td>
					
						<td>${fieldValue(bean: batchEventInstance, field: "submitterEmail")}</td>
					
						<td><g:formatDate date="${batchEventInstance.eventDate}" /></td>
					
						<td>${fieldValue(bean: batchEventInstance, field: "createdBy")}</td>
					
						<td><g:formatDate date="${batchEventInstance.createDate}" /></td>
					
						<td>${fieldValue(bean: batchEventInstance, field: "updatedBy")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${batchEventInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
