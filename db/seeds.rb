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
pitbull_photo = URI.open("https://res.cloudinary.com/ddq1d6u8x/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1677774217/development/1y19c76hh6pf9ykdmv2eyynkieuw.jpg")
pitbull = Artist.new(name: "Pitbull", category: "Rnb", price: 70000, description: "Pitbull, ??galement appel?? Mr. Worldwide, ou encore Mr. 305, de son vrai nom Armando Christian P??rez, n?? le 15 janvier 1981 ?? Miami, est un rappeur, producteur, acteur et entrepreneur am??ricain d???origine cubaine.", user_id: timbaland.id)
pitbull.photo.attach(io: pitbull_photo, filename: "pitbull.png", content_type: "image/png")
pitbull.save

florida_photo = URI.open("https://res.cloudinary.com/ddq1d6u8x/image/upload/v1677774219/development/3abbrb1orl2f9gmmt7e4q4vvhdgu.jpg")
florida = Artist.new(name: "Florida", category: "Rnb", price: 65000, description: "Flo Rida, de son vrai nom Tramar Lacel Dillard, n?? le 16 septembre 1979 ?? Opa-locka, en Floride, est un rappeur am??ricain. Son nom vient du nom de l?????tat de Floride. Ancien basketteur ?? l???universit??, il est remarqu?? par le label Poe Boy Entertainment bas?? ?? Miami, dans lequel il s???est engag??.", user_id: drdre.id)
florida.photo.attach(io: florida_photo, filename: "florida.png", content_type: "image/png")
florida.save

tragedie_photo = URI.open("https://res.cloudinary.com/ddq1d6u8x/image/upload/v1677774221/development/n8oswei2xbr7321k6uo3uvgjuqyn.jpg")
tragedie = Artist.new(name: "Tragedie", category: "Rnb", price: 5000, description: "Trag??die est un groupe de RnB et de hip-hop fran??ais, originaire de Nantes, en Loire-Atlantique fond?? par Daniel Guiro et Thierry Rakotomanga. Le groupe se popularise en 2003 avec le single Hey oh. Il se dissout en 2005 et se reforme une d??cennie plus tard en 2015 aux c??t??s d???Az sous le nom Trag??die 2.0.", user_id: timbaland.id)
tragedie.photo.attach(io: tragedie_photo, filename: "tragedie.png", content_type: "image/png")
tragedie.save

nuttea_photo = URI.open("https://res.cloudinary.com/ddq1d6u8x/image/upload/v1677837096/production/ijlt0urnunqdp82b1hbdob7wlvm2.jpg")
nuttea = Artist.new(name: "Nuttea", category: "Ragga", price: 900, description: "Daddy Nuttea ou simplement Nuttea, de son vrai nom Olivier Lara1, est un artiste de ragga fran??ais n?? le 26 d??cembre 1968 en Guadeloupe et arriv?? ?? Paris ?? l?????ge de six ans2. Il a d??but?? ?? la fin des ann??es 1980 avec le sound system High Fight International3, qui regroupait ?? l?????poque Polino (selector), TipTop (operator) et comme DJ et chanteurs : Tonton David, F??f?? Typical et Don Lickshot.", user_id: jayz.id)
nuttea.photo.attach(io: nuttea_photo, filename: "nuttea.png", content_type: "image/png")
nuttea.save

britney_spears_photo = URI.open("https://res.cloudinary.com/ddq1d6u8x/image/upload/v1677837097/production/9ryfw5d0neg8fxtev5j58b3sfmpx.jpg")
britney_spears = Artist.new(name: "Britney Spears", category: "Pop", price: 95000, description: "Britney Spears, n??e le 2 d??cembre 1981 ?? McComb, aux Etats-Unis, est une chanteuse, danseuse, actrice et femme d???affaires am??ricaine. Souvent appel??e la Princesse de la pop, elle est reconnue pour avoir influenc?? la pop adolescente ?? la fin des ann??es 1990 et au d??but des ann??es 2000.", user_id: drdre.id)
britney_spears.photo.attach(io: britney_spears_photo, filename: "britney_spears.png", content_type: "image/png")
britney_spears.save

