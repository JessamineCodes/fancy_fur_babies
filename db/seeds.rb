require "open-uri"

puts "Cleaning database..."
Costume.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create!(email: "issy@gmail.com", first_name: "Issy", last_name: "McCallion", address: "London", password: "123456")
user2 = User.create(email: "kat@gmail.com", first_name: "Kat", last_name: "Conios", address: "London", password: "123456")
user3 = User.create(email: "jess@gmail.com", first_name: "Jess", last_name: "McHugh", address: "London", password: "123456")
user4 = User.create(email: "zac@gmail.com", first_name: "Zac", last_name: "Nation", address: "London", password: "123456")

puts "Creating costumes..."

costume1 = Costume.new(
  product_name: "Top Hat",
  details: "A very classy hat.",
  price: 12.00,
  pet_type: "dog",
  user: user1
)
img1 = URI.open("https://www.warrenphotographic.co.uk/photography/bigs/38507-Saint-Bernard-puppy-wearing-a-top-hat-white-background.jpg")
costume1.photo.attach(io: img1, filename: "dog-top-hat.jpg", content_type: "image/jpg")
costume1.save

costume2 = Costume.new(
  product_name: "Bat Wings",
  details: "Very stylish - give your cat wings!",
  price: 4.00,
  pet_type: "cat",
  user: user2
)
img2 = URI.open("https://i.pinimg.com/236x/63/69/bd/6369bde0d2b1a691a351517c2a8d42b9.jpg")
costume2.photo.attach(io: img2, filename: "cat-wings.jpg", content_type: "image/jpg")
costume2.save

costume3 = Costume.new(
  product_name: "Bow Tie for Cat",
  details: "look snazzy - wear a bowtie!",
  price: 2.50,
  pet_type: "cat",
  user: user2
)
img3 = URI.open("https://cdn.shopify.com/s/files/1/0048/4356/9201/products/plaid-bowtie-cotton-collar-for-cats-black-white-729437.jpg?v=1629118270")
costume3.photo.attach(io: img3, filename: "cat-bow-tie.jpg", content_type: "image/jpg")
costume3.save

costume4= Costume.new(
  product_name: "Bow Tie for Dog",
  details: "Classy bowtie",
  price: 3.00,
  pet_type: "dog",
  user: user1)
img4 = URI.open("https://media.istockphoto.com/id/1206195505/photo/cute-young-small-white-dog-wearing-a-modern-bowtie-sitting-on-the-wood-floor-and-looking-at.jpg?s=612x612&w=0&k=20&c=td2SUPpXGjvS-zw13BY3rb8vGzh21VsofYu052Z4V6I=")
costume4.photo.attach(io: img4, filename: "dog-bow-tie.jpg", content_type: "image/jpg")
costume4.save

costume5 = Costume.new(
  product_name: "Tuxedo",
  details: "Needed for any black-tie event",
  price: 15.00,
  pet_type: "dog",
  user: user3
)
img5 = URI.open("https://i.etsystatic.com/10768173/r/il/fa261d/3066117548/il_570xN.3066117548_pmig.jpg")
costume5.photo.attach(io: img5, filename: "dog-tuxedo.jpg", content_type: "image/jpg")
costume5.save

costume6 = Costume.new(
  product_name: "Sunglasses",
  details: "Sun's out - glasses out!",
  price: 1.50,
  pet_type: "small mammal",
  user: user4
)
img6 = URI.open("https://img.ltwebstatic.com/images3_pi/2022/07/28/16589719026b31893fa9231b091d7de48351b81783_thumbnail_900x.webp")
costume6.photo.attach(io: img6, filename: "hamster_sunglasses.jpg", content_type: "image/jpg")
costume6.save


costume7 = Costume.new(
  product_name: "Gold Chain",
  details: "So very shiny...",
  price: 3.50,
  pet_type: "reptile",
  user: user4
)
img7 = URI.open("https://m.media-amazon.com/images/I/61tGy3Bd47L._AC_SX425_.jpg")
costume7.photo.attach(io: img7, filename: "reptile_gold_chain.jpg", content_type: "image/jpg")
costume7.save


