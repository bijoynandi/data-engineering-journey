-- Executing the FactResellerSales table
SELECT *
FROM
    FactResellerSales
WHERE
    CarrierTrackingNumber = '4911-403C-98';

-- Creating non-clustered index on the column CarrierTrackingNumber in the FactResellerSales table
CREATE NONCLUSTERED INDEX idx_FactReseller_CTN
ON
    FactResellerSales (CarrierTrackingNumber);
