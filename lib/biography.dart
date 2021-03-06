import 'package:flutter/material.dart';
import 'gallery.dart';

class Biography extends StatelessWidget {
  final String text0 = '''
  Я родился в райцентре Шипуново, а Шипуновский район занимает большую степную зону, две полосы ленточного бора и предгорья Алтая.
   
  …Когда мне исполнилось 10\u00A0лет, в Шипуново открыли музыкальную школу. А до того мне уже удавалось прикоснуться к «волшебным ящикам» – старой гармошке и баяну. У одноклассницы Люси было единственное в селе пианино. Меня завораживали просто извлекаемые звуки, не говоря уж об исполняемой музыке (её мама умела играть на пианино). И, естественно, я пожелал учиться в музыкальной школе сразу по двум специальностям: фортепиано и баян. В процессе обучения, наблюдая, как мой учитель ремонтирует школьный баян, я стал снимать крышки на своем баяне и изучать его тайны.
  ''';

  final List<GalleryItem> images0 = <GalleryItem>[
    GalleryItem(
      id: 'g00',
      resource: 'assets/images/biography/shipunovo.jpg',
      description: 'Шипуновский район. Источник: posibiri.ru',
    ),
    GalleryItem(
      id: 'g01',
      resource: 'assets/images/biography/shipunovo1.jpg',
      description:
          'Шипуновский район. Государственный природный комплексный заказник краевого значения «Чарышская\u00A0степь». Разнотравная степь. Источник: shipunovo.ru',
    ),
    GalleryItem(
      id: 'g02',
      resource: 'assets/images/biography/shipunovo2.JPG',
      description:
          'Шипуновский район. Государственный природный комплексный заказник краевого значения «Чарышская\u00A0степь». Вид в долину. Источник: shipunovo.ru',
    ),
    GalleryItem(
      id: 'g03',
      resource: 'assets/images/biography/shipunovo3.JPG',
      description:
          'Шипуновский район. Государственный природный комплексный заказник краевого значения «Чарышская\u00A0степь». Вид на террасу. Источник: shipunovo.ru',
    ),
  ];

  final String text1 = '''
  От моей родины до гор – рукой подать, но в детстве я и подумать не мог, что там, в горах, лежит загадка для моей судьбы, и тайна эта принадлежит скифам, населявшим Алтайские горы двадцать пять веков назад. Мой интерес «разбирать и ремонтировать» музыку продолжал развиваться. Я частенько практиковался в этом на своем баяне и пианино. В Рубцовском музыкальном училище мне посчастливилось обучаться игре на баяне и пройти краткий курс ремонта и настройки музыкальных инструментов у большого специалиста с широким жизненным кругозором Петром\u00A0Андреевичем\u00A0Шардыко, приехавшего из Белоруссии. В результате по окончании училища я начал трудовую деятельность в своей родной шипуновской музыкальной школе не только как преподаватель по классу баяна, аккордеона, балалайки, домры, гитары, но и как мастер\u2011ремонтировщик музыкальных инструментов. После Алтайского Государственного института культуры я учился заочно как балалаечник в Новосибирской государственной консерватории им.\u00A0М.\u00A0И.\u00A0Глинки, уже переехав на жительство в Барнаул, где меня сразу же пригласил в свой тогда еще просто городской самодеятельный оркестр Е.\u00A0И.\u00A0Борисов, где я не только играл на балалайке, но и ремонтировал все музыкальные инструменты оркестра.
   
  Для ремонта струнных щипковых инструментов и изготовления деки требуется еловая древесина, точнее, отборная резонансная ель. А где ее взять? Московские мастера добывают ее на Урале, на Тянь-Шане… Ну, а я решил забраться на Алтайские горы. Это была целая эпопея, сравнимая, разве что, с добычей золота. Сначала требовалось получить разрешение местных властей, затем нанять бригаду лесопильщиков с бензопилой и трейлером и подняться повыше в горы, где меньше влаги. Чтобы найти то, что нужно, пришлось «свалить» четыре елки. Напилили два «куба» чурбаков (комлевая часть) и привезли в ближайшее село. Затем на перекладных в Горно-Алтайск, в Бийск, а в Барнаул древесина приехала уже в конце весны.
   
  На летних каникулах, сначала бензопилой, пилил чурбаки на четыре части радиального распила, потом перевез их в школьную столярку. Далее надо было прострогать полено, изучая слои (они должны быть тонкими, частыми, не смолистыми, без сучков) и отпиливать на циркулярке дощечки толщиной 10 миллиметров. Кстати, в отходы идет примерно 80 процентов. И вот на этой работе к концу дня (в ушах уже звенело), изрядно подустав и потеряв бдительность, зевнул – и очередную чурку выбило, а моя левая рука стала падать на пилу… Если бы не успел ее отдернуть, вся кисть руки была бы оторвана, а так мне перерезало только до середины ладони кости, сухожилия, сосуды, нервы. Все дальнейшее – как в страшном кошмаре. Целый месяц после операции провел в хирургическом отделении без сна. Конечно, музыкант на этом «кончается», но желание остаться в рядах артистов оркестра привело меня к изготовлению владимирских рожков, обучению игре на этом славянском инструменте. По моей инициативе и при поддержке нашего руководителя Е.\u00A0И.\u00A0Борисова был создан ансамбль рожечников и я даже делал инструментовки для этого ансамбля. Шесть месяцев спустя после трагедии я уже играл в «Сибири» на балалайке-альт, и только через полтора года мне наконец-то нашли замену. 
   
  Не было бы счастья… Я решил совершенствоваться как мастер по изготовлению музыкальных инструментов. 
  ''';

