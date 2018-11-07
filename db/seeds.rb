puts "Cleaning the database"
Flat.delete_all

flats_infos = [
  {
    name: "Nice little place close to the beach",
    address: "15 rue du lycée",
    description: "Ce studio été entièrement refait à neuf. Il est très calme et lumineux avec 3 fenêtres et aussi un aperçu mer. Il offre un excellent confort et une décoration soignée.
    Il est composé d'une entrée, d'un séjour-salon avec BZ de 160 x 200cm (matelas de haute qualité), d'une TV écran plat, d'un coin cuisine entièrement équipé (plaques vitro-céramiques, micro-ondes (avec une fonction four), réfrigérateur avec compartiment congélateur, tous ustensiles de cuisine), d'une salle de douche, avec WC et lave-linge.",
    price_per_night: 45,
    number_of_guests: 4,
    city: "Biarritz",
    image_path: "./app/assets/images/madrid.jpg"
  },
  {
    name: "Cute appartment, ideal for families",
    address: "33, rue Jean-Renaud Dandicolle",
    description: "Situé au coeur de Bordeaux, dans un très bel immeuble 18ème classé, bel appartement de 50m2 rénové.
    Prestations anciennes.
    3ème et dernier étage sans ascenseur.
    Appartement très proche de la Place de la Bourse, du Grand Théâtre, du miroir d'eau et de bien d'autres lieux stratégiques de la ville.
    Boutiques, restos, bars à proximité.",
    price_per_night: 65,
    number_of_guests: 6,
    city: "Bordeaux",
    image_path: "./app/assets/images/madrid.jpg"
  },
  {
    name: "Adorable studio in a cute 'hood",
    address: "17,rue des Batignolles",
    description: "Située au centre de Paris, à 1 minute à pied du métro Réaumur-Sébastopol (ligne 3 et ligne 4), à 2 minutes du métro Strasbourg-Saint-Denis (ligne 8, ligne 9) et à 5 minutes du métro Arts et Métiers (ligne 11).
    A l'intersection du 2ème, 3ème et 10ème arrondissement.
    Au cœur du quartier des Grands Boulevard, vous serez à quelques pas du Marais, des Halles, de la rue Montorgueil, du Marché des enfants rouges, de la Place de la République.. Et en accès direct à Pigalle, les grands magasins, l'Ile de la cité, l'Ile saint Louis, Saint Germain, la Bastille... Vous y trouverez de nombreux musées, monuments historiques, boutiques et promenades à faire.
    Maison entièrement rénovée. Vous pourrez profiter de la terrasse pour prendre votre café, déjeuner ou dîner à l'extérieur.",
    price_per_night: 35,
    number_of_guests: 2,
    city: "Paris",
    image_path: "./app/assets/images/madrid.jpg"
  },
  {
    name: "Amazing house in the heart of the city",
    address: "calle Manipa, 87",
    description:"It is one big open space with a wall dividing the room with a Double Bed ( 140 X 200 cm - 55 X 79 in) and the lounge , the lounge has one sofa bed (140 X 200 cm - 55 X 79 in) , a dining table for four and a Flat TV. The kitchen is fully equipped . The apartment has one bathroom fully equipped. There is a crib on request.
    The apartment has wi-fi internet connection and air conditioning.
    Located by the Puerta del Sol, Madrid's historic center, surrounded by restaurants and traditional shops, very close to major attractions such as Plaza Mayor, Palacio Real and the Mercado de San Miguel, walkable distance to monuments and museums of Madrid." ,
    price_per_night: 105,
    number_of_guests: 6,
    city: "Madrid",
    image_path: "./app/assets/images/madrid.jpg"
  },
  {
    name: "Beautiful apartment, amazing light.",
    address: "5409 rue Chabot",
    description: "Un grand loft lumineux et spacieux qui met en vedette une terrasse et barbecue conçus pour profiter des beaux jours de l'été à l'extérieur.
    Cet espace unique est parfait pour les amis et une famille qui veulent passer un séjour calme et de qualité au centre de tout sur le Plateau." ,
    price_per_night: 45,
    number_of_guests: 4,
    city: "Montreal",
    image_path: "./app/assets/images/madrid.jpg"
  }
]

puts "Populating the database, go get you a coffee."

flats_infos.each do |attributes|
  Flat.new(attributes).save
end

puts "cool cool."
