require "open-uri"

puts "Cleaning database..."
Artist.destroy_all
Booking.destroy_all
User.destroy_all

puts "Creating users..."
julie_photo = URI.open("https://avatars.githubusercontent.com/u/122106453?v=4")
julie = User.new(email: "julie@gmail.com", password: "azerty", first_name: "Julie", last_name: "THOMAS", admin: false)
julie.photo.attach(io: julie_photo, filename: "julie.png", content_type: "image/png")
julie.save

clementine_photo = URI.open("https://avatars.githubusercontent.com/u/122368277?v=4")
clementine = User.new(email: "clementine@gmail.com", password: "azerty", first_name: "Clementine", last_name: "DELTHE", admin: false)
clementine.photo.attach(io: clementine_photo, filename: "clementine.png", content_type: "image/png")
clementine.save

nicolas_photo = URI.open("https://avatars.githubusercontent.com/u/80978348?v=4")
nicolas = User.new(email: "nicolas@gmail.com", password: "azerty", first_name: "Nicolas", last_name: "RIERA", admin: false)
nicolas.photo.attach(io: nicolas_photo, filename: "nicolas.png", content_type: "image/png")
nicolas.save

djessy_photo = URI.open("https://avatars.githubusercontent.com/u/116000492?v=4")
djessy = User.new(email: "djessy@gmail.com", password: "azerty", first_name: "Djessy", last_name: "COIFFE", admin: false)
djessy.photo.attach(io: djessy_photo, filename: "djessy.png", content_type: "image/png")
djessy.save

timbaland_photo = URI.open("https://static.wikia.nocookie.net/empire-serie/images/3/3c/Timbaland.jpg/revision/latest?cb=20200405125127&path-prefix=fr")
timbaland = User.new(email: "timbaland@gmail.com", password: "azerty", first_name: "Tim", last_name: "BALAND", admin: true)
timbaland.photo.attach(io: timbaland_photo, filename: "timbaland.png", content_type: "image/png")
timbaland.save

drdre_photo = URI.open("https://upload.wikimedia.org/wikipedia/commons/d/de/Dr._Dre_in_2011.jpg")
drdre = User.new(email: "drdre@gmail.com", password: "azerty", first_name: "Dr", last_name: "DRE", admin: true)
drdre.photo.attach(io: drdre_photo, filename: "drdre.png", content_type: "image/png")
drdre.save

jayz_photo = URI.open("https://www.gala.fr/imgre/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fprismamedia_people.2F2017.2F06.2F30.2Fc0338abb-e908-4412-88f2-64962fa4f208.2Ejpeg/340x340/quality/80/jay-z.jpg")
jayz = User.new(email: "jayz@gmail.com", password: "azerty", first_name: "Jay", last_name: "Z", admin: true)
jayz.photo.attach(io: jayz_photo, filename: "jayz.png", content_type: "image/png")
jayz.save

puts "Creating artists..."
pitbull_photo = URI.open("https://www.rollingstone.com/wp-content/uploads/2018/06/rs-179739-42-62370162.jpg?w=1581&h=1054&crop=1")
pitbull = Artist.new(name: "Pitbull", category: "Rnb", price: 70000, description: "Pitbull, également appelé Mr. Worldwide, ou encore Mr. 305, de son vrai nom Armando Christian Pérez, né le 15 janvier 1981 à Miami, est un rappeur, producteur, acteur et entrepreneur américain d’origine cubaine.", user_id: timbaland.id)
pitbull.photo.attach(io: pitbull_photo, filename: "pitbull.png", content_type: "image/png")
pitbull.save

florida_photo = URI.open("https://metalworksstudios.com/wp-content/uploads/2019/10/Metalworks-studios-clients_Flo-Rida.jpg")
florida = Artist.new(name: "Florida", category: "Rnb", price: 65000, description: "Flo Rida, de son vrai nom Tramar Lacel Dillard, né le 16 septembre 1979 à Opa-locka, en Floride, est un rappeur américain. Son nom vient du nom de l’État de Floride. Ancien basketteur à l’université, il est remarqué par le label Poe Boy Entertainment basé à Miami, dans lequel il s’est engagé.", user_id: drdre.id)
florida.photo.attach(io: florida_photo, filename: "florida.png", content_type: "image/png")
florida.save

tragedie_photo = URI.open("https://www.warehouse-nantes.fr/media/cache/square_1000/images/artist_image/5c9e295459ebd587124677.jpg")
tragedie = Artist.new(name: "Tragedie", category: "Rnb", price: 5000, description: "Tragédie est un groupe de RnB et de hip-hop français, originaire de Nantes, en Loire-Atlantique fondé par Daniel Guiro et Thierry Rakotomanga. Le groupe se popularise en 2003 avec le single Hey oh. Il se dissout en 2005 et se reforme une décennie plus tard en 2015 aux côtés d’Az sous le nom Tragédie 2.0.", user_id: timbaland.id)
tragedie.photo.attach(io: tragedie_photo, filename: "tragedie.png", content_type: "image/png")
tragedie.save

