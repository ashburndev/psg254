
<%@ page import="psg254.EventTimeSlotType" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'eventTimeSlotType.label', default: 'EventTimeSlotType')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-eventTimeSlotType" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-eventTimeSlotType" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="code" title="${message(code: 'eventTimeSlotType.code.label', default: 'Code')}" />
					
						<g:sortableColumn property="defaultEndTime" title="${message(code: 'eventTimeSlotType.defaultEndTime.label', default: 'Default End Time')}" />
					
						<g:sortableColumn property="defaultStartTime" title="${message(code: 'eventTimeSlotType.defaultStartTime.label', default: 'Default Start Time')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'eventTimeSlotType.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="effectiveDate" title="${message(code: 'eventTimeSlotType.effectiveDate.label', default: 'Effective Date')}" />
					
						<g:sortableColumn property="endDate" title="${message(code: 'eventTimeSlotType.endDate.label', default: 'End Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${eventTimeSlotTypeInstanceList}" status="i" var="eventTimeSlotTypeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${eventTimeSlotTypeInstance.id}">${fieldValue(bean: eventTimeSlotTypeInstance, field: "code")}</g:link></td>
					
						<td><g:formatDate date="${eventTimeSlotTypeInstance.defaultEndTime}" /></td>
					
						<td><g:formatDate date="${eventTimeSlotTypeInstance.defaultStartTime}" /></td>
					
						<td>${fieldValue(bean: eventTimeSlotTypeInstance, field: "description")}</td>
					
						<td><g:formatDate date="${eventTimeSlotTypeInstance.effectiveDate}" /></td>
					
						<td><g:formatDate date="${eventTimeSlotTypeInstance.endDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${eventTimeSlotTypeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
