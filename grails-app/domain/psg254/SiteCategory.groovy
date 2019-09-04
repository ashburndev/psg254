package psg254

class SiteCategory {
	
    Long id
    String code
    String description
    Date effectiveDate
    Date endDate

    static mapping = {
        table name: "SITE_CATEGORY"
        // id name: "PERS_ID"
    }

    static constraints = {
    }

    String toString() {
        description + ' (' + code + ')'
    }
}
