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

puts 'Creating 61 shops owner'
user_name = 1
Users = []
61.times do
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
user_name = 62
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

shop = Shop.new(
  name: "KOKO SHOP",
  description: "Prêt à porter pour femmes & hommes - sneakers & accessoires : Faguo, Puma, Nike, Adidas, Arkk, Diadora, Dr.Martens, Vans, Schmoove, Heroine, Patagonia...",
  category: "Mode",
  address: "19 rue de France, 77300 Fontainebleau",
  phone_number: "06 24 54 67 48",
  user: Users[54],
  city: City.find_by(name: "Fontainebleau")
  )
shop.save!
shop_photo = ShopPhoto.new(
  shop: shop
  )
shop_photo.remote_photo_url = "https://scontent-bru2-1.xx.fbcdn.net/v/t1.0-9/16997933_929650947177124_7171395841048529656_n.jpg?_nc_cat=104&_nc_ht=scontent-bru2-1.xx&oh=285b7b35b35b147f708f567f26590e38&oe=5CA0CFA3"
shop_photo.save!

shop = Shop.new(
  name: "IT SHOP",
  description: "Prêt à porter pour femmes & hommes - sneakers & accessoires : Fusalp, The North Face, Freeman Porter, Sessun, Franklin Marshall, Veja, Reebok, Nike, Sneakers, Adidas...",
  category: "Mode",
  address: "24 rue de France, 77300 Fontainebleau",
  phone_number: "06 56 34 25 56",
  user: Users[55],
  city: City.find_by(name: "Fontainebleau")
  )
shop.save!

shop_photo = ShopPhoto.new(
  shop: shop
  )
shop_photo.remote_photo_url = "https://scontent-bru2-1.xx.fbcdn.net/v/t1.0-9/16388420_1584261488255393_1958615439647836913_n.jpg?_nc_cat=102&_nc_ht=scontent-bru2-1.xx&oh=9567e7a529f969e22969e3e7d9304074&oe=5C933FA0"
shop_photo.save!

shop_photo = ShopPhoto.new(
  shop: shop
  )
shop_photo.remote_photo_url = "https://scontent-bru2-1.xx.fbcdn.net/v/t31.0-8/30052441_2109100629104807_638907946733794331_o.jpg?_nc_cat=110&_nc_ht=scontent-bru2-1.xx&oh=1cca0531faa90fff4ea300f265c93435&oe=5CAD1C1A"
shop_photo.save!


shop_photo = ShopPhoto.new(
  shop: shop
  )
shop_photo.remote_photo_url = "https://scontent-bru2-1.xx.fbcdn.net/v/t1.0-9/38905582_2277559505592251_2581324840099119104_n.jpg?_nc_cat=101&_nc_ht=scontent-bru2-1.xx&oh=c0838b9dd94d01ae8c53026ff00dd655&oe=5C96B713"
shop_photo.save!

shop = Shop.new(
  name: "STOR'AGE",
  description: "magasin de vêtements, chaussures (sneakers, sports, ville) et accessoires pour hommes et femmes: CANADA GOOSE/ NEW BALANCE/ NIKE / CARHARTT / BLEU DE PANAME...",
  category: "Mode",
  address: "23 rue grande, 77300 Fontainebleau",
  phone_number: "06 36 27 19 46",
  user: Users[56],
  city: City.find_by(name: "Fontainebleau")
  )
shop.save!
shop_photo = ShopPhoto.new(
  shop: shop
  )

shop_photo.remote_photo_url = "https://scontent-bru2-1.xx.fbcdn.net/v/t1.0-9/45867956_2552989474742905_1748544051637911552_o.jpg?_nc_cat=100&_nc_ht=scontent-bru2-1.xx&oh=981ddb03601654b9107e84e0ac010079&oe=5C96B4E5"
shop_photo.save!


shop = Shop.new(
  name: "BLACK & WHITE",
  description: "Toutes les dernières tendances streetwear, sneakers : New Balance, Nike, Adidas, Reebok...",
  category: "Mode",
  address: "18 rue grande, 77300 Fontainebleau",
  phone_number: "06 43 57 34 90",
  user: Users[57],
  city: City.find_by(name: "Fontainebleau")
  )
shop.save!
shop_photo = ShopPhoto.new(
  shop: shop
  )
shop_photo.remote_photo_url = "http://www.urbanpeak.fr/upload/images/shop-inside(1).jpg"
shop_photo.save!

