Alias: $VaccineProduct = vaccine-product
Alias: $VaccineDoseNumber = vaccine-dose

Profile: VaccineSchedule
Parent: Schedule
Id: vaccine-schedule
* actor 1..1
* actor only Reference(Location)
* serviceType 1..
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