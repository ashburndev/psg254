<%@ page import="psg254.BatchEvent" %>



<div class="fieldcontain ${hasErrors(bean: batchEventInstance, field: 'eventDescription', 'error')} ">
	<label for="eventDescription">
		<g:message code="batchEvent.eventDescription.label" default="Event Description" />
		
	</label>
	<g:textField name="eventDescription" maxlength="200" value="${batchEventInstance?.eventDescription}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: batchEventInstance, field: 'submitterEmail', 'error')} ">
	<label for="submitterEmail">
		<g:message code="batchEvent.submitterEmail.label" default="Submitter Email" />
		
	</label>
	<g:textField name="submitterEmail" maxlength="50" value="${batchEventInstance?.submitterEmail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: batchEventInstance, field: 'eventDate', 'error')} ">
	<label for="eventDate">
		<g:message code="batchEvent.eventDate.label" default="Event Date" />
		
	</label>
	<g:datePicker name="eventDate" precision="day"  value="${batchEventInstance?.eventDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: batchEventInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="batchEvent.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="30" value="${batchEventInstance?.createdBy}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: batchEventInstance, field: 'createDate', 'error')} ">
	<label for="createDate">
		<g:message code="batchEvent.createDate.label" default="Create Date" />
		
	</label>
	<g:datePicker name="createDate" precision="day"  value="${batchEventInstance?.createDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: batchEventInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="batchEvent.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="30" value="${batchEventInstance?.updatedBy}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: batchEventInstance, field: 'updateDate', 'error')} ">
	<label for="updateDate">
		<g:message code="batchEvent.updateDate.label" default="Update Date" />
		
	</label>
	<g:datePicker name="updateDate" precision="day"  value="${batchEventInstance?.updateDate}" default="none" noSelection="['': '']" />

</div>

