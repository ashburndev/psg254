
<%@ page import="psg254.EventTimeSlotType" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'eventTimeSlotType.label', default: 'EventTimeSlotType')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-eventTimeSlotType" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-eventTimeSlotType" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list eventTimeSlotType">
			
				<g:if test="${eventTimeSlotTypeInstance?.code}">
				<li class="fieldcontain">
					<span id="code-label" class="property-label"><g:message code="eventTimeSlotType.code.label" default="Code" /></span>
					
						<span class="property-value" aria-labelledby="code-label"><g:fieldValue bean="${eventTimeSlotTypeInstance}" field="code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventTimeSlotTypeInstance?.defaultEndTime}">
				<li class="fieldcontain">
					<span id="defaultEndTime-label" class="property-label"><g:message code="eventTimeSlotType.defaultEndTime.label" default="Default End Time" /></span>
					
						<span class="property-value" aria-labelledby="defaultEndTime-label"><g:formatDate date="${eventTimeSlotTypeInstance?.defaultEndTime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventTimeSlotTypeInstance?.defaultStartTime}">
				<li class="fieldcontain">
					<span id="defaultStartTime-label" class="property-label"><g:message code="eventTimeSlotType.defaultStartTime.label" default="Default Start Time" /></span>
					
						<span class="property-value" aria-labelledby="defaultStartTime-label"><g:formatDate date="${eventTimeSlotTypeInstance?.defaultStartTime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventTimeSlotTypeInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="eventTimeSlotType.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${eventTimeSlotTypeInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventTimeSlotTypeInstance?.effectiveDate}">
				<li class="fieldcontain">
					<span id="effectiveDate-label" class="property-label"><g:message code="eventTimeSlotType.effectiveDate.label" default="Effective Date" /></span>
					
						<span class="property-value" aria-labelledby="effectiveDate-label"><g:formatDate date="${eventTimeSlotTypeInstance?.effectiveDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventTimeSlotTypeInstance?.endDate}">
				<li class="fieldcontain">
					<span id="endDate-label" class="property-label"><g:message code="eventTimeSlotType.endDate.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="endDate-label"><g:formatDate date="${eventTimeSlotTypeInstance?.endDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventTimeSlotTypeInstance?.sortOrder}">
				<li class="fieldcontain">
					<span id="sortOrder-label" class="property-label"><g:message code="eventTimeSlotType.sortOrder.label" default="Sort Order" /></span>
					
						<span class="property-value" aria-labelledby="sortOrder-label"><g:fieldValue bean="${eventTimeSlotTypeInstance}" field="sortOrder"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:eventTimeSlotTypeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${eventTimeSlotTypeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
