package psg254

class BatchEvent {

    Long id
    String eventDescription
    String submitterEmail
    Date eventDate

    String createdBy
    Date createDate
    String updatedBy
    Date updateDate

    static mapping = {
        table name: "BATCH_EVENTS"
        // id name: "PERS_ID"
    }

    static constraints = {
        eventDescription nullable: true, maxSize: 200
        submitterEmail nullable: true, maxSize: 50
        eventDate nullable: true
        createdBy nullable: true, maxSize: 30
        createDate nullable: true
        updatedBy nullable: true, maxSize: 30
        updateDate nullable: true
    }
	
	String toString() {
		eventDescription + ' ' + submitterEmail + ' (' + eventDate + ')'
	}
}
