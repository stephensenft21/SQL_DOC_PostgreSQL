# Car Return Procedure

When a leased car is returned:

1. Update it's status to RETURNED_PENDING_INSPECTION.
1. Update the appropriate record in the relationship table to mark the end date of the relationship.
1. Update the value of the car by +5% for resale profit.

Put all of this in a transaction to ensure all operations are successful at once.