Alias: SSTAT = http://hl7.org/fhir/slotstatus
Alias: $BookingDeepLink = booking-deep-link
Alias: $BookingPhone = booking-phone
Alias: $BookingCapacity = slot-capacity

Profile: VaccineSlot
Parent: Slot
Id: vaccine-slot
* status from VaccineSlotStatus (required)
* extension contains
    $BookingDeepLink named booking-link 0..1 MS and
    $BookingPhone named booking-phone 0..1 MS and
    $BookingCapacity named capacity 0..1 MS

ValueSet: VaccineSlotStatus
Id: vaccine-slot-status
* include codes from system SSTAT
* exclude SSTAT#busy-unavailable
* exclude SSTAT#busy-tentative
* exclude SSTAT#entered-in-error

Extension: BookingDeepLink
Id: booking-deep-link
* value[x] only url

Extension: BookingPhone
Id: booking-phone
* value[x] only string

Extension: BookingCapacity
Id: slot-capacity
* value[x] only integer