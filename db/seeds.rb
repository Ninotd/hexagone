require 'faker'
require "csv"

puts 'Cleaning database...'
City.destroy_all
User.destroy_all
Shop.destroy_all
Event.destroy_all
ShopPhoto.destroy_all
EventPhoto.destroy_all


puts 'Creating Fontainebleau'
fontainebleau = City.create!(name: "Fontainebleau")

puts 'Creating 54 shops owner'
user_name = 1
Users = []
54.times do
  user = User.new(
    email: "#{user_name}@gmail.com",
    password: "hexagon",
    first_name: "Victor#{user_name}",
    last_name: "Desjardins"
    )
  Users << user
  user.save!
  user_name += 1
end

puts 'Creating 10 users'
user_name = 55
10.times do
  user = User.new(
    email: "#{user_name}@gmail.com",
    password: "hexagon",
    first_name: "Victor#{user_name}",
    last_name: "Desjardins"
    )
  user.save!
  user_name += 1
end

puts 'Creating 54 shops'
file = File.join(File.dirname(__FILE__), "scraping_results.csv")
count = 0
CSV.foreach(file, headers: :first_row, header_converters: :symbol) do |row|
  shop = Shop.new(
    name: row[:name],
    description: Faker::Lorem.paragraph(2),
    category: row[:category],
    address: row[:location],
    phone_number: row[:phone],
    user: Users[count],
    city: City.find_by(name: "Fontainebleau")
    )
  shop.save!
  shop_photo = ShopPhoto.new(
    shop: shop
    )
  shop_photo.remote_photo_url = row[:image]
  shop_photo.save!
  count += 1
end

puts 'Creating 20 events'

event = Event.new(
  name: "Nouvelle collection Desigual",
  description: "Venez découvrir la nouvelle collection hiver Desigual",
  category: "Nouveauté",
  shop: Shop.find_by(name: "1001 WOMEN"),
  start_date: Date.new(2018,12,5),
  end_date: Date.new(2018,12,31),
  shop_category: Shop.find_by(name: "1001 WOMEN").category
  )
event.save!
event_photo = EventPhoto.new(
  event: event
  )
event_photo.remote_photo_url = "https://static.lexpress.fr/medias_9087/w_1600,h_1200,c_crop,x_0,y_48/w_640,h_358,c_fill,g_center/v1388747901/logo-desigual_4652686.jpg"
event_photo.save!

event = Event.new(
  name: "Présentation collection Eva Kayan",
  description: "Présentation de la dernière collection Eva Kayan ce samedi 08 décembre à partir de 18h",
  category: "Evènement",
  shop: Shop.find_by(name: "1001 WOMEN"),
  start_date: Date.new(2018,12,8),
  end_date: Date.new(2018,12,8),
  shop_category: Shop.find_by(name: "1001 WOMEN").category
  )
event.save!
event_photo = EventPhoto.new(
  event: event
  )
event_photo.remote_photo_url = "http://www.tendance-rennes.com/images/rennes/1516712247-marque.jpg"
event_photo.save!

event = Event.new(
  name: "Elisa Cavaletti",
  description: "Jusqu'au mercredi 12 décembre, bénéficiez de 20\% de réduction sur toute notre gamme de haut Elisa Cavaletti",
  category: "Bon plan",
  shop: Shop.find_by(name: "1001 WOMEN"),
  start_date: Date.new(2018,12,6),
  end_date: Date.new(2018,12,12),
  shop_category: Shop.find_by(name: "1001 WOMEN").category
  )
event.save!
event_photo = EventPhoto.new(
  event: event
  )
event_photo.remote_photo_url = "http://www.michelsignature.com/wp-content/uploads/2015/05/elisa-cavaletti-logo.jpg"
event_photo.save!

event = Event.new(
  name: "-15\% - Kenzo Home",
  description: "Profitez de 15\% de réduction sur toutes la collection Kenzo Home (draps, couettes, etc.)",
  category: "Bon plan",
  shop: Shop.find_by(name: "AGNES G"),
  start_date: Date.new(2018,12,7),
  end_date: Date.new(2018,12,13),
  shop_category: Shop.find_by(name: "AGNES G").category
  )
