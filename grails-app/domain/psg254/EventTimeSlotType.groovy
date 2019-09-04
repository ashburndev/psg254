package psg254

class EventTimeSlotType {
	
    Long id
    String code
    String description
    Integer sortOrder
    Date defaultStartTime
    Date defaultEndTime
    Date effectiveDate
    Date endDate

    static mapping = {
        table name: "EVENT_TIME_SLOT_TYPES"
        // id name: "PERS_ID"
    }

    static constraints = {
    }

    String toString() {
        description + ' (' + code + ')'
    }
}