  final List<GalleryItem> images1 = <GalleryItem>[
    GalleryItem(
      id: 'g10',
      resource: 'assets/images/biography/horn.jpg',
      description:
          'Владимирский рожок хроматический из красного и черного дерева со съемным мундштуком',
    ),
    GalleryItem(
      id: 'g11',
      resource: 'assets/images/biography/first_topshur.png',
      description:
          'Первый топшур А.\u00A0Гнездилова, расписанный известным художником Республики\u00A0Алтай С.\u00A0Дыковым',
    ),
    GalleryItem(
      id: 'g12',
      resource: 'assets/images/biography/nogon_topshur.png',
      description: 'Н.\u00A0Шумаров со вторым топшуром А.\u00A0Гнездилова',
    ),
    GalleryItem(
      id: 'g13',
      resource: 'assets/images/biography/topshur_mini.jpg',
      description:
          'Мини-топшур (длина 11 см, занесен в книгу рекордов России «Левша»)',
    ),
    GalleryItem(
      id: 'g14',
      resource: 'assets/images/biography/topshur_prima.png',
      description: 'Топшур-прима для оркестра «Сибирь»',
    ),
    GalleryItem(
      id: 'g15',
      resource: 'assets/images/biography/drum_big.jpg',
      description:
          'А.\u00A0Гнездилов с большим шаманским бубном (Для достижения более низких частот приклеил и прошил кожаный кружок с мехом)',
    )
  ];

  final String text2 = '''
  Судьба распорядилась так, что первой серьезной работой стал топшур, заказанный алтайским кайчи – певцом-сказителем Горного Алтая – Ногоном Шумаровым. За несколько минут до выступления в Колонном зале Дома Союзов в Москве возникла необходимость отремонтировать его старенький топшур, и мне удалось это сделать в короткое время. Я предложил Ногону: «Давайте я сделаю Вам новый топшур». Он с радостью принял предложение и по возвращению домой через некоторое время привез из Горно-Алтайска кусок кедра, выдержанный много лет специально для этой цели. Это не просто сушка под крышей, а «вызревание» древесины. Еще привез шкуру кабарги. Пришлось научиться выделывать шкуры, как на барабан, без меха. Дело в том, что в качестве резонатора на алтайских топшурах можно ставить и деревянную деку, и кожаную мембрану. Еще я пофантазировал и вместо традиционной коробочки-головки для настройки вырезал из кедра голову коня-аргамака. В репертуаре оркестра «Сибирь» есть такая пьеса Анохина «Аргымак» («Бег мифического коня»). И мне хотелось, чтобы на моем топшуре зазвучала эта мелодия.
  
  Новый инструмент понравился Шумарову. Он съездил с ним на гастроли в Германию и заказал еще один для Национального драматического театра им.\u00A0П.\u00A0В.\u00A0Кучияк, где известный кайчи работал режиссером. Вскоре моими работами заинтересовался тогдашний министр культуры Республики Алтай В.\u00A0Е.\u00A0Кончев. Он поставил передо мной задачу усовершенствовать топшур и сделать его одной из «визитных карточек» Горного Алтая. На моем верстаке стали рождаться еще икили – смычковые инструменты. Затем, для шаманской мистерии, которую репетировали в Государственной филармонии Республики Алтай, изготовил «чертову дюжину» алтайских шаманских бубнов. Выполнял и заказы онгудайских музыкантов, проживающих совсем не далеко от Пазырыкских курганов. Судьба как будто вела меня, приближая к загадочной точке – в курганах археологи помимо прочих богатств нашли останки музыкального инструмента… 
  ''';