nuttea_photo = URI.open("https://musique.rfi.fr/sites/default/files/styles/large_retina_1964x1104/public/thumbnails/image/nuttea_0.jpg?itok=U_r8mfjm&timestamp=1471445297")
nuttea = Artist.new(name: "Nuttea", category: "Ragga", price: 900, description: "Daddy Nuttea ou simplement Nuttea, de son vrai nom Olivier Lara1, est un artiste de ragga français né le 26 décembre 1968 en Guadeloupe et arrivé à Paris à l’âge de six ans2. Il a débuté à la fin des années 1980 avec le sound system High Fight International3, qui regroupait à l’époque Polino (selector), TipTop (operator) et comme DJ et chanteurs : Tonton David, Féfé Typical et Don Lickshot.", user_id: jayz.id)
nuttea.photo.attach(io: nuttea_photo, filename: "nuttea.png", content_type: "image/png")
nuttea.save

britney_spears_photo = URI.open("https://www.parismatch.com/lmnr/r/343,514,FFFFFF,forcex,center-middle/img/var/pm/public/media/image/2022/03/05/01/Britney-Spears-4.jpg?VersionId=974zEbAXKPPCR1YZ2pN81zODsMfQhwxD")
britney_spears = Artist.new(name: "Britney Spears", category: "Pop", price: 95000, description: "Britney Spears, née le 2 décembre 1981 à McComb, aux Etats-Unis, est une chanteuse, danseuse, actrice et femme d’affaires américaine. Souvent appelée la Princesse de la pop, elle est reconnue pour avoir influencé la pop adolescente à la fin des années 1990 et au début des années 2000.", user_id: drdre.id)
britney_spears.photo.attach(io: britney_spears_photo, filename: "britney_spears.png", content_type: "image/png")
britney_spears.save

anastacia_photo = URI.open("https://c4.wallpaperflare.com/wallpaper/597/99/830/singer-women-blonde-anastacia-women-with-shades-hd-wallpaper-preview.jpg")
anastacia = Artist.new(name: "Anastasia", category: "Pop", price: 45000, description: "Anastacia Lyn Newkirk, née le 17 septembre 1968 à Chicago, est une chanteuse de pop, soul et d’influence rock.", user_id: jayz.id)
anastacia.photo.attach(io: anastacia_photo, filename: "anastacia.png", content_type: "image/png")
anastacia.save

sean_paul_photo = URI.open("https://scontent-cdg2-1.xx.fbcdn.net/v/t1.6435-9/80259168_2507757226104182_458291753720479744_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=fjyBYxzIgEgAX_GfEQp&_nc_ht=scontent-cdg2-1.xx&oh=00_AfDo9Y2WeAuow_gcaMCCaGdkvFBz1A3dgedREQCT0dtuwA&oe=64240642")
sean_paul = Artist.new(name: "Sean Paul", category: "Rnb", price: 80000, description: "Sean Paul Ryan Francis Henriques, plus connu sous le nom de scène Sean Paul, est un chanteur jamaïcain de dancehall et de reggae, né le 9 janvier 1973 à Kingston. Il a produit six albums tout au long de sa carrière : Stage One, Dutty Rock, The Trinity, Imperial Blaze Tomahawk Technique et Full Frequency.", user_id: timbaland.id)
sean_paul.photo.attach(io: sean_paul_photo, filename: "sean_paul.png", content_type: "image/png")
sean_paul.save

ricky_martin_photo = URI.open("https://images.lesindesradios.fr/fit-in/1100x2000/filters:format(webp)/radios/latina/importrk/news/original/5a2e672a343032.41645406.jpg")
ricky_martin = Artist.new(name: "Ricky Martin", category: "Latino", price: 52000, description: "Ricky Martin né Enrique Morales est né le 24 décembre 1971 à San Juan, à Porto Rico, est un chanteur et acteur portoricain, naturalisé espagnol. Ricky Martin est considéré comme le « roi de la pop latino-américaine ». Il a vendu plus de 90 millions d’albums.", user_id: jayz.id)
ricky_martin.photo.attach(io: ricky_martin_photo, filename: "ricky_martin.png", content_type: "image/png")
ricky_martin.save

