Alias: $VaccineProduct = vaccine-product
Alias: $VaccineDoseNumber = vaccine-dose

Profile: VaccineSchedule
Parent: Schedule
Id: vaccine-schedule
* actor 1..1
* actor only Reference(Location)
* serviceType 1..
* serviceType ^slicing.discriminator.type = #profile
* serviceType ^slicing.discriminator.path = "$this"
* serviceType ^slicing.rules = #open
* serviceType ^slicing.description = "Slice based on whether the CodeableConcept has 'C19 Immunization Nature'"
* serviceType contains c19Service 1..
* serviceType[c19Service] only C19ServiceCodeableConcept
* extension contains
    $VaccineProduct named vaccineProduct 0..1 MS and
    $VaccineDoseNumber named vaccineDoseNumber 0..* MS

Extension: VaccineProduct
Id: vaccine-product
* value[x] only Coding
* valueCoding from http://hl7.org/fhir/sid/cvx

Extension: VaccineDoseNumber
Id: vaccine-dose
* value[x] only integer

Profile: C19ServiceCodeableConcept
Parent: CodeableConcept
Id: c19-service-codeable-concept
* coding ^slicing.discriminator.type = #pattern
* coding ^slicing.discriminator.path = "$this"
* coding ^slicing.rules = #open
* coding ^slicing.description = "Slice based on Coding"
* coding contains 
    immunizationAppointment 1..1 and
    c19ImmunizationAppointment 1..1
* coding[immunizationAppointment] ^patternCoding =  http://terminology.hl7.org/CodeSystem/service-type#57
* coding[c19ImmunizationAppointment] ^patternCoding = http://fhir-registry.smarthealthit.org/CodeSystem/service-type#covid19-immunization
