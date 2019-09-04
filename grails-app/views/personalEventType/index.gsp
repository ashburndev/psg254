
<%@ page import="psg254.PersonalEventType" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personalEventType.label', default: 'PersonalEventType')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-personalEventType" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-personalEventType" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="code" title="${message(code: 'personalEventType.code.label', default: 'Code')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'personalEventType.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="effectiveDate" title="${message(code: 'personalEventType.effectiveDate.label', default: 'Effective Date')}" />
					
						<g:sortableColumn property="endDate" title="${message(code: 'personalEventType.endDate.label', default: 'End Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${personalEventTypeInstanceList}" status="i" var="personalEventTypeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${personalEventTypeInstance.id}">${fieldValue(bean: personalEventTypeInstance, field: "code")}</g:link></td>
					
						<td>${fieldValue(bean: personalEventTypeInstance, field: "description")}</td>
					
						<td><g:formatDate date="${personalEventTypeInstance.effectiveDate}" /></td>
					
						<td><g:formatDate date="${personalEventTypeInstance.endDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${personalEventTypeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
