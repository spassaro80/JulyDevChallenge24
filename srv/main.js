const cds = require('@sap/cds')

class northbreezeService extends cds.ApplicationService { init() {

    this.on ('productInfo', async(req) => {
        const db = await cds.connect.to('db')
        const { Products } = db.entities('northbreeze')
        // console.log(Products)
        const {id} = req.data
        let product = await SELECT.one
        .columns('ProductName as name', 'Supplier.CompanyName as supplier' )
        .from (Products).where `ProductID = ${id}`;
        // console.log(product)
        return `${product.name} by ${product.supplier}`
      
    })
    this.on('selectProduct', async(req) => {
      const db = await cds.connect.to('db')
      const { Products } = db.entities('northbreeze')
      const {communityid} = req.data
      
      //Lowercase the communityID and apply a reduce function to convert each letter into ASCII and sum 
            const result = Array.from(communityid.toLowerCase()).reduce((accumulator, char) => {
        return accumulator + char.charCodeAt(0);
      }, 0);


      //Devuelve el número total de productos
      const {count:totalProducts} = await SELECT.one `count(*) as count` .from(Products);

      const ProductID = result % totalProducts + 1

      const product = await SELECT.one
      .from(Products)
      .where({ ProductID });
       
      return product.ProductName
    })
    this.on('stockValue', async({ params: [ { ProductID } ] }) => {
      const db = await cds.connect.to('db')
      const { Products } = db.entities('northbreeze')
      let product = await SELECT.one
      .columns('UnitPrice', 'UnitsInStock' )
      .from (Products).where ({ProductID});
      const {UnitPrice, UnitsInStock} = product
      return UnitPrice * UnitsInStock
    })
  return super.init()
}}

module.exports = northbreezeService