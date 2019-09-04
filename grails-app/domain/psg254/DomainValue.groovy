package psg254

class DomainValue {
    Long id
    String code
    String description
    Integer sortOrder
    Date defaultStartTime
    Date defaultEndTime
    Date effectiveDate
    Date endDate
    String narrative

    static mapping = {
        table name: "DOMAIN_VALUES"
        // id name: "PERS_ID"
    }

    static constraints = {
    }

    String toString() {
        description + ' (' + code + ')'
    }
}
