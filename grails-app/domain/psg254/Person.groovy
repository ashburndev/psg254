package psg254

class Person {
	
    Long id
    String persEmployeeNumber
    String persFirstName
    String persLastName

    static mapping = {
        table name: "PERSONS"
        id column: "PERS_ID"
    }

    static constraints = {
        persEmployeeNumber nullable: false, blank: false, maxSize: 7
        persFirstName nullable: false, blank: false, maxSize: 20
        persLastName nullable: false, blank: false, maxSize: 50
    }

    String toString() {
        persFirstName + ' ' + persLastName + ' (' + persEmployeeNumber + ')'
    }
}
