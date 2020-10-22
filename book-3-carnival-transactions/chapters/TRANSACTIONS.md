# Transactions

Talk about how transactions are used just like try/catch blocks in application code to gracefully handle unsuccessful operations in the database.

Should we cover save points?


```sql
BEGIN TRANSACTION [CommitToStock]

  BEGIN TRY
      DECLARE @EntryTS datetime;
      SET @EntryTS = CURRENT_TIMESTAMP

      INSERT INTO Inventory ([Make], [Model], [Year], [Status], [LifetimeStart])
      VALUES ('Ford', 'F-150', 2017, 'PENDING_INSPECTION', @EntryTS),
             ('Subaru', 'Forester', 2019, 'PENDING_INSPECTION', @EntryTS);

      DECLARE @UpdateTS datetime;
      SET @UpdateTS = CURRENT_TIMESTAMP

      UPDATE Inventory
      SET [Status] = 'IN_STOCK'
      WHERE Inventory.[Status] = 'PENDING_INSPECTION'
      AND @UpdateTS > Inventory.[LifetimeStart];

      COMMIT TRANSACTION [CommitToStock]

  END TRY

  BEGIN CATCH

      ROLLBACK TRANSACTION [CommitToStock]

  END CATCH
```