  final List<GalleryItem> images2 = <GalleryItem>[
    GalleryItem(
      id: 'g16',
      resource: 'assets/images/biography/ikili.jpg',
      description: 'Икили, алтайский смычковый инструмент',
    ),
    GalleryItem(
      id: 'g17',
      resource: 'assets/images/biography/drum.jpg',
      description: 'Алтайский шаманский бубен',
    ),
    GalleryItem(
      id: 'g18',
      resource: 'assets/images/biography/drum_handle.jpg',
      description: 'Алтайский шаманский бубен',
    ),
    GalleryItem(
      id: 'g19',
      resource: 'assets/images/biography/drum_expo.jpg',
      description: 'Алтайский шаманский бубен в экспозиции с народным костюмом',
    ),
    GalleryItem(
      id: 'g110',
      resource: 'assets/images/biography/drum_case.jpg',
      description: 'Алтайский шаманский бубен с авторским прочным футляром',
    ),
    GalleryItem(
      id: 'g111',
      resource: 'assets/images/biography.jpg',
      description: 'Алтайский шаманский бубен в руках мастера',
    ),
  ];

  final String text3 = '''
  Однажды при встрече со мной Ногон, глядя вдаль, только ему ведомую, как бы между прочим обмолвился, что хорошо бы воссоздать арфу скифов, которую нашла в 1949\u00A0году в Улаганском районе Горного\u00A0Алтая экспедиция археолога С.\u00A0И.\u00A0Руденко из Государственного Эрмитажа. Арфа с тех пор экспонируется в Эрмитаже в полуразрушенном состоянии, но останки ее помогут восстановить целое.
  
  Я загорелся этой идеей. Первая арфа\u2011фантазия появилась в виде деревянной утицы: голова и шея – это подвижный рычаг, от которого две струны идут к хвосту и закрепляются на палочках\u2011колках для настройки. Подставка выполнена в виде перышка. Эту забавную игрушку любил показывать на своих лекциях\u2011концертах наш известный искусствовед\u2011музыковед, заслуженный деятель Всероссийского музыкального общества Михаил Тимофеевич Стюхин. Затем он предложил на основе описания археологических находок С.\u00A0И.\u00A0Руденко и эрмитажной фотографии, подаренной мне работниками филармонии Республики\u00A0Алтай, осуществить научную реконструкцию скифской арфы. А «утица» эта использовалась позже при записи музыки для оригинального ансамбля петербургским композитором И.\u00A0Мациевским для спектакля. В общем, я получил очередной официальный заказ от Государственного музея истории литературы, искусства и культуры Алтая на изготовление скифской арфы (до этого для музея были изготовлены алтайские топшур, икили, шаманский бубен, домра банджо и варган «Сибирский»). Сложность состояла в том, что ни в описании, ни на фотографии я не нашел некоторых деталей, без которых инструмент звучать не может. В частности, отсутствовала подставка для струн – передатчик колебаний струн на резонатор, и непонятно было, каким образом инструмент настраивался. Пришлось заняться поиском и изучением других подобных инструментов. Таковых больше не оказалось.  
  ''';

  final List<GalleryItem> images3 = <GalleryItem>[
    GalleryItem(
      id: 'g20',
      resource: 'assets/images/biography/harp_ancient.jpg',
      description: 'Останки скифской арфы (Государственный Эрмитаж)',
    ),
    GalleryItem(
      id: 'g21',
      resource: 'assets/images/biography/harp_duck.jpg',
      description: 'Арфа-фантазия «Утица»',
    ),
    GalleryItem(
      id: 'g22',
      resource: 'assets/images/biography/harp_first.jpg',
      description:
          'Первый вариант-гипотеза скифской арфы. Экспонат Государственного музея истории литературы искусства и культуры Алтая',
    ),
    GalleryItem(
      id: 'g23',
      resource: 'assets/images/biography/harp_portrait.jpg',
      description: 'Концертная двухструнная арфа в руках мастера',
    ),
  ];