anastacia_photo = URI.open("https://res.cloudinary.com/ddq1d6u8x/image/upload/v1677774226/development/4acftpwleqxrxhmkr0xnhwijk2gh.jpg")
anastacia = Artist.new(name: "Anastasia", category: "Pop", price: 45000, description: "Anastacia Lyn Newkirk, n??e le 17 septembre 1968 ?? Chicago, est une chanteuse de pop, soul et d???influence rock.", user_id: jayz.id)
anastacia.photo.attach(io: anastacia_photo, filename: "anastacia.png", content_type: "image/png")
anastacia.save

sean_paul_photo = URI.open("https://res.cloudinary.com/ddq1d6u8x/image/upload/v1677774227/development/22j16relp34gc2a8x11dk7mhxew2.jpg")
sean_paul = Artist.new(name: "Sean Paul", category: "Rnb", price: 80000, description: "Sean Paul Ryan Francis Henriques, plus connu sous le nom de sc??ne Sean Paul, est un chanteur jama??cain de dancehall et de reggae, n?? le 9 janvier 1973 ?? Kingston. Il a produit six albums tout au long de sa carri??re : Stage One, Dutty Rock, The Trinity, Imperial Blaze Tomahawk Technique et Full Frequency.", user_id: timbaland.id)
sean_paul.photo.attach(io: sean_paul_photo, filename: "sean_paul.png", content_type: "image/png")
sean_paul.save

ricky_martin_photo = URI.open("https://res.cloudinary.com/ddq1d6u8x/image/upload/v1677774228/development/h57snmrx1ka0hdu2lc84d6gmjwr8.webp")
ricky_martin = Artist.new(name: "Ricky Martin", category: "Latino", price: 52000, description: "Ricky Martin n?? Enrique Morales est n?? le 24 d??cembre 1971 ?? San Juan, ?? Porto Rico, est un chanteur et acteur portoricain, naturalis?? espagnol. Ricky Martin est consid??r?? comme le ?? roi de la pop latino-am??ricaine ??. Il a vendu plus de 90 millions d???albums.", user_id: jayz.id)
ricky_martin.photo.attach(io: ricky_martin_photo, filename: "ricky_martin.png", content_type: "image/png")
ricky_martin.save

christina_aguilera_photo = URI.open("https://res.cloudinary.com/ddq1d6u8x/image/upload/v1677774231/development/zqc4risuqzk351dxstqa9pr179x1.jpg")
christina_aguilera = Artist.new(name: "Christina Aguilera", category: "Pop", price: 38000, description: "Christina Mar??a Aguilera, n??e le 18 d??cembre 1980 ?? Staten Island ?? New York, est une auteure-compositrice-interpr??te, femme d???affaires, actrice et philanthrope am??ricaine. En 1993, ?? seulement 12 ans, elle lance sa carri??re dans The Mickey Mouse Club.", user_id: timbaland.id)
christina_aguilera.photo.attach(io: christina_aguilera_photo, filename: "christina_aguilera.png", content_type: "image/png")
christina_aguilera.save

larusso_photo = URI.open("https://res.cloudinary.com/ddq1d6u8x/image/upload/v1677837103/production/kk4g2szpvlc0i92ap13s7yvszp8p.webp")
larusso = Artist.new(name: "Larusso", category: "Pop", price: 1400, description: "Larusso, n??e Laetitia Serero, est une chanteuse fran??aise n??e le 11 octobre 1979 ?? Paris. Elle conna??t le succ??s en 1999 avec la reprise du titre Tu m???oublieras. Elle a vendu pr??s de 2 millions de disques au cours de sa carri??re.", user_id: jayz.id)
larusso.photo.attach(io: larusso_photo, filename: "larusso.png", content_type: "image/png")
larusso.save

