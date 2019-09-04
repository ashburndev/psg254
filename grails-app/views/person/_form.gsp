<%@ page import="psg254.Person" %>



<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'persEmployeeNumber', 'error')} required">
	<label for="persEmployeeNumber">
		<g:message code="person.persEmployeeNumber.label" default="Pers Employee Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="persEmployeeNumber" maxlength="7" required="" value="${personInstance?.persEmployeeNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'persFirstName', 'error')} required">
	<label for="persFirstName">
		<g:message code="person.persFirstName.label" default="Pers First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="persFirstName" maxlength="20" required="" value="${personInstance?.persFirstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'persLastName', 'error')} required">
	<label for="persLastName">
		<g:message code="person.persLastName.label" default="Pers Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="persLastName" maxlength="50" required="" value="${personInstance?.persLastName}"/>

</div>

