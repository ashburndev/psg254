
<%@ page import="psg254.SiteCategory" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'siteCategory.label', default: 'SiteCategory')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-siteCategory" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-siteCategory" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list siteCategory">
			
				<g:if test="${siteCategoryInstance?.code}">
				<li class="fieldcontain">
					<span id="code-label" class="property-label"><g:message code="siteCategory.code.label" default="Code" /></span>
					
						<span class="property-value" aria-labelledby="code-label"><g:fieldValue bean="${siteCategoryInstance}" field="code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteCategoryInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="siteCategory.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${siteCategoryInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteCategoryInstance?.effectiveDate}">
				<li class="fieldcontain">
					<span id="effectiveDate-label" class="property-label"><g:message code="siteCategory.effectiveDate.label" default="Effective Date" /></span>
					
						<span class="property-value" aria-labelledby="effectiveDate-label"><g:formatDate date="${siteCategoryInstance?.effectiveDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteCategoryInstance?.endDate}">
				<li class="fieldcontain">
					<span id="endDate-label" class="property-label"><g:message code="siteCategory.endDate.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="endDate-label"><g:formatDate date="${siteCategoryInstance?.endDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:siteCategoryInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${siteCategoryInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
