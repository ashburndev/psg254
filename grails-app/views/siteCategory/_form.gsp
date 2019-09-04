<%@ page import="psg254.SiteCategory" %>



<div class="fieldcontain ${hasErrors(bean: siteCategoryInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="siteCategory.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" required="" value="${siteCategoryInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: siteCategoryInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="siteCategory.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${siteCategoryInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: siteCategoryInstance, field: 'effectiveDate', 'error')} required">
	<label for="effectiveDate">
		<g:message code="siteCategory.effectiveDate.label" default="Effective Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="effectiveDate" precision="day"  value="${siteCategoryInstance?.effectiveDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: siteCategoryInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="siteCategory.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${siteCategoryInstance?.endDate}"  />

</div>

