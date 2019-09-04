import psg254.BatchEvent
import psg254.BatchEventMember
import psg254.DomainValue
import psg254.EventGroup
import psg254.EventTimeSlotType
import psg254.Person
import psg254.PersonalEventType
import psg254.SiteCategory

class BootStrap {

	def init = { servletContext ->
		println "Person.count() = ${Person.count()}"
		println "BatchEvent.count() = ${BatchEvent.count()}"
		println "BatchEventMember.count() = ${BatchEventMember.count()}"
		println "DomainValue.count() = ${DomainValue.count()}"
		println "EventGroup.count() = ${EventGroup.count()}"
		println "EventTimeSlotType.count() = ${EventTimeSlotType.count()}"
		println "Person.count() = ${Person.count()}"
		println "PersonalEventType.count() = ${PersonalEventType.count()}"
		println "SiteCategory.count() = ${SiteCategory.count()}"

		if (Person.count() == 0) {
			new Person(persFirstName:"George", persLastName:"Washington", persEmployeeNumber:"2000001").save()
			new Person(persFirstName:"John", persLastName:"Adams", persEmployeeNumber:"2000002").save()
			new Person(persFirstName:"Thomas", persLastName:"Jefferson", persEmployeeNumber:"2000003").save()
		}
		if (BatchEvent.count() == 0) {
			Date now = new Date();
			new BatchEvent(eventDescription:"Christmas 2019", eventDate:now,
			submitterEmail:"dph@me.com", createdBy:"HOLBERTD", createDate:now).save()
			new BatchEvent(eventDescription:"Thanksgiving 2019", eventDate:now, 
			submitterEmail:"dph@me.com", createdBy:"HOLBERTD", createDate:now).save()
		}
	}

	def destroy = {
	}
}
