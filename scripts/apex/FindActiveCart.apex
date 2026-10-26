List<WebCart> carts = [
    SELECT Id, Name, Status, TotalProductCount, Owner.Name
    FROM WebCart
    WHERE Status = 'Active'
    AND Owner.Name = '{FirstBuyerName}'
];

System.debug('Carts found: ' + carts.size());

for (WebCart c : carts) {
    System.debug(c.Id + ' | ' + c.Status + ' | ' + c.TotalProductCount + ' items | ' + c.Owner.Name);
}