  final String text4 = ''' 
  Через некоторое время моим опытом реанимации древней арфы заинтересовались в Российском институте истории искусств в Санкт\u2011Петербурге. На Третью международную инструментоведческую конференцию в Санкт\u2011Петербург я привез несколько вариантов\u2011гипотез арфы. Дело в том, что если во втором Пазырыкском кургане были найдены останки, по которым можно точно определить размеры арфы, то в пятом Башадарском кургане нашли только торцевые части. И можно было предположить, что размеры инструментов могли быть разными, а длина рычага позволяла расположить на нем до семи струн. Поэтому у меня появились небольшие двуструнные арфы с приемами игры как на алтайском топшуре и большие многострунные, с арфовыми арпеджиато. А закрепленный подвижно рычаг позволяет делать звуки вибрирующими. Поэтому можно назвать этот инструмент – арфа «поющая». 
   
  Размышляя над увеличением диапазона и, соответственно, возможностей арфы, придумал так называемые ползуны – оловянные цилиндрики, которые надеваются на струны. Передвигая ползуны по струнам, можно менять высоту звука с его фиксацией. Пока это мое изобретение, а если в раскопках найдется что-нибудь подобное, может быть из золота или кости, тогда это будет являться подтверждением моей гипотезы. Свои арфы я демонстрировал на лекциях в разных аудиториях. На очередной Международной инструментоведческой конференции в Российском институте истории искусств в Санкт\u2011Петербурге я предложил и свою гипотезу скифской музыки и музыкальный лад, на мой взгляд, более древний, чем пентатоника. Для дальнейшей работы по реконструкции музыкального инструмента скифов мне любезно позволили поизучать первоисточник с извлечением его из\u2011под стеклянного колпака старшие научные сотрудники Государственного Эрмитажа Л.\u00A0Л.\u00A0Баркова и Л.\u00A0С.\u00A0Марсадолов. Надо ли говорить – я испытал какой\u2011то невыразимый трепет от прикосновения к «вечности». После этого у меня родились новые варианты этнографических инструментов и создание усовершенствованной концертной скифской арфы: кое\u2011что пришлось изменить в конструкции арфы. Ее внешний вид, оригинальные приемы игры стали привлекать внимание как любителей музыкальной экзотики, так и профессиональных концертирующих музыкантов и ученых\u2011этнографов.  
  ''';

  final List<GalleryItem> images4 = <GalleryItem>[
    GalleryItem(
      id: 'g40',
      resource: 'assets/images/biography/harp_ensemble.jpg',
      description:
          'Ансамбль скифской музыки в Российском институте истории искусств (Санкт\u2011Петербург)',
    ),
    GalleryItem(
      id: 'g41',
      resource: 'assets/images/biography/vyatkin_harp.png',
      description: 'С.\u00A0Вяткин с концертной скифской арфой',
    ),
    GalleryItem(
      id: 'g42',
      resource: 'assets/images/biography/harp_tail.jpg',
      description: 'Концертная скифская арфа (вид с торца)',
    ),
    GalleryItem(
      id: 'g243',
      resource: 'assets/images/biography/harp_concert.jpg',
      description: 'Вариант концертной скифской арфы',
    ),
    GalleryItem(
      id: 'g44',
      resource: 'assets/images/portrait_v.jpg',
      description:
          'А.\u00A0Гнездилов с реставрированной этнографической скифской арфой',
    ),
    GalleryItem(
      id: 'g45',
      resource: 'assets/images/biography/harp_main.jpg',
      description:
          'Этнографическая скифская арфа (Российский Национальный музей музыки)',
    ),
  ];

  final String text5 = '''
  На следующую конференцию в Санкт\u2011Петербург в 2000\u00A0г. я не только привез новые арфы, но также инициировал создание и участие коллектива музыкантов под названием этно\u2011медитативная группа «Скифы» на этнофоруме. Этой поездке предшествовали создание целого театрального интерактивного действа и несколько выступлений «Скифов» в Барнауле. Стиль игры этой группы можно определить как археологический этно\u2011рок: интонационную, ритмическую основу и колорит ее составляют медитативные прозрения, уносящие нас через тысячелетия ко временам наших предков, кочевников\u2011скифов. Первыми исполнителями на концертной скифской арфе являются Евгений\u00A0Чикишев и Сергей\u00A0Вяткин. 
  
  Две арфы я оставил в Государственном музее театрального и музыкального искусства и еще две – в частной коллекции музыкальных инструментов народов мира В.\u00A0А.\u00A0Брунцева в Санкт\u2011Петербурге. А нашу группу «Скифы» вскоре пригласили на Международный фестиваль нетрадиционной музыки «SKIF\u20115», посвященный памяти композитора, пианиста, кинорежиссера и актера Сергея\u00A0Курехина. Таким образом, скифская арфа после архидлительного «летаргического» сна стала возрождаться не только в музейных вариантах первоисточника, но и в усовершенствованных концертных инструментах. И встретить ее можно не только на родине в Республике\u00A0Алтай, но и в Барнауле, Новосибирске, Санкт\u2011Петербурге, Москве, Украине и Германии. На арфу выдано Российское авторское свидетельство, получен и выполнен заказ на изготовление выставочного экспоната для Государственного Центрального музея музыкальной культуры им.\u00A0М.\u00A0И.\u00A0Глинки в Москве, где с 2015\u00A0г. экспонируется наиболее достоверный вариант скифской арфы. 
  ''';

