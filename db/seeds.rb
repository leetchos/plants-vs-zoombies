Plant.destroy_all
User.destroy_all
user = User.create!(email:"test@test.com", password: "123456")

plant1=Plant.create!(user: user, name: "Peashooter", price: 2.5, address: "Avenida Pedro Álvares Cabral, 100, São Paulo - SP", description: "He is a peashooting plant that shoots one pea every 1.5 seconds, dealing 20 damage per shot. His peas can be lit on fire by Torchwood to deal twice as much damage.", quantity: 1)
plant2=Plant.create!(user: user, name: "Sunflower", price: 3, address: "Rua Pedra Azul, 76, São Paulo - SP", description: "She is a plant capable of generating sun over time, allowing the person to plant additional plants with ease. They don't fight, but they're pretty and easy to care for.", quantity: 1)
plant3=Plant.create!(user: user, name: "Cherry Bomb", price: 10, address: "Avenida Prof. Fonseca Rodrigues, 2001, São Paulo - SP", description: "Cherry Bomb explodes violently in a 3x3 area, dealing 1800 damage per shot to any zombies that happen to be near or caught in the blast. This kilss instantly almost all zombie(s).", quantity: 1)
plant4=Plant.create!(user: user, name: "Wall-nut", price: 4, address: "Praça da Luz, 2, São Paulo - SP", description: "Is the first defensive plant obtained Plants vs. Zombies and is the fourth plant unlocked overall. He acts as a shield for the player's other plants, as he has high durability.", quantity: 1)
plant5=Plant.create!(user: user, name: "Chomper", price: 6, address: "Rua Galvão Bueno, 72, São Paulo - SP", description: "Is the first defensive plant obtained Plants vs. Zombies and is the fourth plant unlocked overall. He acts as a shield for the player's other plants, as he has high durability.", quantity: 1)
plant6=Plant.create!(user: user, name: "Snow Peashooter", price: 5, address: "Avenida Miguel Estéfno, 3031, São Paulo - SP", description: "Attacks by firing frozen peas at zombies, which can slow their target's movement and attack speed by 50% and deal damage. They're so cold they freeze the zombies in place.", quantity: 1)

image1=URI.open("https://res.cloudinary.com/nicolasenne/image/upload/v1606176917/find-your-plants/plant-1_t4zlk1.png")
image2=URI.open("https://res.cloudinary.com/nicolasenne/image/upload/v1606176917/find-your-plants/plant-2_zku4ke.png")
image3=URI.open("https://res.cloudinary.com/nicolasenne/image/upload/v1606176917/find-your-plants/plant-3_sxl4gu.png")
image4=URI.open("https://res.cloudinary.com/nicolasenne/image/upload/v1606176917/find-your-plants/plant-4_iivrby.png")
image5=URI.open("https://res.cloudinary.com/nicolasenne/image/upload/v1606176917/find-your-plants/plant-5_mz7ldm.png")
image6=URI.open("https://res.cloudinary.com/nicolasenne/image/upload/v1606176918/find-your-plants/plant-6_pmi0dg.png")

plant1.photo.attach(io: image1, filename: "photo#{plant1.id}", content_type: "image/png")
plant2.photo.attach(io: image2, filename: "photo#{plant2.id}", content_type: "image/png")
plant3.photo.attach(io: image3, filename: "photo#{plant3.id}", content_type: "image/png")
plant4.photo.attach(io: image4, filename: "photo#{plant4.id}", content_type: "image/png")
plant5.photo.attach(io: image5, filename: "photo#{plant5.id}", content_type: "image/png")
plant6.photo.attach(io: image6, filename: "photo#{plant6.id}", content_type: "image/png")