costume8 = Costume.new(
  product_name: "Funky Shirt",
  details: "Be the life of the party in your pet's very own party shirt",
  price: 4.50,
  pet_type: "dog",
  user: user3
)
img8 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7S61W3afU-WhlVQavyqK2l3sMNqQ72rMEjA&usqp=CAU")
costume8.photo.attach(io: img8, filename: "funky_shirt_dog.jpg", content_type: "image/jpg")
costume8.save

costume9 = Costume.new(
  product_name: "Mermaid Outfit",
  details: "Ariel who?! Be the mermaid you were born to be!",
  price: 8.50,
  pet_type: "cat",
  user: user1
)
img9 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTycy7N8di3a1xPqYpXckuL96M9stpr6G71UVM9eHg-oF_v35R7DLrLE-jujLCGVgZX1I4&usqp=CAU")
costume9.photo.attach(io: img9, filename: "funky_shirt_dog.jpg", content_type: "image/jpg")
costume9.save

costume10 = Costume.new(
  product_name: "Princess Leia Costume",
  details: "May the paws be with you!",
  price: 8.50,
  pet_type: "cat",
  user: user3
)
img10 = URI.open("https://petcostumecenter.com/wp-content/uploads/2020/05/887894_PS_LEIA-1-scaled-964x1024.webp")
costume10.photo.attach(io: img10, filename: "leia_cat.jpg", content_type: "image/jpg")
costume10.save

costume11 = Costume.new(
  product_name: "Witch Hat for Hamster",
  details: "Abracadabra! Have a magical time in this wizard hat...",
  price: 12.50,
  pet_type: "small mammal",
  user: user4
)
img11 = URI.open("https://m.media-amazon.com/images/I/71x3KUbr-AL._AC_SX425_.jpg")
costume11.photo.attach(io: img11, filename: "wizard-hamster.jpg", content_type: "image/jpg")
costume11.save

costume12 = Costume.new(
  product_name: "Bee Costume",
  details: "Your budgy will be buzzzzzzing in this spiffy outfit.",
  price: 9.99,
  pet_type: "bird",
  user: user1
)
img12 = URI.open("https://i.bosity.com/product_img/274/64050477/64050477_7_image.jpg?x-oss-process=image/resize,p_100/watermark,image_d2F0ZXJtYXJrX2ltZy8xNzExMTQwOS9kZWZhdWx0LnBuZz94LW9zcy1wcm9jZXNzPWltYWdlL3Jlc2l6ZSxQXzk5,g_nw,x_0,y_0")
costume12.photo.attach(io: img12, filename: "bird-suit.jpg", content_type: "image/jpg")
costume12.save

puts "Creating bookings..."
booking1 = Booking.create!(
  start_date: DateTime.new(2023,9,1,17),
  end_date: DateTime.new(2023,9,1,18),
  message: "Can't wait to try this on!",
  user_id: user3.id,
  costume_id: costume1.id
)

booking2 = Booking.create!(
  start_date: DateTime.new(2023,3,12,17),
  end_date: DateTime.new(2023,3,13,18),
  message: "Please could you send this asap!",
  user_id: user1.id,
  costume_id: costume2.id
)

booking3 = Booking.create!(
  start_date: DateTime.new(2023,4,1,17),
  end_date: DateTime.new(2023,4,3,18),
  message: "So spiffy!",
  user_id: user3.id,
  costume_id: costume4.id
)

booking4 = Booking.create!(
  start_date: DateTime.new(2023,5,7,17),
  end_date: DateTime.new(2023,5,9,18),
  message: "Wow! This looks amazeballs!",
  user_id: user4.id,
  costume_id: costume3.id
)

booking5 = Booking.create!(
  start_date: DateTime.new(2023,4,20,17),
  end_date: DateTime.new(2023,4,22,18),
  message: "Asap plssssss",
  user_id: user3.id,
  costume_id: costume5.id
)

booking5 = Booking.create!(
  start_date: DateTime.new(2023,6,20,17),
  end_date: DateTime.new(2023,6,22,18),
  message: "Bloody fabulous",
  user_id: user2.id,
  costume_id: costume6.id
)

puts "All done! Yey!"
