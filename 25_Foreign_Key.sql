-- Foreign Key
CREATE TABLE PropertyTaxes (
    PropertyTax money,
    PropertyAddress varchar(500),
    FOREIGN KEY (PropertyAddress) REFERENCES HousesForSale(Address)
);