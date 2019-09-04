<%@ page import="psg254.DomainValue" %>



<div class="fieldcontain ${hasErrors(bean: domainValueInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="domainValue.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" required="" value="${domainValueInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: domainValueInstance, field: 'defaultEndTime', 'error')} required">
	<label for="defaultEndTime">
		<g:message code="domainValue.defaultEndTime.label" default="Default End Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="defaultEndTime" precision="day"  value="${domainValueInstance?.defaultEndTime}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: domainValueInstance, field: 'defaultStartTime', 'error')} required">
	<label for="defaultStartTime">
		<g:message code="domainValue.defaultStartTime.label" default="Default Start Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="defaultStartTime" precision="day"  value="${domainValueInstance?.defaultStartTime}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: domainValueInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="domainValue.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${domainValueInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: domainValueInstance, field: 'effectiveDate', 'error')} required">
	<label for="effectiveDate">
		<g:message code="domainValue.effectiveDate.label" default="Effective Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="effectiveDate" precision="day"  value="${domainValueInstance?.effectiveDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: domainValueInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="domainValue.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${domainValueInstance?.endDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: domainValueInstance, field: 'narrative', 'error')} required">
	<label for="narrative">
		<g:message code="domainValue.narrative.label" default="Narrative" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="narrative" required="" value="${domainValueInstance?.narrative}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: domainValueInstance, field: 'sortOrder', 'error')} required">
	<label for="sortOrder">
		<g:message code="domainValue.sortOrder.label" default="Sort Order" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="sortOrder" type="number" value="${domainValueInstance.sortOrder}" required=""/>

</div>

