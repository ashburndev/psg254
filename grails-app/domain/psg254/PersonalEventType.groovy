package psg254

class PersonalEventType {
	
    Long id
    String code
    String description
    Date effectiveDate
    Date endDate

    static mapping = {
        table name: "PERSONAL_EVENT_TYPES"
        // id name: "PERS_ID"
    }

    static constraints = {
    }
    
    String toString() {
        description + ' (' + code + ')'
    }
}