  final List<GalleryItem> images5 = <GalleryItem>[
    GalleryItem(
      id: 'g40',
      resource: 'assets/images/biography/harp_moscow1.jpg',
      description:
          'Передача этнографической скифской арфы в Государственный Центральный музей музыкальной культуры им.\u00A0М.\u00A0И.\u00A0Глинки (Москва). Справа студентка Российской академии музыки (ученица Л.\u00A0Я.\u00A0Жук)',
    ),
    GalleryItem(
      id: 'g41',
      resource: 'assets/images/biography/harp_moscow2.png',
      description:
          'Н.\u00A0В.\u00A0Милешина, заведующая отделом музыкальных инструментов в ЦММК\u00A0им.\u00A0М.\u00A0И.\u00A0Глинки в Москве, готовит скифскую арфу в экспозицию',
    ),
    GalleryItem(
      id: 'g42',
      resource: 'assets/images/biography/harp_moscow3.jpg',
      description:
          'Скифская арфа А.\u00A0Гнездилова в экспозиции Российского национального музея музыки (бывшего ЦММК\u00A0им.\u00A0М.\u00A0И.\u00A0Глинки в Москве)',
    ),
    GalleryItem(
      id: 'g43',
      resource: 'assets/images/biography/styukhin_harp.png',
      description:
          'Музыковед-искусствовед Михаил Тимофеевич Стюхин демонстрирует этнографическую двухструнную скифскую арфу',
    ),
  ];

  final String text6 = '''
  Работа по возрождению скифской арфы была широко освящена в российских СМИ во многом благодаря популяризаторской деятельности моего старшего наставника М.\u00A0Т.\u00A0Стюхина. Частые встречи с этим редкой души человеком и обсуждения дальнейших перспектив привели нас к мысли о создании творческой лаборатории под названием «Музыкальная археология Алтая», где можно было в одной структуре объединить усилия представителей науки (археология, история), литературы, танцевального и музыкально\u2011исполнительского искусства и мастера\u2011реставратора музыкальных инструментов. 
   
  Деятельность лаборатории планировалась в следующих направлениях: научно\u2011исследовательская, просветительская, издательская и концертная. Это создание оригинальных самостоятельных концертных программ и театрализованных композиций этно\u2011медитативной группы «Скифы» с использованием реконструированных музыкальных инструментов, костюмов и реквизита, основывающихся на подлинных археологических образцах из скифских курганов сибирского региона. Наша затея в Администрации Алтайского\u00A0края, к сожалению, не прошла – мы не получили финансовой поддержки. 
  ''';

  final List<GalleryItem> images6 = <GalleryItem>[
    GalleryItem(
      id: 'g60',
      resource: 'assets/images/biography/frolova_harp.jpg',
      description:
          'Елена Фролова (Театр поэзии и музыки Е.\u00A0Камбуровой) с первой концертной скифской арфой А.\u00A0Гнездилова',
    ),
    GalleryItem(
      id: 'g61',
      resource: 'assets/images/biography/altai80.jpg',
      description:
          'Скифская арфа в программе правительственного концерта празднования 80\u2011летия Алтайского края',
    ),
    GalleryItem(
      id: 'g62',
      resource: 'assets/images/biography/altai80_siberia.jpg',
      description:
          'И.\u00A0Ламзин солирует на скифской арфе А.\u00A0Гнездилова с Государственным оркестром «Сибирь» им.\u00A0Е.\u00A0И.\u00A0Борисова под управлением Н.\u00A0А.\u00A0Комиссарова на правительственном концерте празднования 80\u2011летия Алтайского края',
    ),
    GalleryItem(
      id: 'g63',
      resource: 'assets/images/biography/nogon_harp.jpg',
      description:
          'Н.\u00A0Шумаров, алтайский кайчи, с концертной пазырыкской (скифской) арфой А.\u00A0Гнездилова',
    ),
    GalleryItem(
      id: 'g64',
      resource: 'assets/images/biography/nogon_harp1.jpg',
      description:
          'Н.\u00A0Шумаров, алтайский кайчи, с концертной пазырыкской (скифской) арфой А.\u00A0Гнездилова',
    ),
  ];

