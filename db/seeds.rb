# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

loja = Store.create(name:"Padaria do Gordo",cnpj:"1548522366",address:"rua perto daqui",phone:"854596587")
produto = Product.create(code:"0125",ean:"1254789652365",name:"pão cacetinho",quantity:40,description:"pão duro",unity: "Kg",category: "massas",store: loja)
