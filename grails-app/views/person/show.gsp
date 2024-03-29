
<%@ page import="psg254.Person" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-person" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-person" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list person">
			
				<g:if test="${personInstance?.persEmployeeNumber}">
				<li class="fieldcontain">
					<span id="persEmployeeNumber-label" class="property-label"><g:message code="person.persEmployeeNumber.label" default="Pers Employee Number" /></span>
					
						<span class="property-value" aria-labelledby="persEmployeeNumber-label"><g:fieldValue bean="${personInstance}" field="persEmployeeNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.persFirstName}">
				<li class="fieldcontain">
					<span id="persFirstName-label" class="property-label"><g:message code="person.persFirstName.label" default="Pers First Name" /></span>
					
						<span class="property-value" aria-labelledby="persFirstName-label"><g:fieldValue bean="${personInstance}" field="persFirstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.persLastName}">
				<li class="fieldcontain">
					<span id="persLastName-label" class="property-label"><g:message code="person.persLastName.label" default="Pers Last Name" /></span>
					
						<span class="property-value" aria-labelledby="persLastName-label"><g:fieldValue bean="${personInstance}" field="persLastName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:personInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${personInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
