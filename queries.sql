-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select product.ProductName, category.categoryName from product join category on product.SupplierId = category.id;
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select [order].id, shipper.CompanyName, [order].orderdate from [order] join shipper on [order].shipvia = shipper.id where [order].Orderdate < '2012-08-09';
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select product.ProductName, product.QuantityPerUnit, orderdetail.id from product join orderdetail where orderdetail.id like '%10251%' order by product.ProductName;
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select [order].id, customer.CompanyName, employee.LastName from [order] join customer join employee;