shop = Shop.new(
    name: "Fromagerie Barthélémy",
    description: "Maître-fromager et un ardent défenseur de la diversité gastronomique française, Roland Barthélemy est un homme de passion qui est tombé dans la marmite quand il était petit… ",
    category: "Alimentation",
    address: "92 Rue Grande, 77300 Fontainebleau",
    phone_number: "01 64 22 21 64",
    user: Users[58],
    city: City.find_by(name: "Fontainebleau")
    )
  shop.save!
  shop_photo = ShopPhoto.new(
    shop: shop
    )
  shop_photo.remote_photo_url = "http://4.bp.blogspot.com/-142n-pBKjbc/VdRHdPLD9iI/AAAAAAAAUnU/0LBJpoOZwtM/s1600/barth%25C3%25A9l%25C3%25A9my-6251.jpg"
  shop_photo.save!

  shop_photo = ShopPhoto.new(
    shop: shop
    )
  shop_photo.remote_photo_url = "http://www.takemethere.fr/fp-1403688419-fp/post-img/3860-0.jpg"
  shop_photo.save!

  shop_photo = ShopPhoto.new(
    shop: shop
    )
  shop_photo.remote_photo_url = "http://mag.lesgrandsducs.com/wp-content/uploads/2015/01/barth%C3%A9l%C3%A9my-6184.jpg"
  shop_photo.save!


shop = Shop.new(
    name: "Les Terroirs De France",
    description: "Fromager affineur de père en fils depuis trois générations, Christophe Lefebvre vous propose un large choix de fromages de nos régions ainsi que de pays étrangers.Avec son épouse Anne, ils vous accueillent avec plaisir dans leur boutique du 41 rue des Sablons.",
    category: "Alimentation",
    address: "41 Rue des Sablons, 77300 Fontainebleau",
    phone_number: "01 64 22 50 80",
    user: Users[59],
    city: City.find_by(name: "Fontainebleau")
    )
  shop.save!
  shop_photo = ShopPhoto.new(
    shop: shop
    )
  shop_photo.remote_photo_url = "http://www.les-terroirs-de-france.com/img/slide5.jpg"
  shop_photo.save!

shop = Shop.new(
    name: "Philippe Olivier",
    description: "Issu d'une famille de collecteurs, affineurs et marchands de fromages depuis 1907, Philippe & Romain Olivier n’ont cessé de cultiver et de perfectionner les techniques et les secrets de cet art qu'est l'affinage !",
    category: "Alimentation",
    address: "19 Rue des Sablons, 77300 Fontainebleauu",
    phone_number: "01 64 22 67 25",
    user: Users[60],
    city: City.find_by(name: "Fontainebleau")
    )
  shop.save!
  shop_photo = ShopPhoto.new(
    shop: shop
    )
  shop_photo.remote_photo_url = "https://www.shopinlens.fr/wp-content/uploads/2015/07/No%C3%ABl-Lens-2014-600x400.jpg"
  shop_photo.save!

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
  name: "Exclusivités Scotch & Soda",
  description: "Samedi 15 décembre, nous vous présentons les dernières nouveautés Scotch & Soda.",
  category: "Evènement",
  shop: Shop.find_by(name: "IT SHOP"),
  start_date: Date.new(2018,12,15),
  end_date: Date.new(2018,12,15),
  shop_category: Shop.find_by(name: "IT SHOP").category
  )
event.save!
event_photo = EventPhoto.new(
  event: event
  )
event_photo.remote_photo_url = "https://scontent-bru2-1.xx.fbcdn.net/v/t1.0-9/47109532_2448850275129839_1800696417879064576_n.jpg?_nc_cat=109&_nc_ht=scontent-bru2-1.xx&oh=61bf27af931608f76ba0bb1be1d3e174&oe=5C94F529"
event_photo.save!

event = Event.new(
  name: "-10\% collection Nike",
  description: "Avant Noël, profitez de 10\% de réduction sur l'ensemble de nos sneakers (Nike, Adidas, New Balance, ...).",
  category: "Bon plan",
  shop: Shop.find_by(name: "STOR'AGE"),
  start_date: Date.new(2018,12,15),
  end_date: Date.new(2018,12,22),
  shop_category: Shop.find_by(name: "STOR'AGE").category
  )
event.save!
event_photo = EventPhoto.new(
  event: event
  )
event_photo.remote_photo_url = "https://www.lesitedelasneaker.com/wp-content/images/2017/05/nike-be-true-2017-collection-release-date.jpg"
event_photo.save!

event = Event.new(
  name: "-20\% Sneakers",
  description: "Ce samedi 15 décembre uniquement, toutes nos sneakers sont en promotion",
  category: "Bon plan",
  shop: Shop.find_by(name: "IT SHOP"),
  start_date: Date.new(2018,12,15),
  end_date: Date.new(2018,12,15),
  shop_category: Shop.find_by(name: "IT SHOP").category
  )
