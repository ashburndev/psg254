<%@ page import="psg254.BatchEventMember" %>



<div class="fieldcontain ${hasErrors(bean: batchEventMemberInstance, field: 'processedDate', 'error')} ">
	<label for="processedDate">
		<g:message code="batchEventMember.processedDate.label" default="Processed Date" />
		
	</label>
	<g:datePicker name="processedDate" precision="day"  value="${batchEventMemberInstance?.processedDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: batchEventMemberInstance, field: 'processedSuccessfullyInd', 'error')} ">
	<label for="processedSuccessfullyInd">
		<g:message code="batchEventMember.processedSuccessfullyInd.label" default="Processed Successfully Ind" />
		
	</label>
	<g:checkBox name="processedSuccessfullyInd" value="${batchEventMemberInstance?.processedSuccessfullyInd}" />

</div>

<div class="fieldcontain ${hasErrors(bean: batchEventMemberInstance, field: 'statusMessage', 'error')} ">
	<label for="statusMessage">
		<g:message code="batchEventMember.statusMessage.label" default="Status Message" />
		
	</label>
	<g:textField name="statusMessage" maxlength="150" value="${batchEventMemberInstance?.statusMessage}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: batchEventMemberInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="batchEventMember.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="30" value="${batchEventMemberInstance?.createdBy}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: batchEventMemberInstance, field: 'createDate', 'error')} ">
	<label for="createDate">
		<g:message code="batchEventMember.createDate.label" default="Create Date" />
		
	</label>
	<g:datePicker name="createDate" precision="day"  value="${batchEventMemberInstance?.createDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: batchEventMemberInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="batchEventMember.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="30" value="${batchEventMemberInstance?.updatedBy}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: batchEventMemberInstance, field: 'updateDate', 'error')} ">
	<label for="updateDate">
		<g:message code="batchEventMember.updateDate.label" default="Update Date" />
		
	</label>
	<g:datePicker name="updateDate" precision="day"  value="${batchEventMemberInstance?.updateDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: batchEventMemberInstance, field: 'batchEvent', 'error')} required">
	<label for="batchEvent">
		<g:message code="batchEventMember.batchEvent.label" default="Batch Event" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="batchEvent" name="batchEvent.id" from="${psg254.BatchEvent.list()}" optionKey="id" required="" value="${batchEventMemberInstance?.batchEvent?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: batchEventMemberInstance, field: 'person', 'error')} required">
	<label for="person">
		<g:message code="batchEventMember.person.label" default="Person" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="person" name="person.id" from="${psg254.Person.list()}" optionKey="id" required="" value="${batchEventMemberInstance?.person?.id}" class="many-to-one"/>

</div>