  final String text7 = '''
  Мои участия в международных инструментоведческих и этнографических конференциях и на фестивале, организованном новым творческим центром «Гусли\u00A0мира» в Суздале, способствовали развитию искусства игры на древней сибирской (скифской) арфе в Москве в руках Елены\u00A0Фроловой и ее коллег – артистов Театра поэзии и музыки Елены\u00A0Камбуровой. Ими уже наигран целый альбом со звучанием скифской арфы. 
   
  На концерте, посвященном 80\u2011летнему юбилею Алтайского края в руках солиста Игоря\u00A0Ламзина и под аккомпанемент Алтайского государственного оркестра «Сибирь» им.\u00A0Е.\u00A0Борисова прозвучала пьеса композитора\u2011алтайца Б.\u00A0М.\u00A0Шульгина, написанная специально для скифской арфы. Им же написан Гимн Республики\u00A0Алтай, в партитуру которого вписана партия скифской арфы.  
  
  Мои поиски звучащей древности не замкнулись на пазырыкских находках. В процессе изучения старинных русских музыкальных инструментов меня очень заинтересовала своим неповторимым звуковым колоритом лира колесная. Я даже нашел один экземпляр, правда, неисправный, в нашем Национальном театре народной музыки «Песнохорки». Удалось его отремонтировать и сделать свою лиру, с оригинальной клавиатурой, кстати, патентоспособной. 
  ''';

  final List<GalleryItem> images7 = <GalleryItem>[
    GalleryItem(
      id: 'g60',
      resource: 'assets/images/biography/lira.jpg',
      description: 'Лира колесная с авторской клавиатурой',
    ),
    GalleryItem(
      id: 'g61',
      resource: 'assets/images/biography/gusli_lira.jpg',
      description:
          'Творческая встреча в общеобразовательной школе. Никита Денисов с гуслями и Илья Гнездилов с колёсной лирой',
    ),
    GalleryItem(
      id: 'g62',
      resource: 'assets/images/biography/gusli_first.png',
      description:
          'Первые гусли звончатые А.\u00A0Гнездилова. Вальдорфская школа в Москве',
    ),
    GalleryItem(
      id: 'g63',
      resource: 'assets/images/biography/gusli_new.jpg',
      description:
          'А.\u00A0Гнездилов в ГМИЛИКА. Гусли звончатые с новым механизмом альтерации',
    ),
    GalleryItem(
      id: 'g64',
      resource: 'assets/images/biography/babushkin_gusli.png',
      description: 'С.\u00A0Бабушкин с гуслями А.\u00A0Гнездилова',
    ),
    GalleryItem(
      id: 'g65',
      resource: 'assets/images/biography/gusli_basurmanova.jpg',
      description: 'Л.\u00A0Басурманова с гуслями Д.\u00A0Локшина',
    ),
  ];

  final String text8 = '''
  Знакомство с российскими гуслярами на конференциях и концертах позволило стать мне гусельщиком (мастером по изготовлению гуслей). В начале «перестройки» по понятным причинам закрылась Московская Экспериментальная музыкальная фабрика. Без государственной поддержки у мастеров понизился тонус на изобретательскую деятельность, то есть чтобы выжить мастерам нужно было думать не об усовершенствовании существующих моделей музыкальных инструментов, а о рентабельной работе. Я же с интересом принял предложение известной исполнительницы былин под аккомпанемент гуслей Любови Басурмановой из Москвы поэкспериментировать с этим древнерусским сказочным инструментом. 
  
  Гусли существуют в трех разновидностях: звончатые, щипковые и клавишные. Мои первые экземпляры гуслей были звончатые: крыловидные и трапециевидные. На таких гуслях строй диатонический. А для того чтобы играть на них в ансамбле или оркестре нужно перестраивать инструменты в разные тональности. Для этого был придуман механизм альтерации, который работает по принципу перетяжки струны точно на полтона с помощью эксцентрика. Эта система работает хорошо только только первое время. Затем, после нескольких переключений, она не дает точной перестройки. Звук «плывет» и приходится часто настраивать гусли во время концерта. Передо мной гусляры поставили задачу устранить этот недостаток. Я разработал несколько новых систем, и одна из них была признана патентоспособной. Ее отличие заключается в том, чтобы повысить звучание струны, механизм альтерации просто укорачивает звучащий отрезок струны точно на полтона. 
  ''';