event.save!
event_photo = EventPhoto.new(
  event: event
  )
event_photo.remote_photo_url = "https://www.lesitedelasneaker.com/wp-content/images/2014/08/nike-air-max-lunar-90-suit-tie-collection-0.jpg"
event_photo.save!

event = Event.new(
  name: "Ventes privées mode Nike",
  description: "Du 15 au 22 décembre, nos pull, t-shirt et sneakers Nike sont à prix réduits.",
  category: "Bon plan",
  shop: Shop.find_by(name: "KOKO SHOP"),
  start_date: Date.new(2018,12,15),
  end_date: Date.new(2018,12,22),
  shop_category: Shop.find_by(name: "KOKO SHOP").category
  )
event.save!
event_photo = EventPhoto.new(
  event: event
  )
event_photo.remote_photo_url = "https://images.nike.com/is/image/DotCom/pwp_sheet2?$NIKE_PWPx3$&$img0=804389_451&$img1=804389_010&$img2=804389_063"
event_photo.save!

event = Event.new(
  name: "Inauguration Black&White",
  description: "Samedi 22 décembre, à l'occasion de l'inauguration de la boutique Black&White, venez découvrir tous nos produits: Nike, New Balance, etc.",
  category: "Evènement",
  shop: Shop.find_by(name: "BLACK & WHITE"),
  start_date: Date.new(2018,12,22),
  end_date: Date.new(2018,12,22),
  shop_category: Shop.find_by(name: "BLACK & WHITE").category
  )
event.save!
event_photo = EventPhoto.new(
  event: event
  )
event_photo.remote_photo_url = "http://www.urbanpeak.fr/upload/images/shop-inside(1).jpg"
event_photo.save!

event = Event.new(
  name: "Lancement prêt à porter Nike",
  description: "Vous connaissiez notre collection de chaussures Nike et autres sneakers, désormais vous pourrez trouver les dernières tendances prêt-à-porter Nike dans votre magasin Stor'age",
  category: "Evènement",
  shop: Shop.find_by(name: "STOR'AGE"),
  start_date: Date.new(2018,12,29),
  end_date: Date.new(2018,12,29),
  shop_category: Shop.find_by(name: "STOR'AGE").category
  )
event.save!
event_photo = EventPhoto.new(
  event: event
  )
event_photo.remote_photo_url = "https://sporteluxe-wp.s3-ap-southeast-2.amazonaws.com/wp-content/uploads/2014/10/Reece-carter-4.jpg"
event_photo.save!

event = Event.new(
    name: "Dégustation vins & fromages",
    description: "Dégustation de vins et de fromages Français
     Le samedi 15 Décembre 2018 de 18h30 à 21h00.
La dégustation animée par Roland Barthélemy, fondateur de la fromagerie Barthélémy vous proposera de découvrir les terroirs de thés et de les associer aux terroirs de fromages français.",
    category: "Evènement",
    shop: Shop.find_by(name: "Fromagerie Barthélémy"),
    start_date: Date.new(2018,12,15),
    end_date: Date.new(2018,12,15),
    shop_category: Shop.find_by(name: "Fromagerie Barthélémy").category
    )
  event.save!
  event_photo = EventPhoto.new(
    event: event
    )
  event_photo.remote_photo_url = "http://res.dallasnews.com/interactives/palate/texas-pairings/images/cheeseHero2400.jpg"
  event_photo.save!

event = Event.new(
    name: "Offre Vin",
    description: "Venez nombreux profiter de l'offre 1 bouteille de vin offerte pour tout plateau de fromage acheté",
    category: "Bon plan",
    shop: Shop.find_by(name: "Fromagerie Barthélémy"),
    start_date: Date.new(2018,12,15),
    end_date: Date.new(2018,12,21),
    shop_category: Shop.find_by(name: "Fromagerie Barthélémy").category
    )
  event.save!
  event_photo = EventPhoto.new(
    event: event
    )
  event_photo.remote_photo_url = "http://3.bp.blogspot.com/--frLU3yO5EI/Uff8L9UZKYI/AAAAAAAANvs/P20AfZaHtD8/s1600/DSC_0092.JPG"
  event_photo.save!

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
event_photo.remote_photo_url = "http://www.starstyle.ph/wp-content/uploads/2018/08/Feature-cover3.jpg"
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
event_photo.remote_photo_url = "https://i2.cdscdn.com/pdt2/5/4/4/1/700x700/mp02983544/rw/robe-de-soiree-cocktail-ceremonie-club-robe-femme.jpg"
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


# Photo for Barthélémy and IT SHOP






puts 'Finished!'
