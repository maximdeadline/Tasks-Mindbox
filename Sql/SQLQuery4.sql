use Products
select Product.Name, Product.CategoryID1, Product.CategoryID2, Product.CategoryID3, Category.Name as '��������� 1', null as '��������� 2', null as '��������� 3' from Product 
left join dbo.Category on dbo.Category.CategoryID = dbo.Product.CategoryID1
union all
select Product.Name, Product.CategoryID1, Product.CategoryID2, Product.CategoryID3, null, Category.Name as '��������� 2', null from Product 
left join dbo.Category on dbo.Category.CategoryID = dbo.Product.CategoryID2
union all
select Product.Name, Product.CategoryID1, Product.CategoryID2, Product.CategoryID3, null, null , Category.Name as '��������� 3' from Product 
left join dbo.Category on dbo.Category.CategoryID = dbo.Product.CategoryID3
