<%@ page import="psg254.EventTimeSlotType" %>



<div class="fieldcontain ${hasErrors(bean: eventTimeSlotTypeInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="eventTimeSlotType.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" required="" value="${eventTimeSlotTypeInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventTimeSlotTypeInstance, field: 'defaultEndTime', 'error')} required">
	<label for="defaultEndTime">
		<g:message code="eventTimeSlotType.defaultEndTime.label" default="Default End Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="defaultEndTime" precision="day"  value="${eventTimeSlotTypeInstance?.defaultEndTime}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: eventTimeSlotTypeInstance, field: 'defaultStartTime', 'error')} required">
	<label for="defaultStartTime">
		<g:message code="eventTimeSlotType.defaultStartTime.label" default="Default Start Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="defaultStartTime" precision="day"  value="${eventTimeSlotTypeInstance?.defaultStartTime}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: eventTimeSlotTypeInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="eventTimeSlotType.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${eventTimeSlotTypeInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventTimeSlotTypeInstance, field: 'effectiveDate', 'error')} required">
	<label for="effectiveDate">
		<g:message code="eventTimeSlotType.effectiveDate.label" default="Effective Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="effectiveDate" precision="day"  value="${eventTimeSlotTypeInstance?.effectiveDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: eventTimeSlotTypeInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="eventTimeSlotType.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${eventTimeSlotTypeInstance?.endDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: eventTimeSlotTypeInstance, field: 'sortOrder', 'error')} required">
	<label for="sortOrder">
		<g:message code="eventTimeSlotType.sortOrder.label" default="Sort Order" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="sortOrder" type="number" value="${eventTimeSlotTypeInstance.sortOrder}" required=""/>

</div>