  final List<GalleryItem> images8 = <GalleryItem>[
    GalleryItem(
      id: 'g70',
      resource: 'assets/images/biography/gusli_silverstrings.jpg',
      description:
          'Солистка московского ансамбля гусляров «Серебряные\u00A0струны» за гуслями щипковыми',
    ),
    GalleryItem(
      id: 'g71',
      resource: 'assets/images/biography/gusli_smorodina.jpg',
      description: 'Барнаульский ансамбль гусляров «Смородина»',
    ),
    GalleryItem(
      id: 'g72',
      resource: 'assets/images/biography/gusli_small.JPG',
      description:
          'Гусли с игровым окном на фоне экспозиции первой реставрированной скифской арфы (из фондов ГМИЛИКА)',
    ),
    GalleryItem(
      id: 'g73',
      resource: 'assets/images/biography/russian_souvenir.png',
      description:
          'Ансамбль «Русский\u00A0сувенир», частый гость  Шукшинского фестиваля, руководитель В.\u00A0И.\u00A0Прасолов (Новосибирская\u00A0область)',
    ),
    GalleryItem(
      id: 'g74',
      resource: 'assets/images/biography/samogudy_gusli.png',
      description:
          'Шупуновский\u00A0район, с.\u00A0Родино. Е.\u00A0Черниковой аккомпанируют на гуслях А.\u00A0Гнездилов и А.\u00A0Черепанова',
    ),
    GalleryItem(
      id: 'g75',
      resource: 'assets/images/portrait_h.jpg',
      description: 'А.\u00A0Гнездилов за гуслями клавишными пятиоктавными',
    ),
  ];

  final String text9 = ''' 
  В перспективе у меня – создание гуслей звончатых с двумя рядами струн, расположенных под углом друг к другу. Это как бы два инструмента на одном корпусе. На левой половине инструмента будут располагаться все диезные тональности, на правой – все бемольные. В Государственном Центральном музее музыкальной культуры им.\u00A0М.\u00A0И.\u00A0Глинки можно найти прототип – гусли Д.\u00A0Локшина, но на нем используется механизм альтерации с эксцентриками, которые натягивают струны и они имеют ограниченное количество тональностей. Пока имеются трудности в изготовлении кое\u2011каких деталей в условиях моей домашней мастерской. 

  Очень редко используется вид гуслей щипковых столообразных. Они выпускаются больших размеров и с тяжелой металлической рамой. Я решил рискнуть и поставил внутри деревянного корпуса в виде гуслей звончатых с двумя деками вместо металлической рамы – распорки. Получился инструмент весом менее 8\u00A0кг. Это вполне мобильный инструмент и с полным диапазоном. На моих гуслях звончатых и щипковых играют в московских ансамблях гусляров «Купина», «Серебряные\u00A0струны», хора имени\u00A0Пятницкого, обучаются на них дети в двух московских школах. 
   
  Сейчас работаю, довольно успешно, над созданием гуслей клавишных, тоже мобильных, легких. Если на стационарных гуслях одна только клавиатурная механика весит более 6\u00A0кг, то мои гусли вместе с механикой весят всего от\u00A08\u00A0до\u00A012\u00A0кг с полным диапазоном. Прототипом послужила диатоническая клавиатура без повтора клавиши «до» Д.\u00A0Локшина. Я сделал хроматическую клавиатуру с повтором клавиши «до» для удобства, как на гуслях концертных. Эти гусли уже звучат по Сибири и «просятся» на запад. Есть надежда, что Барнаул будет городом гуслей и скифской арфы, как Тула – город самоваров и гармоник.    
  ''';

