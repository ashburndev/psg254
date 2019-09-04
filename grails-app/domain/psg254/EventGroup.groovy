package psg254

class EventGroup {
	
    Long id
    Date startDate
    Date endDate

    static mapping = {
        table name: "EVENT_GROUPS"
        // id name: "PERS_ID"
    }

    static constraints = {
    }
}
