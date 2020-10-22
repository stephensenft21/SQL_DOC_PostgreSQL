# Updating Car Sales Status

When a car is sold:

1. Update it's status to SOLD inside a transaction.
1. Add the customerId, carId, and dealerID to the relationship table.
1. Update the value of the car by -15%.

Put all of this in a transaction to ensure all operations are successful at once.