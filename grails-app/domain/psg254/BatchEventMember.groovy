package psg254

class BatchEventMember {

	Person person
	BatchEvent batchEvent
    Date processedDate
    Boolean processedSuccessfullyInd
    String statusMessage

    String createdBy
    Date createDate
    String updatedBy
    Date updateDate

    static mapping = {
        table name: "BATCH_EVENT_MEMBERS"
        // id name: "PERS_ID"
    }
	
	// static hasOne = [person: Person]

    static constraints = {
        processedDate nullable: true
        processedSuccessfullyInd nullable: true
        statusMessage nullable: true, maxSize: 150
        createdBy nullable: true, maxSize: 30
        createDate nullable: true
        updatedBy nullable: true, maxSize: 30
        updateDate nullable: true
    }
}