event.save!
event_photo = EventPhoto.new(
  event: event
  )
event_photo.remote_photo_url = "http://www.theblogdeco.com/wp-content/uploads/2012/12/kenzo-home.png"
event_photo.save!

event = Event.new(
  name: "Ralph Lauren Home - NEW",
  description: "Toute la nouvelle collection de linge de maison Ralph Lauren est disponible dans bvotre boutique Agnès G",
  category: "Nouveauté",
  shop: Shop.find_by(name: "AGNES G"),
  start_date: Date.new(2018,12,8),
  end_date: Date.new(2019,1,10),
  shop_category: Shop.find_by(name: "AGNES G").category
  )
event.save!
event_photo = EventPhoto.new(
  event: event
  )
event_photo.remote_photo_url = "http://www.jgsdecoration.com/fileadmin/anim-pres-rl/ralph-lauren-home-1.jpg"
event_photo.save!

event = Event.new(
  name: "Offrez vous une nouvelle cuisine",
  description: "Pour Noël, offrez vous la cuisine de vos rèves. L'équipe d'Ai Concept est à votre écoute pour une cuisine sur mesure. Bénéficiez de 10\% de réduction sur votre prochaine cuisine.",
  category: "Bon plan",
  shop: Shop.find_by(name: "AI CONCEPT"),
  start_date: Date.new(2018,12,6),
  end_date: Date.new(2018,12,24),
  shop_category: Shop.find_by(name: "AI CONCEPT").category
  )
event.save!
event_photo = EventPhoto.new(
  event: event
  )
event_photo.remote_photo_url = "https://scontent-cdt1-1.xx.fbcdn.net/v/t1.0-9/25298970_1539377369464729_1523654543921223996_n.png?_nc_cat=107&_nc_ht=scontent-cdt1-1.xx&oh=2a666457f1b5d07ac87a844bc9f5d538&oe=5CA495EC"
event_photo.save!

event = Event.new(
  name: "-15\% - Bijoux en argent",
  description: "En ces périodes de fêtes de fin d'année, faites plaisir à vos proches et bénéficiez de 15\% de réduction sur les bijoux en argent, jusqu'au 14 décembre.",
  category: "Bon plan",
  shop: Shop.find_by(name: "ALHENA"),
  start_date: Date.new(2018,12,7),
  end_date: Date.new(2018,12,14),
  shop_category: Shop.find_by(name: "ALHENA").category
  )
event.save!
event_photo = EventPhoto.new(
  event: event
  )
event_photo.remote_photo_url = "https://photos.maty.com/0402371/V1/1200/bague-argent-925.jpeg"
event_photo.save!

event = Event.new(
  name: "Nos dernières robes",
  description: "Venez découvrir nos dernières robes de soirées autour d'un cocktail organisé dans votre boutique Cario ce samedi 08 décembre dès 17h",
  category: "Evènement",
  shop: Shop.find_by(name: "CARIO"),
  start_date: Date.new(2018,12,8),
  end_date: Date.new(2018,12,8),
  shop_category: Shop.find_by(name: "CARIO").category
  )
event.save!
event_photo = EventPhoto.new(
  event: event
  )
event_photo.remote_photo_url = "https://scontent-cdt1-1.xx.fbcdn.net/v/t1.0-9/41654898_890846821106165_7249589257285664768_o.jpg?_nc_cat=108&_nc_ht=scontent-cdt1-1.xx&oh=0c2c5d8268f79eb4cba573c94e94092e&oe=5C98259A"
event_photo.save!

event = Event.new(
  name: "Maroquinerie Fossile - NEW",
  description: "Les dernières créations Fossil sont arrivées dans votre boutique Cassine. Venez découvrir toute la nouvelle collection maroquinerie",
  category: "Nouveauté",
  shop: Shop.find_by(name: "CASSINE"),
  start_date: Date.new(2018,12,6),
  end_date: Date.new(2018,12,29),
  shop_category: Shop.find_by(name: "CASSINE").category
  )
event.save!
event_photo = EventPhoto.new(
  event: event
  )
