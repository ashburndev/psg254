<%@ page import="psg254.EventGroup" %>



<div class="fieldcontain ${hasErrors(bean: eventGroupInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="eventGroup.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${eventGroupInstance?.endDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: eventGroupInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="eventGroup.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${eventGroupInstance?.startDate}"  />

</div>

