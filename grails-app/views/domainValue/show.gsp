
<%@ page import="psg254.DomainValue" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'domainValue.label', default: 'DomainValue')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-domainValue" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-domainValue" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list domainValue">
			
				<g:if test="${domainValueInstance?.code}">
				<li class="fieldcontain">
					<span id="code-label" class="property-label"><g:message code="domainValue.code.label" default="Code" /></span>
					
						<span class="property-value" aria-labelledby="code-label"><g:fieldValue bean="${domainValueInstance}" field="code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${domainValueInstance?.defaultEndTime}">
				<li class="fieldcontain">
					<span id="defaultEndTime-label" class="property-label"><g:message code="domainValue.defaultEndTime.label" default="Default End Time" /></span>
					
						<span class="property-value" aria-labelledby="defaultEndTime-label"><g:formatDate date="${domainValueInstance?.defaultEndTime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${domainValueInstance?.defaultStartTime}">
				<li class="fieldcontain">
					<span id="defaultStartTime-label" class="property-label"><g:message code="domainValue.defaultStartTime.label" default="Default Start Time" /></span>
					
						<span class="property-value" aria-labelledby="defaultStartTime-label"><g:formatDate date="${domainValueInstance?.defaultStartTime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${domainValueInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="domainValue.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${domainValueInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${domainValueInstance?.effectiveDate}">
				<li class="fieldcontain">
					<span id="effectiveDate-label" class="property-label"><g:message code="domainValue.effectiveDate.label" default="Effective Date" /></span>
					
						<span class="property-value" aria-labelledby="effectiveDate-label"><g:formatDate date="${domainValueInstance?.effectiveDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${domainValueInstance?.endDate}">
				<li class="fieldcontain">
					<span id="endDate-label" class="property-label"><g:message code="domainValue.endDate.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="endDate-label"><g:formatDate date="${domainValueInstance?.endDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${domainValueInstance?.narrative}">
				<li class="fieldcontain">
					<span id="narrative-label" class="property-label"><g:message code="domainValue.narrative.label" default="Narrative" /></span>
					
						<span class="property-value" aria-labelledby="narrative-label"><g:fieldValue bean="${domainValueInstance}" field="narrative"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${domainValueInstance?.sortOrder}">
				<li class="fieldcontain">
					<span id="sortOrder-label" class="property-label"><g:message code="domainValue.sortOrder.label" default="Sort Order" /></span>
					
						<span class="property-value" aria-labelledby="sortOrder-label"><g:fieldValue bean="${domainValueInstance}" field="sortOrder"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:domainValueInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${domainValueInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