christina_aguilera_photo = URI.open("https://media.allure.com/photos/63a34219e06e45ecab32f3e4/4:3/w_4032,h_3024,c_limit/christina%20aguilera%20birthday%20look%20.jpg")
christina_aguilera = Artist.new(name: "Christina Aguilera", category: "Pop", price: 38000, description: "Christina María Aguilera, née le 18 décembre 1980 à Staten Island à New York, est une auteure-compositrice-interprète, femme d’affaires, actrice et philanthrope américaine. En 1993, à seulement 12 ans, elle lance sa carrière dans The Mickey Mouse Club.", user_id: timbaland.id)
christina_aguilera.photo.attach(io: christina_aguilera_photo, filename: "christina_aguilera.png", content_type: "image/png")
christina_aguilera.save

larusso_photo = URI.open("https://www.parismatch.com/lmnr/f/webp/r/798,1197,FFFFFF,forcex,center-middle/img/var/pm/public/media/image/2022/03/02/17/Larusso.jpg?VersionId=fGMoMbdP3J1P3T2XfgJnDOBq4rwKAOVT")
larusso = Artist.new(name: "Larusso", category: "Pop", price: 1400, description: "Larusso, née Laetitia Serero, est une chanteuse française née le 11 octobre 1979 à Paris. Elle connaît le succès en 1999 avec la reprise du titre Tu m’oublieras. Elle a vendu près de 2 millions de disques au cours de sa carrière.", user_id: jayz.id)
larusso.photo.attach(io: larusso_photo, filename: "larusso.png", content_type: "image/png")
larusso.save

usher_photo = URI.open("https://www.1more.fr/artists/115_1492175711.jpg")
usher = Artist.new(name: "Usher", category: "Rnb", price: 62000, description: "Usher, de son nom complet Usher Raymond IV, né le 14 octobre 1978 à Dallas, au Texas, est un chanteur de RnB, danseur, parolier et acteur américain.", user_id: drdre.id)
usher.photo.attach(io: usher_photo, filename: "usher.png", content_type: "image/png")
usher.save

akon_photo = URI.open("https://hdmusic.cc/uploads/posts/2019-08/1566374867_1532217.jpg")
akon = Artist.new(name: "Akon", category: "Rnb", price: 66000, description: "Akon, de son vrai nom Aliaune Damala Bouga Time Puru Nacka Lu Lu Lu Badara Akon Thiam, est un chanteur et producteur de RnB américain, né le 16 avril 1973 à Saint-Louis, dans le Missouri. Son premier single Locked Up et son premier album Trouble sont sortis en 2004.", user_id: timbaland.id)
akon.photo.attach(io: akon_photo, filename: "akon.png", content_type: "image/png")
akon.save

kyo_photo = URI.open("https://lopinion.com/storage/articles/HaYpBASjATTFKmg7kjWBzm9bQIiCCg2ulsRYpEFv.jpg")
kyo = Artist.new(name: "Kyo", category: "Pop", price: 10000, description: "Kyo est un groupe de pop-rock français. Formé en 1994, le groupe est révélé au grand public avec les albums à succès Le Chemin en 2003 et 300 lésions en 2004. Éprouvé et en manque d’inspiration, le groupe se met en pause en 2008 avant de faire son retour en 2014 avec l’album L’Équilibre.", user_id: jayz.id)
kyo.photo.attach(io: kyo_photo, filename: "kyo.png", content_type: "image/png")
kyo.save

keenv_photo = URI.open("https://img.nrj.fr/TmKi_grT3UMclhYyh7-zhAFtmPM=/0x415/smart/http%3A%2F%2Fmedia.nrj.fr%2F436x327%2F2014%2F10%2Fkeen-v-fiche_9434.jpg")
keenv = Artist.new(name: "KeenV", category: "Pop", price: 5000, description: "Kevin Bonnet, dit Keen’V, né le 31 janvier 1983 à Rouen, en Seine-Maritime, est un auteur-compositeur-interprète français. En 2008, il se fait connaître en discothèque grâce à son titre À l’horizontale et en 2011, il connaît le succès à partir du titre J’aimerais trop.", user_id: timbaland.id)
keenv.photo.attach(io: keenv_photo, filename: "keenv.png", content_type: "image/png")
keenv.save

aventura_photo = URI.open("https://d2bqnx51n7awhk.cloudfront.net/images/episode_thumbnails/1663800653.1992.jpg")
aventura = Artist.new(name: "Aventura", category: "Latino", price: 25000, description: "Aventura est un groupe de bachata qui chante en espagnol ou en spanglish, formé en 1994 dans le Bronx de New York. Le groupe connaît un grand succès en 2002 avec la chanson Obsesión.", user_id: drdre.id)
aventura.photo.attach(io: aventura_photo, filename: "aventura.png", content_type: "image/png")
aventura.save

puts "Creating bookings..."
Booking.create(user_id: timbaland.id, artist_id: florida.id, date: (Date.today + 45), validated: true)
Booking.create(user_id: timbaland.id, artist_id: britney_spears.id, date: (Date.today + 22), validated: true)

puts "Finished!"
