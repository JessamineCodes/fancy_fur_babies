puts "cleaning database..."
Costume.destroy_all
User.destroy_all

puts "creating database..."
user1 = User.create(email: "issy@gmail.com", password: "123456")
user2 = User.create(email: "kat@gmail.com", password: "123456")
user3 = User.create(email: "jess@gmail.com", password: "123456")
user4 = User.create(email: "zac@gmail.com", password: "123456")

Costume.create(
  product_name: "Tophat",
  img: "https://www.warrenphotographic.co.uk/photography/bigs/38507-Saint-Bernard-puppy-wearing-a-top-hat-white-background.jpg",
  details: "very classy hat",
  price: 12.0,
  pet_type: "dog",
  user: user1
)

Costume.create(
  product_name: "Maine",
  img: "https://i.etsystatic.com/37139338/c/800/635/0/17/il/36321c/4388690006/il_340x270.4388690006_e0t9.jpg",
  details: "super fluffy - very lion-esk",
  price: 6.5,
  pet_type: "cat",
  user: user2
)

Costume.create(
  product_name: "Bat wings",
  img: "https://i.pinimg.com/236x/63/69/bd/6369bde0d2b1a691a351517c2a8d42b9.jpg",
  details: "very stylish - give your cat wings!",
  price: 4.0,
  pet_type: "cat",
  user: user2
)

Costume.create(
  product_name: "Bow-tie",
  img: "https://cdn.shopify.com/s/files/1/0048/4356/9201/products/plaid-bowtie-cotton-collar-for-cats-black-white-729437.jpg?v=1629118270",
  details: "look snazzy- wear a bowtie!",
  price: 2.50,
  pet_type: "cat",
  user: user2
)

Costume.create(
  product_name: "Bow-tie",
  img: "https://media.istockphoto.com/id/1206195505/photo/cute-young-small-white-dog-wearing-a-modern-bowtie-sitting-on-the-wood-floor-and-looking-at.jpg?s=612x612&w=0&k=20&c=td2SUPpXGjvS-zw13BY3rb8vGzh21VsofYu052Z4V6I=",
  details: "classy bowtie",
  price: 3.0,
  pet_type: "dog",
  user: user1
)

Costume.create(
  product_name: "tux",
  img: "https://i.etsystatic.com/10768173/r/il/fa261d/3066117548/il_570xN.3066117548_pmig.jpg",
  details: "perfect addition to any black-tie event",
  price: 15.0,
  pet_type: "dog",
  user: user3
)

Costume.create(
  product_name: "sunglasses",
  img: "https://img.ltwebstatic.com/images3_pi/2022/07/28/16589719026b31893fa9231b091d7de48351b81783_thumbnail_900x.webp",
  details: "suns out - glasses out!",
  price: 1.50,
  pet_type: "hamster",
  user: user4
)

Costume.create(
  product_name: "gold chain",
  img: "https://m.media-amazon.com/images/I/61tGy3Bd47L._AC_SX425_.jpg",
  details: "very shiny",
  price: 3.50,
  pet_type: "reptile",
  user: user4
)

Costume.create(
  product_name: "funky shirt",
  img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7S61W3afU-WhlVQavyqK2l3sMNqQ72rMEjA&usqp=CAU",
  details: "be the life of the party in your pet's very own party shirt",
  price: 4.50,
  pet_type: "dog",
  user: user3
)

Costume.create(
  product_name: "mermaid outfit",
  img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTycy7N8di3a1xPqYpXckuL96M9stpr6G71UVM9eHg-oF_v35R7DLrLE-jujLCGVgZX1I4&usqp=CAU",
  details: "Ariel who?! Be the mermaid you were born to be!",
  price: 8.50,
  pet_type: "cat",
  user: user1
)

puts "done"