  final List<GalleryItem> images9 = <GalleryItem>[
    GalleryItem(
      id: 'g80',
      resource: 'assets/images/biography/piano_yamaha.png',
      description: 'Обслуживание рояля YAMAHA',
    ),
    GalleryItem(
      id: 'g81',
      resource: 'assets/images/biography/piano_seminar.jpg',
      description: 'Семинар фортепианных мастеров в г.\u00A0Барнауле (2018\u00A0г.)',
    ),
    GalleryItem(
      id: 'g82',
      resource: 'assets/images/biography/piano_apothecary.png',
      description:
          'Директор ресторации «Горная\u00A0аптека» О.\u00A0В.\u00A0Лонская проверяет настройку раритетного пианино',
    ),
    GalleryItem(
      id: 'g83',
      resource: 'assets/images/biography/piano_glinka.png',
      description:
          'Директор ДШИ с.\u00A0Налобиха И.\u00A0А.\u00A0Кондратьева за новым пианино «М.\u00A0Глинка» с мастером А.\u00A0Гнездиловым',
    ),
  ];

  final String text10 = '''
  Для повышения квалификации музыкального мастера я прослушал курс настройки, регулировки и ремонта фортепиано в Барнауле у нашего мастера, заслуженного деятеля Всероссийского музыкального общества Н.\u00A0П.\u00A0Жибы, затем посещал ежегодные семинары в Союзе музыкальных мастеров Сибири в Новосибирске. По рекомендации маститых мастеров посетил несколько семинаров в Ассоциации фортепианных мастеров России и «Европиано» в Москве и Санкт\u2011Петербурге, где меня приняли в свои ряды. А чуть позже, изучив мои работы, Российский творческий союз мастеров\u2011художников и реставраторов музыкальных инструментов вручил мне также свое удостоверение. 
   
  Испытываю особенную радость: с моими инструментами наши российские музыканты гастролируют по стране и за рубежом. Скифские арфы, гусли, топшуры, шаманские бубны, домры\u2011банджо, балалайка\u2011банджо и лира колесная звучат в Государственном Эрмитаже, в Государственном Центральном музее музыкальной культуры им.\u00A0М.\u00A0И.\u00A0Глинки, в Государственном музее истории литературы, искусства и культуры Алтая, в Горном\u00A0Алтае, в Новосибирске и на творческих встречах с музыкантами Канады, США, Китая, Голландии, Германии и ближнего зарубежья; экспонируются во Всероссийском музейном объединении музыкальной культуры им.\u00A0М.\u00A0И.\u00A0Глинки, Государственном музее театрального и музыкального искусства в Санкт\u2011Петербурге, в частном музее музыкальных инструментов народов мира В.\u00A0А.\u00A0Брунцева в Санкт\u2011Петербурге, в Государственном музее истории литературы, искусства и культуры Алтая, в музее при Новосибирской государственной консерватории, в Улаганском краеведческом музее Республики Алтай. Одним словом – простор для творчества пределов не имеет. А все потому, что в детстве я озадачился вопросом: «Почему баян играет, почему баян звучит?» Этот вопрос задаю себе всякий раз, когда прикасаюсь к любому незнакомому инструменту.   
  ''';

  final String ending = '''
  Фотографии из личного архива А.\u00A0И.\u00A0Гнездилова, если не указано иного.
  
  По мотивам рассказа А.\u00A0И.\u00A0Гнездилова «Арфа молчала двадцать пять веков». Впервые опубликован в альманахе «Тобольск и вся Сибирь. Барнаул» (2010\u00A0г.) под редакцией А.\u00A0М.\u00A0Родионова, известного по книгам «Чистодеревщики», «Красная книга ремесел», «Колывань камнерезная», «Князь – раб», «Одинокое дело мое», основателя и первого председателя Алтайского Демидовского фонда, к сожалению, безвременно ушедшего из жизни. 
  ''';

  Widget textBlock(String text) {
    return SelectableText(
      text,
      textAlign: TextAlign.justify,
      style: TextStyle(
        fontSize: 16.0,
      ),
    );
  }

  Widget galleryBlock(List<GalleryItem> images) {
    return Container(
      child: Gallery(galleryItems: images),
      margin: const EdgeInsets.all(10.0),
      alignment: Alignment.center,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            textBlock(text0),
            galleryBlock(images0),
            textBlock(text1),
            galleryBlock(images1),
            textBlock(text2),
            galleryBlock(images2),
            textBlock(text3),
            galleryBlock(images3),
            textBlock(text4),
            galleryBlock(images4),
            textBlock(text5),
            galleryBlock(images5),
            textBlock(text6),
            galleryBlock(images6),
            textBlock(text7),
            galleryBlock(images7),
            textBlock(text8),
            galleryBlock(images8),
            textBlock(text9),
            galleryBlock(images9),
            textBlock(text10),
            textBlock('-------'),
            textBlock(ending),
          ],
        ),
      ),
    );
  }
}
