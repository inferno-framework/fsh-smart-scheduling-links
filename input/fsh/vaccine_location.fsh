Alias: CPS = http://hl7.org/fhir/contact-point-system

Profile: VaccineLocation
Parent: Location
Id: vaccine-location
* name 1..
* telecom 1..*
* telecom.system 1..
* telecom.system from SMARTTelecomSystem (required)
* telecom.value 1..
* address only VaccineAddress
* identifier.system 1..1
* identifier.value 1..1

ValueSet: SMARTTelecomSystem
Id: smart-telecom-system
* include CPS#phone
* include CPS#url