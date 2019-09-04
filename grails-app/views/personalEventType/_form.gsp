<%@ page import="psg254.PersonalEventType" %>



<div class="fieldcontain ${hasErrors(bean: personalEventTypeInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="personalEventType.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" required="" value="${personalEventTypeInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personalEventTypeInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="personalEventType.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${personalEventTypeInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personalEventTypeInstance, field: 'effectiveDate', 'error')} required">
	<label for="effectiveDate">
		<g:message code="personalEventType.effectiveDate.label" default="Effective Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="effectiveDate" precision="day"  value="${personalEventTypeInstance?.effectiveDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: personalEventTypeInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="personalEventType.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${personalEventTypeInstance?.endDate}"  />

</div>

