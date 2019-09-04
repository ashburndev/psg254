
<%@ page import="psg254.DomainValue" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'domainValue.label', default: 'DomainValue')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-domainValue" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-domainValue" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="code" title="${message(code: 'domainValue.code.label', default: 'Code')}" />
					
						<g:sortableColumn property="defaultEndTime" title="${message(code: 'domainValue.defaultEndTime.label', default: 'Default End Time')}" />
					
						<g:sortableColumn property="defaultStartTime" title="${message(code: 'domainValue.defaultStartTime.label', default: 'Default Start Time')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'domainValue.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="effectiveDate" title="${message(code: 'domainValue.effectiveDate.label', default: 'Effective Date')}" />
					
						<g:sortableColumn property="endDate" title="${message(code: 'domainValue.endDate.label', default: 'End Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${domainValueInstanceList}" status="i" var="domainValueInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${domainValueInstance.id}">${fieldValue(bean: domainValueInstance, field: "code")}</g:link></td>
					
						<td><g:formatDate date="${domainValueInstance.defaultEndTime}" /></td>
					
						<td><g:formatDate date="${domainValueInstance.defaultStartTime}" /></td>
					
						<td>${fieldValue(bean: domainValueInstance, field: "description")}</td>
					
						<td><g:formatDate date="${domainValueInstance.effectiveDate}" /></td>
					
						<td><g:formatDate date="${domainValueInstance.endDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${domainValueInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