event_photo.remote_photo_url = "https://upload.wikimedia.org/wikipedia/commons/4/41/Fossil_Logo.jpeg"
event_photo.save!

event = Event.new(
  name: "-20\% - Portefeuilles Fossil",
  description: "Jusqu'au 15 décembre, profitez de 20% sur tous nos portefeuilles Fossil",
  category: "Bon plan",
  shop: Shop.find_by(name: "CASSINE"),
  start_date: Date.new(2018,12,6),
  end_date: Date.new(2018,12,15),
  shop_category: Shop.find_by(name: "CASSINE").category
  )
event.save!
event_photo = EventPhoto.new(
  event: event
  )
event_photo.remote_photo_url = "https://www.mencorner.com/media/produits/fossil-maroquinerie-100-vintage-pour-hommes-tendances/img/fossil-portefeuille-quinn---cuir-nuance_180782-66728-1_680x680.jpg"
event_photo.save!

event = Event.new(
  name: "Dégustation nouvelles recettes",
  description: "Ce samedi 08 décembre, nous vous invitons à venir déguster nos dernières créations.",
  category: "Evènement",
  shop: Shop.find_by(name: "CHOCOLATE - TEA SALON Frederic Cassel"),
  start_date: Date.new(2018,12,8),
  end_date: Date.new(2018,12,8),
  shop_category: Shop.find_by(name: "CHOCOLATE - TEA SALON Frederic Cassel").category
  )
event.save!
event_photo = EventPhoto.new(
  event: event
  )
event_photo.remote_photo_url = "https://scontent-cdt1-1.xx.fbcdn.net/v/t1.0-9/47139763_2055758631114014_7828258692226088960_o.jpg?_nc_cat=110&_nc_ht=scontent-cdt1-1.xx&oh=488db343047bce27a49127e8edfe0a47&oe=5C64261A"
event_photo.save!

event = Event.new(
  name: "-10\% sur les coffrets chocolat",
  description: "Venez préparer votre coffret de chocolat personnalisé et profitez de 10% de réduction sur votre sélection",
  category: "Bon plan",
  shop: Shop.find_by(name: "CHOCOLATE - TEA SALON Frederic Cassel"),
  start_date: Date.new(2018,12,6),
  end_date: Date.new(2018,12,15),
  shop_category: Shop.find_by(name: "CHOCOLATE - TEA SALON Frederic Cassel").category
  )
event.save!
event_photo = EventPhoto.new(
  event: event
  )
event_photo.remote_photo_url = "http://www.chocolat-chapon.com/6-thickbox_default/coffret-36-chocolats.jpg"
event_photo.save!

event = Event.new(
  name: "-20\% sur les macarons",
  description: "Ce samedi 08 décembre, profitez de 20% de réductions sur tous nos macarons et coffrets.",
  category: "Bon plan",
  shop: Shop.find_by(name: "Chocolats de neuville"),
  start_date: Date.new(2018,12,8),
  end_date: Date.new(2018,12,8),
  shop_category: Shop.find_by(name: "Chocolats de neuville").category
  )
event.save!
event_photo = EventPhoto.new(
  event: event
  )
event_photo.remote_photo_url = "https://www.saintlocommerces.com/wp-content/uploads/2015/08/macaron2.jpg"
event_photo.save!

event = Event.new(
  name: "La Fée Maraboutée - NEW",
  description: "Les dernières robes tendances La Fée Maraboutée sont arrivées dans votre boutique DDF. Venez vous offrir une nouvelle tenue pour les fêtes de fin d'année",
  category: "Nouveauté",
  shop: Shop.find_by(name: "DDF"),
  start_date: Date.new(2018,12,6),
  end_date: Date.new(2018,12,31),
  shop_category: Shop.find_by(name: "DDF").category
  )
event.save!
event_photo = EventPhoto.new(
  event: event
  )
event_photo.remote_photo_url = "https://www.citymalin.com/system/application/resources/images/logo/LA-FEE-MARABOUTEE-38279.jpg"
event_photo.save!

