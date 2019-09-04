
<%@ page import="psg254.BatchEventMember" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'batchEventMember.label', default: 'BatchEventMember')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-batchEventMember" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-batchEventMember" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="processedDate" title="${message(code: 'batchEventMember.processedDate.label', default: 'Processed Date')}" />
					
						<g:sortableColumn property="processedSuccessfullyInd" title="${message(code: 'batchEventMember.processedSuccessfullyInd.label', default: 'Processed Successfully Ind')}" />
					
						<g:sortableColumn property="statusMessage" title="${message(code: 'batchEventMember.statusMessage.label', default: 'Status Message')}" />
					
						<g:sortableColumn property="createdBy" title="${message(code: 'batchEventMember.createdBy.label', default: 'Created By')}" />
					
						<g:sortableColumn property="createDate" title="${message(code: 'batchEventMember.createDate.label', default: 'Create Date')}" />
					
						<g:sortableColumn property="updatedBy" title="${message(code: 'batchEventMember.updatedBy.label', default: 'Updated By')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${batchEventMemberInstanceList}" status="i" var="batchEventMemberInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${batchEventMemberInstance.id}">${fieldValue(bean: batchEventMemberInstance, field: "processedDate")}</g:link></td>
					
						<td><g:formatBoolean boolean="${batchEventMemberInstance.processedSuccessfullyInd}" /></td>
					
						<td>${fieldValue(bean: batchEventMemberInstance, field: "statusMessage")}</td>
					
						<td>${fieldValue(bean: batchEventMemberInstance, field: "createdBy")}</td>
					
						<td><g:formatDate date="${batchEventMemberInstance.createDate}" /></td>
					
						<td>${fieldValue(bean: batchEventMemberInstance, field: "updatedBy")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${batchEventMemberInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