usher_photo = URI.open("https://res.cloudinary.com/ddq1d6u8x/image/upload/v1677837104/production/zg9b2l0r7by1l2xmnxzr6cp3dvvz.jpg")
usher = Artist.new(name: "Usher", category: "Rnb", price: 62000, description: "Usher, de son nom complet Usher Raymond IV, n?? le 14 octobre 1978 ?? Dallas, au Texas, est un chanteur de RnB, danseur, parolier et acteur am??ricain.", user_id: drdre.id)
usher.photo.attach(io: usher_photo, filename: "usher.png", content_type: "image/png")
usher.save

akon_photo = URI.open("https://res.cloudinary.com/ddq1d6u8x/image/upload/v1677774235/development/uecf7sc7p87bdihbhos3h0ybo3om.jpg")
akon = Artist.new(name: "Akon", category: "Rnb", price: 66000, description: "Akon, de son vrai nom Aliaune Damala Bouga Time Puru Nacka Lu Lu Lu Badara Akon Thiam, est un chanteur et producteur de RnB am??ricain, n?? le 16 avril 1973 ?? Saint-Louis, dans le Missouri. Son premier single Locked Up et son premier album Trouble sont sortis en 2004.", user_id: timbaland.id)
akon.photo.attach(io: akon_photo, filename: "akon.png", content_type: "image/png")
akon.save

kyo_photo = URI.open("https://res.cloudinary.com/ddq1d6u8x/image/upload/v1677765256/development/m726dthpp3vdokwjayi7ogsapmrg.jpg")
kyo = Artist.new(name: "Kyo", category: "Pop", price: 10000, description: "Kyo est un groupe de pop-rock fran??ais. Form?? en 1994, le groupe est r??v??l?? au grand public avec les albums ?? succ??s Le Chemin en 2003 et 300 l??sions en 2004. ??prouv?? et en manque d???inspiration, le groupe se met en pause en 2008 avant de faire son retour en 2014 avec l???album L?????quilibre.", user_id: jayz.id)
kyo.photo.attach(io: kyo_photo, filename: "kyo.png", content_type: "image/png")
kyo.save

keenv_photo = URI.open("https://res.cloudinary.com/ddq1d6u8x/image/upload/v1677765257/development/8fyl08utm42qcfdn2tmvugz53qqu.jpg")
keenv = Artist.new(name: "KeenV", category: "Pop", price: 5000, description: "Kevin Bonnet, dit Keen???V, n?? le 31 janvier 1983 ?? Rouen, en Seine-Maritime, est un auteur-compositeur-interpr??te fran??ais. En 2008, il se fait conna??tre en discoth??que gr??ce ?? son titre ?? l???horizontale et en 2011, il conna??t le succ??s ?? partir du titre J???aimerais trop.", user_id: timbaland.id)
keenv.photo.attach(io: keenv_photo, filename: "keenv.png", content_type: "image/png")
keenv.save

aventura_photo = URI.open("https://res.cloudinary.com/ddq1d6u8x/image/upload/v1677765258/development/c196v0rzevlz2ok4azok6x4vligf.jpg")
aventura = Artist.new(name: "Aventura", category: "Latino", price: 25000, description: "Aventura est un groupe de bachata qui chante en espagnol ou en spanglish, form?? en 1994 dans le Bronx de New York. Le groupe conna??t un grand succ??s en 2002 avec la chanson Obsesi??n.", user_id: drdre.id)
aventura.photo.attach(io: aventura_photo, filename: "aventura.png", content_type: "image/png")
aventura.save

puts "Creating bookings..."
Booking.create(user_id: timbaland.id, artist_id: florida.id, date: (Date.today + 45))
Booking.create(user_id: timbaland.id, artist_id: britney_spears.id, date: (Date.today + 22))

puts "Finished!"
