using northwind from '../db/schema';

// @path: '/northbreeze'
service northbreeze {
    @cds.redirection.target: 'northwind.Products'
    entity Products   as projection on northwind.Products
    actions {
        function stockValue() returns Integer
    };
    entity Suppliers  as projection on northwind.Suppliers;
    entity Categories as projection on northwind.Categories;
    function productInfo (id: Int32) returns String;
    action selectProduct (communityid: String) returns String;

    entity TotalProducts as select from northwind.Products {
        count(ProductID) as count : Integer
    }
        

}