event = Event.new(
  name: "Présentation - One Step",
  description: "Samedi 08 décembre à 17h, nous vous présentons les dernières arrivées de la collection One Step autour d'un cocktail",
  category: "Evènement",
  shop: Shop.find_by(name: "DDF"),
  start_date: Date.new(2018,12,8),
  end_date: Date.new(2018,12,8),
  shop_category: Shop.find_by(name: "DDF").category
  )
event.save!
event_photo = EventPhoto.new(
  event: event
  )
event_photo.remote_photo_url = "https://scontent-cdt1-1.xx.fbcdn.net/v/t1.0-9/30221790_1645167298906404_6313032763350792074_n.jpg?_nc_cat=107&_nc_ht=scontent-cdt1-1.xx&oh=7da10237515fe832c7b6ed8ff36f3fe4&oe=5CA6860D"
event_photo.save!

event = Event.new(
  name: "-20\% - Tous les manteaux",
  description: "Tous nos manteaux présents en boutiques sont à prix réduits. Venez profiter de 20\% de réduction jusqu'au 15 décembre.",
  category: "Bon plan",
  shop: Shop.find_by(name: "In Blue"),
  start_date: Date.new(2018,12,7),
  end_date: Date.new(2018,12,15),
  shop_category: Shop.find_by(name: "In Blue").category
  )
event.save!
event_photo = EventPhoto.new(
  event: event
  )
event_photo.remote_photo_url = "https://media2-synalabs-onestep.turbobytes.net/255476-product_large/daya-manteau-marine-carreaux.jpg"
event_photo.save!

event = Event.new(
  name: "Ventes exceptionnelles",
  description: "Venez découvrir nos promos sur la collection de derby, uniquement les vendredi 7 et samedi 8 décembre",
  category: "Bon plan",
  shop: Shop.find_by(name: "Les Souliers de « Jyjy »"),
  start_date: Date.new(2018,12,7),
  end_date: Date.new(2018,12,8),
  shop_category: Shop.find_by(name: "Les Souliers de « Jyjy »").category
  )
event.save!
event_photo = EventPhoto.new(
  event: event
  )
event_photo.remote_photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUktJBbLXZSU1nKyYOsTu0D8TvtGV4COsY6LU4wyF-gJKmsjwakg"
event_photo.save!

event = Event.new(
  name: "Nouvelle collection",
  description: "La nouvelle collection est arrivée, des bottes chaussettes en nouveauté qui s'adaptent à tous les mollets, des bottines, derby, baskets, fourrés, pas fourrés, des chaussures raffinées en fabrication artisanales, des chaussures pour pieds délicats. Tickets de parking gratuits valable 1 heure, pour tout achat, dans la limite du stock disponible.",
  category: "Nouveauté",
  shop: Shop.find_by(name: "Les Souliers de « Jyjy »"),
  start_date: Date.new(2018,12,6),
  end_date: Date.new(2019,1,5),
  shop_category: Shop.find_by(name: "Les Souliers de « Jyjy »").category
  )
event.save!
event_photo = EventPhoto.new(
  event: event
  )
event_photo.remote_photo_url = "http://cousins-cousines.fr/wp-content/uploads/2014/05/Cousins-cousines-la-boutique-espace-chaussures-1.jpg"
event_photo.save!

event = Event.new(
  name: "Lampe en lévitation",
  description: "Pour Noël, venez découvrir les dernières lampes tendances, en lévitation, pour épatez votre famille et vos amis",
  category: "Nouveauté",
  shop: Shop.find_by(name: "My Favourite Things"),
  start_date: Date.new(2018,12,6),
  end_date: Date.new(2019,1,24),
  shop_category: Shop.find_by(name: "My Favourite Things").category
  )
event.save!
event_photo = EventPhoto.new(
  event: event
  )
event_photo.remote_photo_url = "https://scontent-cdt1-1.xx.fbcdn.net/v/t1.0-9/15542051_933943150069121_933521500318924786_n.jpg?_nc_cat=111&_nc_ht=scontent-cdt1-1.xx&oh=67ac9d8355d95560e13cfe0bbf3d348f&oe=5CA20BC8"
event_photo.save!

puts 'Finished!'
