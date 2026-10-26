WebCart cart = [
    SELECT Id, Name, OwnerId
    FROM WebCart
    WHERE Status = 'Active'
    AND Owner.Name = '{FirstBuyerName}'
    ORDER BY LastModifiedDate DESC
    LIMIT 1
];

User secondBuyer = [
    SELECT Id, Name
    FROM User
    WHERE Username = '{SecondBuyerUsername}'
    LIMIT 1
];

cart.OwnerId = secondBuyer.Id;
update cart;

System.debug('Cart ' + cart.Id + ' is now owned by ' + secondBuyer.Name);