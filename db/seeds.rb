pets = [  ['Dog', File.open('app/assets/images/pet_icons/dog.jpg') ],
          ['Cat', File.open('app/assets/images/pet_icons/cat.jpg') ],
          ['Berd', File.open('app/assets/images/pet_icons/parrot.jpg')],
          ['Fish', File.open('app/assets/images/pet_icons/fish.jpg')],
          ['Reptile', File.open('app/assets/images/pet_icons/reptile.jpg')],
          ['Rabit', File.open('app/assets/images/pet_icons/rabit.jpg')]]

pets.each do |name, picture|
  pet = Pet.create(name: name, picture: picture)
end

dog = Pet.find_by(name: 'Dog')
cat = Pet.find_by(name: 'Cat')

['мяч', 'фризби', 'резиновая игрушка', 'игрушка для перетягивания', 'мягкая игрушка' ].each do |toy_name|
end

brands = [
  ['ROYAL CANIN', 'Франция', 'Французская компания Royal Canin за свою почти 50-летнюю историю завоевала и прочно закрепила лидирующие 
  позиции на международном рынке сухих кормов для домашних животных. Доказательством ее успеха служат сытые и здоровые питомцы по всему миру.
  С момента своего основания в 1967 году ветеринаром Жаном Катари компания Royal Canin придерживалась идеи создания оптимального и 
  сбалансированного питания для кошек и собак. Каждый созданный продукт был результатом глубоких исследований, долгих наблюдений и 
  многочисленных тестирований и по праву характеризовался как инновационный. Основой этики бренда Royal Canin всегда было понимание, что при 
  создании корма на первом месте всегда остается животное, его индивидуальные особенности и потребности, а уже далее идет коммерческая 
  составляющая. "Наука и уважение" - таков девиз компании Royal Canin.', File.open('app/assets/images/brand/brk.jpg')], 
  ['GiGwi', 'Китай', 'На нашем сайте представлена разнообразная продукция для домашних животных от производителя GiGwi (ГиГви). Вся продукция
  изготавливается в соответствии с высокими стандартами качества из 100% безопасных и прочных материалов, подобранных таким образом, чтобы 
  максимально увеличить срок эксплуатации вашей покупки. Отдельно хочется отметить яркие и высококачественные игрушки для собак и кошек 
  GiGwi (ГиГви), которые помогут занять вашего пушистого друга на долгое время, способствуют развитию охотничьих инстинктов и улучшат 
  настроение животного. Особенно питомцам понравятся встроенные внутрь пищащие элементы и хрустящие бутылки, которые во время азартной игры 
  будут издавать различные звуки. Ассортимент игрушек настолько велик, что вы без особого труда найдете игрушку GiGwi (ГиГви), которая 
  придется по душе именно вашему любимцу. А отдохнуть после активной игры животное сможет на мягкой и уютной подстилке от этого же 
  производителя.', File.open('app/assets/images/brand/gigwi.jpg') ],
  ['Trixie', 'Германия', 'Домашние животные неизменно остаются  в центре внимания компании TRIXIE уже более 40 лет. Наш интерес и страстная
  любовь к домашним животным и их владельцам помогают нам непрерывно развиваться. В качестве лидера рынка TRIXIE Heimtierbedarf GmbH & Co 
  KG регулярно продаёт более чем 6 000 товаров для собак, кошек, грызунов, рыб и рептилий около 5 000 клиентам в Германии.', File.open('app/assets/images/brand/brtrixie.jpg')], 
  ['Fat Cat', 'США', 'FatCat специализируется на выпуске игрушек для домашних животных. Неиссякаемая фантазия дизайнеров помогает создать 
  потрясающе интересные игрушки, которые никогда не смогут надоесть питомцу. Летающие диски, косточки, мягкие игрушки с пищалками, удочки и 
  перетяжки вызывают неподдельный интерес и надолго привлекают внимание животного. Игрушки FatCat предназначены как для самостоятельного 
  досуга питомца, так и для совместной игры с хозяином. Прочные качественные материалы помогают продлить жизнь любимой игрушке, а продуманные
  конструкции исключают получение травм во время игры. Разнообразие размеров FatCat помогает легко подобрать игрушку для любой кошки и собаки. Вся продукция FatCat выполнена из экологически чистых материалов и соответствует мировым стандартам качества и сертификатам 
  безопасности.',  File.open('app/assets/images/brand/fatcat.jpg') ],
  ['Rukka', 'Финляндия', 'Формула успеха бренда Rukka – патенты, материалы, ноу-хау, водонепроницаемость, дизайн, высокий стандарт и 
  инновации. Rukka – это патентованные технологии, тестированные высококачественные материалы в сочетании с профессионализмом и страстным 
  желанием делать одежду.', File.open('app/assets/images/brand/brrukka.png')  ],
  ['Hunter', 'Германия', 'Продукция немецкого концерна Hunter хорошо известна владельцам животных во всём мире. Это широкий ассортимент 
  различных аксессуаров — ошейников, шлеек, поводков из кожи и нейлона, подстилки, инструменты по уходу за шерстью, миски и игрушки.
  HUNTER International GmbH является традиционным семейным бизнесом и с момента своего основания в 1980 году специализируется на 
  производстве высококачественных аксессуаров для собак, кошек и лошадей', File.open('app/assets/images/brand/brhunter.jpg') ],
  ['Catsan', 'США', 'Впитывающий гигиенический наполнитель Catsan разработан в соответствии с самыми высокими требованиями гигиены кошек. 
  Впитывающий наполнитель Catsan представляет собой белые гранулы, которые состоят из натурального кварцевого песка, очищенного мела и н
  атуральных минеральных добавок. Мелкопористые гранулы впитывают влагу, как губка. Запатентованная технология Extra Mineral Protection 
  обеспечивает дополнительную защиту от запаха: активные вещества пресекают размножение бактерий и, соответсвенно, удерживают запах внутри  
  гранулы.', File.open('app/assets/images/brand/catsan.jpg')],
  ['DUKES FARM', 'Великобритания', 'Больше мяса – больше пользы! Корма DUKE’S FARM – это полноценные сбалансированные корма, произведенные 
  в Англии с целью обеспечить собак и кошек разных пород и всех возрастов натуральным высококачественным питанием. Корма DUKE’S FARM 
  представляют собой высокобелковую и низкоуглеводную диету, максимально приближенную к рациону хищника в природе.', 
  File.open('app/assets/images/brand/duke.jpg')]
]    

brands.each do |name, country, description, picture|
  Brand.create( name: name, country: country, description: description, picture: picture)
end

rukka = Brand.find_by(name: 'Rukka')
trixie = Brand.find_by(name: 'Trixie')
hunter = Brand.find_by(name: 'Hunter')
gigwi = Brand.find_by(name: 'GiGwi')
catsan = Brand.find_by(name: 'Catsan')
royal_canin = Brand.find_by(name: 'ROYAL CANIN')
fat_cat = Brand.find_by(name: 'Fat Cat')
duke = Brand.find_by(name: 'DUKES FARM')


stuffs = [ 
  [dog, 'toys', (6..10).to_a.sample, 'мяч', gigwi, 'мяч из плотной резины, размер средний', '250.0', File.open('app/assets/images/dog toys/ball1.jpg')],
  [dog, 'toys', (6..10).to_a.sample, 'мяч', gigwi, 'мяч из плотной резины, размер средний', '240.0', File.open('app/assets/images/dog toys/ball2.jpg')],
  [dog, 'toys', (6..7).to_a.sample,'мяч', gigwi, 'мяч теннисный', '120.0', File.open('app/assets/images/dog toys/ball3.jpg')],
  [dog, 'toys', (15..20).to_a.sample, 'игрушка для перетягивания', gigwi, 'тряпочная игрушка для перетягивания', '300.0', File.open('app/assets/images/dog toys/rag1.jpg')],
  [dog, 'toys', (15..20).to_a.sample,'игрушка для перетягивания', gigwi, 'тряпочная игрушка для перетягивания', '350.0', File.open('app/assets/images/dog toys/rag2.jpg')],
  [dog, 'toys', (15..20).to_a.sample,'игрушка для перетягивания', gigwi, 'тряпочная игрушка для перетягивания в виде веревки с узлами', '350.0', File.open('app/assets/images/dog toys/rope.jpg')],
  [dog, 'toys', (20..30).to_a.sample,'фризби', hunter, 'фризби для игры во дворе или на воде', '366.5', File.open('app/assets/images/dog toys/freesby.jpg')],
  [dog, 'toys', (20..30).to_a.sample,'фризби', hunter, 'фризби для игры во дворе или на воде ', '400.0', File.open('app/assets/images/dog toys/freesby2.jpg')],
  [dog, 'toys', (15..20).to_a.sample, 'резиновая игрушка', hunter, 'игрушка из плотной резины с пищалкой в виде косточки', '280.0', File.open('app/assets/images/dog toys/bone.jpg')],
  [dog, 'toys', (15..20).to_a.sample, 'резиновая игрушка', hunter, 'игрушка из плотной резины в виде кольца', '380.0', File.open('app/assets/images/dog toys/ring.jpg')],
  [dog, 'toys', (15..20).to_a.sample, 'резиновая игрушка', hunter, 'резиновая игрушка с пищалкой в виде бегемота', '280.0', File.open('app/assets/images/dog toys/hipp.jpg')],


  [dog, 'foods','', 'корм сухой', royal_canin, 'Urban life для крупных пород собак', '0', File.open('app/assets/images/dog foods/drk-2.jpg')],
  [dog, 'foods','', 'корм сухой', royal_canin, 'x-small для миниатюрных пород',  '0', File.open('app/assets/images/dog foods/drk.jpg')],
  [dog, 'foods','','корм сухой', royal_canin, 'size giant adult для гигантских пород собак', '0', File.open('app/assets/images/dog foods/drk-6.jpg')],
  [dog, 'foods','','корм сухой', royal_canin,'size medium junior для щенков средних пород собак', '0', File.open('app/assets/images/dog foods/drk-7.jpg')],
  [dog, 'foods','','корм сухой', royal_canin,'size giant junior для щенков гигантских пород собак', '0', File.open('app/assets/images/dog foods/drk-8.jpg')],
  [dog, 'foods','','корм сухой', royal_canin,'size giant pappy для щенков гигантских пород собак', '0', File.open('app/assets/images/dog foods/drk-9.jpg')],
  [dog, 'foods','','корм сухой', royal_canin,'labrador junior для щенков породы лабрадор', '0', File.open('app/assets/images/dog foods/drk-11.jpg')],
  [dog, 'foods','','корм сухой', royal_canin, 'german shepard для крупных собак породы немецкая овчарка', '0', File.open('app/assets/images/dog foods/drk-12.jpg')],

  [dog, 'foods','','консервы', duke, 'консервы для взрослых собак со вкусом ягненока со шпинатом', '150', File.open('app/assets/images/dog foods/duke1.jpg')],
  [dog, 'foods','','консервы', duke, 'консервы для взрослых собак со вкусом кролика со шпинатом', '150', File.open('app/assets/images/dog foods/duke2.jpg')],
  [dog, 'foods','','консервы', duke, 'консервы для взрослых собак со вкусом индейки со шпинатом', '150', File.open('app/assets/images/dog foods/duke3.jpg')],
  
  [dog, 'foods','','корм сухой', royal_canin,'size medium adult для средних пород',  '0', File.open('app/assets/images/dog foods/drk-8.jpg'), '10'],
  [dog, 'foods','','корм сухой', royal_canin,'size maxi adult для крупных пород собак', '0', File.open('app/assets/images/dog foods/drk-5.jpg'), '10'],
  [dog, 'foods','','корм сухой', royal_canin, 'size maxi dermacomfort для крупных пород собак c чувствительной кожей', '0', File.open('app/assets/images/dog foods/drk-10.jpg'), '10'],


  [dog, 'leads', '1,5', 'поводок', rukka, 'длина 1,5 м, ширина 3 см поводок из прочного синтетического материала, рассчитан на собаку весом до 15 кг', '800.0', File.open('app/assets/images/dog leads/lead2.jpg')],
  [dog, 'leads', '1,5', 'поводок', hunter, 'длина 1,5 м, ширина 3 см Кожаный поводок, плетение - косичка, рассчитан на собаку средних размеров. до 15 кг', '750.0', File.open('app/assets/images/dog leads/lead7.jpg')],
  [dog, 'leads', '2', 'поводок', hunter, 'длина 2 м поводок из прочного синтетического материала, рассчитан на собаку весом до 20 кг', '600.0', File.open('app/assets/images/dog leads/lead8.jpg')],
  [dog, 'leads', '5',  'поводок', gigwi, 'длина 5 м поводок-рулетка из прочного синтетического материала, рассчитан на собаку весом до 15 кг', '2000.0', File.open('app/assets/images/dog leads/lead8.jpg')],
  [dog, 'leads','4', 'поводок', gigwi, 'длина 4 м поводок-рулетка из прочного синтетического материала, рассчитан на собаку весом до 7 кг', '1400.0', File.open('app/assets/images/dog leads/lead4.jpg')],
  [dog, 'leads',  '6','поводок', hunter, 'длина 6 м поводок-рулетка из прочного синтетического материала, рассчитан на собаку весом до 15 кг', '2000.0', File.open('app/assets/images/dog leads/lead6.jpg')],
  [dog, 'leads',  '7', 'шлейка', rukka, 'шлейка из мягкого синтетического материала, рассчитана на собаку весом до 15 кг', '765.0', File.open('app/assets/images/dog leads/breast-band1.jpg')],
  [dog, 'leads',  '7', 'шлейка', gigwi, 'шлейка из мягкого синтетического материала, рассчитана на собаку средних размеров', '780.0', File.open('app/assets/images/dog leads/breast_band2.jpg')],
  [dog, 'leads', '40','ошейник', gigwi, '25 - 40 см, ширина 3 см ошейник из мягкого синтетического материала', '780.0', File.open('app/assets/images/dog leads/collar1.jpg')],
  [dog, 'leads','25', 'ошейник', rukka, '15 - 25 см, ширина 1.5 см ошейник из мягкого синтетического материала ', '600.0', File.open('app/assets/images/dog leads/collar.jpg')],
  [dog, 'leads', '35','ошейник', rukka, '25 - 35 см, ширина 2 см ошейник из мягкого синтетического материала ', '680.0', File.open('app/assets/images/dog leads/collar3.jpg')],

  [dog, 'leads','2','поводок', rukka, 'длина 2 м поводок из прочного синтетического материала, рассчитан на крупную собаку', '600.0', File.open('app/assets/images/dog leads/lead8.jpg'), '20'],
  [dog, 'leads','40','ошейник', rukka, '30 - 40 см, ширина 3 см ошейник из мягкого синтетического материала', '780.0', File.open('app/assets/images/dog leads/collar1.jpg'), '10'],
  [dog, 'leads', '35','ошейник', rukka, '25 - 35 см, ширина 2 см ошейник из мягкого синтетического материала ', '680.0', File.open('app/assets/images/dog leads/collar3.jpg'), '5'],
  [dog, 'leads','4', 'поводок', rukka, 'длина 4 м поводок-рулетка из прочного синтетического материала, рассчитан на маленькую собаку', '1400.0', File.open('app/assets/images/dog leads/lead4.jpg'), '8'],

  [cat, 'toys', (4..6).to_a.sample, 'мяч', trixie, 'мяч из веревки, размер средний', '140.0', File.open('app/assets/images/cat toys/ball4.jpg')],
  [cat,  'toys', (4..6).to_a.sample, 'мяч', trixie, 'мяч меховой', '70.0', File.open('app/assets/images/cat toys/furball.jpg')],
  [cat,  'toys', (25..45).to_a.sample,'удочка',trixie, 'игрушка удочка с перьями', '190.0', File.open('app/assets/images/cat toys/fishrod1.jpg')],
  [cat,  'toys', (25..45).to_a.sample,'удочка',trixie, 'игрушка удочка с перьями', '190.0', File.open('app/assets/images/cat toys/fishrod2.jpg')],
  [cat, 'toys', (25..45).to_a.sample, 'удочка', trixie, 'игрушка удочка с меховым хвостом', '200.0', File.open('app/assets/images/cat toys/fishrod3.jpg')],
  [cat, 'toys', (8..10).to_a.sample, 'мягкая игрушка', fat_cat,'мягкая игрушка-хомячок с мятой', '350.0', File.open('app/assets/images/cat toys/mole.jpg')],
  [cat, 'toys', (8..10).to_a.sample,'мягкая игрушка', fat_cat, 'мягкая игрушка-белочка с мятой', '366.5', File.open('app/assets/images/cat toys/squirrel.jpg')],
  [cat, 'toys', (8..10).to_a.sample,'дразнилка', fat_cat, 'игрушка-дразнилка в виде перчатки', '350.0', File.open('app/assets/images/cat toys/glove.jpg')],
  [cat, 'toys', (8..10).to_a.sample,'заводная игрушка',fat_cat, 'игрушка заводная в виде мышки', '210.0', File.open('app/assets/images/cat toys/mouse.jpg')],
  [cat, 'toys', (5..10).to_a.sample,'заводная игрушка', fat_cat, 'игрушка заводная в виде мышки', '200.0', File.open('app/assets/images/cat toys/mouse2.jpg')],
  [cat, 'toys', (35..36).to_a.sample,'автоматическая игрушка', fat_cat, 'автоматическая игрушка в виде кольца с движущимися мячиками', '2280.0', File.open('app/assets/images/cat toys/circleball.jpg')],

  [cat, 'foods', '', 'корм сухой', royal_canin, 'для породы сфинкс старше 12 месяцев', '0', File.open('app/assets/images/cat foods/crk.jpg')],
  [cat, 'foods','', 'корм сухой', royal_canin, 'для персидской породы старше 12 месяцев', '0', File.open('app/assets/images/cat foods/crk-2.jpg')],
  [cat, 'foods','', 'корм сухой', royal_canin, 'для кошек, следящих за весом', '0', File.open('app/assets/images/cat foods/crk-3.jpg')],
  [cat, 'foods','', 'корм сухой', royal_canin, 'для вывода шерсти из желудка', '0', File.open('app/assets/images/cat foods/crk-4.jpg')],
  [cat, 'foods','', 'корм сухой', royal_canin, 'для привиредливых ко вкусу кошек', '0', File.open('app/assets/images/cat foods/crk-5.jpg')],
  [cat, 'foods','', 'корм сухой', royal_canin, 'для породы персидская короткошерстная старше 12 месяцев', '0', File.open('app/assets/images/cat foods/crk-6.jpg')],
  [cat, 'foods','', 'корм сухой', royal_canin, 'для кастрированных и стерилизованных кошек', '0', File.open('app/assets/images/cat foods/crk-8.jpg')],

  [cat, 'foods','','консервы', duke, 'консервы для стерилизованных кошек индейка, клюква', '99', File.open('app/assets/images/cat foods/duke4.jpg')],
  [cat, 'foods','','консервы', duke, 'консервы для кошек утка, черника', '99', File.open('app/assets/images/cat foods/duke5.jpg')],
  [cat, 'foods','','консервы', duke, 'консервы для стерилизованных кошек ягненок, брусника', '99', File.open('app/assets/images/cat foods/duke6.jpg')],


  [cat, 'filler', '', 'наполнитель для туалета', catsan, 'Комкующийся гигиенический наполнитель Catsan.', '', File.open('app/assets/images/catsan.jpg'), '10']]
# разработан в соответствии с самыми высокими требованиями гигиены кошек. 
#   Впитывающий наполнитель Catsan представляет собой белые гранулы, которые состоят из натурального кварцевого песка, очищенного мела и натуральных минеральных добавок. Мелкопористые гранулы 
#   впитывают влагу, как губка. Запатентованная технология Extra Mineral Protection обеспечивает дополнительную защиту от запаха: активные вещества пресекают размножение бактерий и, соответсвенно, 
#   удерживают запах внутри гранулы



stuffs.each do |pet, group, size, name, brand, annotation, price, picture, sale |
  stuff = Stuff.create( pet: pet, group: group, size: size, name: name, brand: brand, annotation: annotation, price: price, picture: picture, sale: sale || 0)
end


(Stuff.foods.where(name: 'корм сухой') + Stuff.filler).each do |stuff|
  weights = [[(2..5).to_a.sample, (600..2000).to_a.sample], [ (7..10).to_a.sample, (3000..4500).to_a.sample], [ (11..15).to_a.sample, (3000..7000).to_a.sample]]
  weights.each do |size, price|
    Weight.create(stuff: stuff, size: size, price: price)
  end
end



Stuff.leads.shuffle.take(8).each do |lead|
  lead.update!({:color => ['red', 'blue', 'black', 'brown', 'grey', 'pink', 'green', 'yellow', 'violet'].sample([1,2,3,4,5,6,7,8,9].sample)})
end   




discounts = [
['СКИДКА 30% НА КОРМ SUMMIT HOLISTIC ДЛЯ КОШЕК!', 'для котят и кошек три вида мяса: цыпленок, лосось и индейка', 'Summit Holistic для котят и кошек три вида мяса с цыпленком, лососем и индейкой, 1.8 кг.
Оригинальный рецепт создан с исключительным подбором высококачественных ингредиентов для восхитительного вкуса и максимальной питательной ценности.
- содержит только натуральные ингредиенты от давно зарекомендовавших себя фермерских хозяйств компании Petcurean (производители холистик кормов GO! и NOW! Natural)
- не содержит субпродуктов, искусственных красителей, сои, кукурузы, мясных ингредиентов, выращенных на гормонах', File.open('app/assets/images/discount/summit.jpg')],

['СКИДКА 10% НА НАПОЛНИТЕЛИ CATSAN!', '2 вида: впитывающий и комкующийся', 'Уникальные гранулы Catsan состоят из натуральных компонентов, позволяющих быстро впитывать влагу и предотвращать распространение
  бактерий и неприятного запаха. Белые гранулы наполнителя содержат специально разработанную формулу Extra Mineral Protection, благодаря которой Catsan превратит уход за питомцем в простое и приятное занятие.
- не пачкают шерстку
- не раздражают чувствительную кожу
- не прилипают к лапам', File.open('app/assets/images/discount/catsan.jpg')],

['СКИДКА 10% НА ПАУЧИ ДЛЯ КОШЕК GOURMET!', 'Успуй купить всего по 22 рубля', 'Для самых привередливых гурманов!
Скидка 10% на пакетики влажного корма для кошек Gourmet Mon Petit.
Нежнейшие кусочки с мясом или рыбой, приготовленные в аппетитном соусе, которые стали доступны в мини-упаковке по 50г., как раз на один прием. Всегда свежее угощение в тарелке у вашего питомца!', File.open('app/assets/images/discount/gourmet.jpg')],

['ПАУЧИ FELIX ВСЕГО ПО 20 РУБЛЕЙ!', 'Успей купить со скидкой 20%', 'Разнообразие вкусов! Паучи Felix для кошек со скидкой 20%', File.open('app/assets/images/discount/felix.jpg')]
 ]

discounts.each do |name, annotation, description, picture|
  discount = Discount.create(name: name, annotation: annotation, description: description, picture: picture )
end

  

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
