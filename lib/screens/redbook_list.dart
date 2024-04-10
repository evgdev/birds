import '../constants.dart';

class BirdRedbookDataModel {
  final String name,
      latin,
      family,
      imageUrl,
      desc,
      icon,
      source,
      author,
      authorLink,
      author2,
      authorLink2;
  final int count, arrival;
  final List<int> month, area;

  const BirdRedbookDataModel({
    required this.name,
    required this.latin,
    required this.family,
    required this.imageUrl,
    required this.desc,
    required this.month,
    required this.area,
    required this.arrival,
    required this.icon,
    required this.count,
    required this.source,
    required this.author,
    required this.authorLink,
    required this.author2,
    required this.authorLink2,
  });

  get title => null;
}

class BirdList {
  final List<BirdRedbookDataModel> birds = [
    BirdRedbookDataModel(
        name:
            locale == 'ru' ? "Большая поганка (чомга)" : "Great crested grebe",
        latin: 'Podiceps cristatus',
        family: locale == 'ru' ? "Поганковые" : "Podicipedidae",
        imageUrl: 'podiceps_cristatus',
        desc: locale == 'ru'
            ? "Вид водных птиц из семейства поганковых, немного меньше кряквы\n\nРазмером чомга немного меньше утки. Длина тела 46-51 см.\n\nЭто птица с тонкой шеей и удлинённым прямым клювом. Спина буровато-рыжая, живот, шея и голова белые. В весеннем оперении на голове у чомги вырастают два тёмных пучка перьев, похожих на «ушки», и рыжий «воротничок» вокруг шеи. \n\nОбитает в прудах и озёрах Евразии, Африке (южнее Сахары), Австралии, Тасмании и Новой Зеландии. В России встречается от западных границ к востоку до Красноярска, а также в Приморье. Распространена в тихих водоёмах в лесной, степной и пустынной зонах.\n\nВ Европе на свои места гнездований птицы прилетают в середине марта-апреля. Брачные игры больших поганок проходят в воде, они очень необычны и имеют свой строгий ритуал. Чомги плывут друг к другу, перья воротника распущены, птицы трясут головами и сближаются вплотную. Затем встают в воде вертикально, в «позу пингвина», держа в клюве пучки водорослей и предлагают друг другу в качестве подарка. В брачный период чомги издают далеко слышные крики «куа», «круа», «корр». \n\nЧомги строят плавучее гнездо до 60 см в диаметре и до 80 см в высоту, куда самка откладывает 3—4 чисто белых яйца. Строительный материал гнезда представляет собой кучу отмершей растительности, главным образом камыша и тростника.  Птенцы вылупляются через 24 дня, они уже опушены и могут плавать. Птенцы прячутся в перьях на спине матери."
            : "The great crested grebe (Podiceps cristatus) is a member of the grebe family of water birds. The bird is characterised by its distinctive appearance, featuring striking black and white plumage, and elaborate courtship display that involves synchronised dances and displays. The great crested grebe is the largest member of the grebe family found in the Old World. \nThe great crested grebe breeds in vegetated areas of freshwater lakes. ",
        arrival: 1,
        month: [5],
        area: [1],
        count: 2,
        icon: "grebe",
        source: locale == 'ru'
            ? "https://ru.wikipedia.org/wiki/Большая_поганка"
            : "https://en.wikipedia.org/wiki/Great_crested_grebe",
        author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.M.",
        authorLink: "",
        author2: "Гашков С.И.",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Серая цапля" : "Grey heron",
        latin: 'Ardea cinerea',
        family: locale == 'ru' ? "Цаплевые" : "Ardeidae",
        imageUrl: 'ardea_cinerea',
        desc: locale == 'ru'
            ? "Птица отряда пеликанообразных, семейства цаплевых. \n\nВнешность весьма характерна. Это длинноногая, длинношеяя птица, серой окраски сверху и белой снизу, с включениями чёрного цвета, с довольно длинным острым клювом. Размеры достаточно большие, вес взрослого самца может достигать 2 кг. Самки несколько меньше самцов, однако в остальном от них почти не отличаются\n\nСерая цапля распространена чрезвычайно широко. Её ареал охватывает значительную часть Евразии и Африки\n\nНа значительной части ареала цапля является перелётной птицей, в других обитает круглый год. Часто держится группами, которые могут достигать значительной величины. Гнездится также обычно колониями, к которым могут присоединяться птицы других видов.\n\nСерая цапля питается исключительно животной пищей. Основу её рациона составляет рыба, но цапля поедает также лягушек, разнообразных мелких млекопитающих (например, грызунов размером до суслика включительно), пресмыкающихся, головастиков, насекомых."
            : "Grey herons belong to the subfamily Ardeinae, along with the majority of extant species, which are known as the \"typical herons\". It is closely related and similar to the North American great blue heron (Ardea herodias), which differs in being larger, and having chestnut-brown flanks and thighs; and to the cocoi heron (Ardea cocoi) from South America, with which it forms a superspecies. The grey heron is a large bird, standing up to 100 cm tall and measuring 84–102 cm  long with a 155–195 cm wingspan. The body weight can range from 1-2 kg\nThe plumage is largely ashy-grey above, and greyish-white below, with some black on the flanks. Adults have a white head and neck with a broad black supercilium that terminates in the slender, dangling crest, and bluish-black streaks on the front of the neck. \nGrey herons are apex predators in their aquatic ecosystem. Fish, amphibians, crustaceans, and insects are caught in shallow water with the heron's long bill. It has also been observed catching and killing juvenile birds such as ducklings, and occasionally takes birds up to the size of a water rail or white-throated rail.[15][16] Small mammals such as water voles, rats, stoats and young rabbits are additionally caught.",
        arrival: 1,
        month: [5],
        area: [1],
        count: 2,
        icon: 'heron',
        source: locale == 'ru'
            ? "https://ru.wikipedia.org/wiki/Серая_цапля"
            : "https://en.wikipedia.org/wiki/Grey_heron",
        author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.M.",
        authorLink: "",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Чёрный аист" : "Black stork",
        latin: 'Ciconia nigra',
        family: locale == 'ru' ? "Аистовые" : "Ciconiidae",
        imageUrl: 'ciconia_nigra',
        desc: locale == 'ru'
            ? "Птица из семейства аистовых. Занесён в Красные книги Беларуси, Болгарии, Казахстана, Узбекистана, Украины, Таджикистана и РФ.\n\nОбитает в лесной зоне Евразии, стараясь избегать людей. В России чёрный аист населяет территорию от Балтийского моря через Урал по 60-61 параллели и всю Южную Сибирь до Дальнего Востока, включая остров Сахалин. На Курилах и полуострове Камчатка не встречается. Отдельная популяция обитает на юге России, в лесах Чечни, Дагестана, Ставропольского края. Наибольшее количество птиц в России гнездится в районе Приморья. Самая большая в мире популяция чёрного аиста обитает на территории заказника Средняя Припять.\n\nЗимует в Южной Азии (низкогорья Гималаев в пределах Пакистана, Индии и Китая, центральные районы Индии, юго-восток Китая, в том числе Тайвань) и Африке. В Южной Африке живёт оседлая популяция чёрных аистов.\n\nОт белого аиста отличается большей стройностью телосложения, несколько меньшими размерами, преобладанием чёрных тонов в оперении, заметно более скошенным к вершине профилем клюва, не избегает летать над морем. Пути миграции черных аистов, гнездящихся в Австрии, Хорватии и Венгрии, пролегают через Сицилию или Крит.\n\nОбраз жизни чёрного аиста изучен слабо. Эта скрытная птица, в отличие от белого аиста, не любит соседства с человеком и предпочитает селиться в глухих, старых лесах на равнинах и предгорьях возле водоёмов — лесных озёр, рек, болот. В полёте чёрный аист, как и другие аисты, часто парит, распластав крылья. Как и все аисты, чёрный летит, вытянув вперёд шею и откинув назад длинные тонкие ноги."
            : "The black stork (Ciconia nigra) is a large bird in the stork family Ciconiidae. Measuring on average 95 to 100 cm from beak tip to end of tail with a 150 cm wingspan, the adult black stork has mainly black plumage, with white underparts, long red legs and a long pointed red beak. A widespread but uncommon species, it breeds in scattered locations across Europe, and east across the Palearctic to the Pacific Ocean.\nUnlike the closely related white stork, the black stork is a shy and wary species. It is seen singly or in pairs, usually in marshy areas, rivers or inland waters. It feeds on amphibians, small fish and insects, generally wading slowly in shallow water stalking its prey. ",
        arrival: 1,
        month: [3],
        area: [1],
        count: 2,
        icon: "stork",
        source: locale == 'ru'
            ? "https://ru.wikipedia.org/wiki/Черный_аист"
            : "https://en.wikipedia.org/wiki/Black_stork",
        author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.M.",
        authorLink: "",
        author2: "Гашков С.И.",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Розовый фламинго" : "Greater flamingo",
        latin: 'Phoenicopterus roseus',
        family: locale == 'ru' ? 'Фламинговые' : "Phoenicopteridae",
        imageUrl: 'phoenicopterus_roseus',
        desc: locale == 'ru'
            ? "Вид птиц из отряда фламингообразных. Оперение у взрослых самцов и самок — нежно-розового цвета, крылья — пурпурно-красные, маховые — чёрные. Общая длина тела — 130 см, масса достигает 3,4—4 кг. На каждой ноге у них по 4 пальца.\n\nАреал розового фламинго включает территории от юга и востока Испании, юга Франции, через Африку, включая Мадагаскар, далее на восток через Казахстан и Ближний Восток до Индии и Шри-Ланки. Граница ареала проходит по западному побережью Африки от Мавритании до Сьерра-Леоне через Средиземноморье в Южную Азию. Популяция в восточной и южной частях тропической Африки — локальная.\n\n Площадь ареала достигает 61 млн.км² — самая большая среди всех видов фламинговых. Птицы могут долетать до озера Байкал и под Санкт-Петербург в России, до Исландии или до Мальдивов в Индийском океане. В 1998 году птиц впервые отметили в Китае, в Синьцзян-Уйгурский автономном районе. Хотя большинство птиц остаются в рамках своего региона, перелёты в другой регион также нередки"
            : "The greater flamingo is the most widespread and largest species of the flamingo family. Common in the Old World, they are found in Northern and Sub-Saharan Africa, the Indian Subcontinent, the Middle East and the Mediterranean countries of Southern Europe. \nThe greater flamingo is the largest living species of flamingo, averaging 110–150 cm tall and weighing 2–4 kg.\nMost of the plumage is pinkish-white, but the wing coverts are red and the primary and secondary flight feathers are black. The bill is pink with a restricted black tip, and the legs are entirely pink. The call is a goose-like honking. ",
        arrival: 1,
        month: [2],
        area: [1],
        count: 1,
        icon: 'flamingo',
        source: locale == 'ru'
            ? "https://ru.wikipedia.org/wiki/Розовый_фламинго"
            : "https://en.wikipedia.org/wiki/Greater_flamingo",
        author: locale == 'ru' ? "Дубинина М.В." : "Dubinina M.V.",
        authorLink: "",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Краснозобая казарка" : "Red-breasted goose",
        latin: "Branta ruficollis",
        family: locale == 'ru' ? "Утиные" : "Anatidae",
        imageUrl: "branta_ruficollis",
        desc: locale == 'ru'
            ? "Водоплавающая птица из семейства утиных. Внешним видом напоминает мелкого гуся с толстой шеей и коротким клювом. Окраска яркая и контрастная, сочетает в себе каштаново-рыжие, белые и чёрные тона. Редкий вид, гнездится в тундрах на территории России, главным образом на Таймыре и соседних с ним областях. Зимует в западном Причерноморье, южном Прикаспии. Питается растительными кормами — зелёными побегами трав, на зимовках и пролёте — вегетативными частями степных и солончаковых растений, эфемерными злаками, зерновыми озимыми культурами. Гнездится один раз в год в июне—июле, в кладке 3—9 яиц. Легко приручается и одомашнивается. Находится под охраной международной и региональных Красных книг, включён в ряд международных конвенций по охране природы. Охота на казарку повсеместно запрещена.\n\nКраснозобая казарка — эндемик России, гнездится на относительно небольшой площади в мохово-лишайниковых и кустарниковых тундрах от Ямала к востоку до западной окраины бассейна Хатанги. Большая часть популяции, около 70 %, сосредоточена на полуострове Таймыр.\n\nТипичный перелётный вид. В настоящее время основные зимние станции находятся в северо-западном и западном Причерноморье\n\nДо этого казарки массово перемещались на побережья южной части Каспийского моря — в Азербайджан, Туркменистан и Иран, а также на северные берега Персидского залива."
            : "The red-breasted goose is a brightly marked species of goose in the genus Branta from Eurasia.\nThe red-breasted goose breeds in Arctic Siberia, mainly on the Taymyr Peninsula, with smaller populations in the Gyda and Yamal peninsulas. Most winter along the northwestern shores of the Black Sea in Bulgaria, Romania and Ukraine (occasionally moving further southwest to Greece), but some winter in Azerbaijan.\nThe red-breasted goose often nests close to nests of birds of prey, such as snowy owls, peregrine falcons and rough-legged buzzards, which helps to protect this small goose from mammalian predators such as the Arctic fox.\nWhile wintering, the red-breasted goose feeds on grasses, leaves and seeds. Since owl and buzzard populations fluctuate every few years, depending on lemming abundance, the only consistent protection from predators are river islands and the peregrine falcon.",
        arrival: 1,
        month: [5],
        area: [1],
        count: 1,
        icon: 'duck',
        source: locale == 'ru'
            ? "https://ru.wikipedia.org/wiki/Краснозобая_казарка"
            : "https://en.wikipedia.org/wiki/Red-breasted_goose",
        author: "Tyler Brenot",
        authorLink:
            "https://ru.wikipedia.org/wiki/Краснозобая_казарка#/media/Файл:Chester_zoo_red_breasted_goose.jpg",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Серый гусь" : "Greylag goose",
        latin: "Anser anser",
        family: locale == 'ru' ? "Утиные" : "Anatidae",
        imageUrl: "anser_anser",
        desc: locale == 'ru'
            ? "Водоплавающая птица семейства утиных, один из самых известных видов диких гусей.\n\nСерый гусь — птица длиной до 70—90 см и массой около 2,1—4,5 кг, размах крыльев 147—180 см\n\nОперение серовато-бурое с волнистым рисунком на шее и брюхе. Имеет светлое окаймление перьев на спине. Клюв розоватый или оранжевый. Самец заметно крупнее самки.\n\nСерый гусь гнездится на тихих водоёмах Северной и Центральной Европы, а также в умеренном поясе Азии вплоть до Дальнего Востока. Основная часть гнездовой популяции серого гуся сосредоточена в дельтах Днестра и Дуная. Зимует в Южной Европе и Азии, иногда в Северной Африке.\n\nСерый гусь населяет водоёмы со стоячей водой, окружённые тростниками — болота, озёра, рыборазводные пруды и тому подобное. Встречается он и на травянистых болотах и заливных лугах, выбирая самые недоступные места. В отличие от домашних гусей, родоначальником которых серый гусь является, он более подвижен, легко плавает и ныряет."
            : "The greylag goose or graylag goose (Anser anser) is a species of large goose in the waterfowl family Anatidae and the type species of the genus Anser. It has mottled and barred grey and white plumage and an orange beak and pink legs. A large bird, it measures about 83 cm in length, with an average weight of 3.3 kilograms. Its distribution is widespread, with birds from the north of its range in Europe and Asia often migrating southwards to spend the winter in warmer places, although many population are resident, even in the north. It is the ancestor of most breeds of domestic goose.\nGreylag geese travel to their northerly breeding grounds in spring, nesting on moorlands, in marshes, around lakes and on coastal islands. They normally mate for life and nest on the ground among vegetation. A clutch of three to five eggs is laid; the female incubates the eggs and both parents defend and rear the young. The birds stay together as a family group, migrating southwards in autumn as part of a flock, and separating the following year. During the winter they occupy semi-aquatic habitats, estuaries, marshes and flooded fields, feeding on grass and often consuming agricultural crops.",
        arrival: 1,
        month: [5],
        area: [1],
        count: 2,
        icon: 'duck',
        source: locale == 'ru'
            ? "https://ru.wikipedia.org/wiki/Серый_гусь"
            : "https://en.wikipedia.org/wiki/Greylag_goose",
        author: "Piotr Kuczynski",
        authorLink:
            "https://ru.wikipedia.org/wiki/Серый_гусь#/media/Файл:Anser_anser_2_(Piotr_Kuczynski).jpg",
        author2: "MichaelMaggs",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Пискулька" : "Lesser white-fronted goose",
        latin: "Anser erythropus",
        family: locale == 'ru' ? "Утиные" : "Anatidae",
        imageUrl: "anser_erythropus",
        desc: locale == 'ru'
            ? "Птица семейства утиных, мелкий гусь. Название своё получила за писк, издаваемый в полёте.\n\nПискулька по окраске похожа на белолобого гуся, однако значительно меньше ростом. Также имеет более короткий клюв. Взрослые пискульки имеют большое белое пятно на лбу, которое распространяется почти до макушки головы. Длина тела достигает от 53 до 66 см, размах крыльев — от 120 до 135 см. Масса взрослой птицы от 1,6 до 2,5 кг.\n\nПискулька гнездится в северной части Евразии на границе с тундрой, в северной тайге и лесотундре. В России она встречается от Кольского полуострова до Анадырского залива. Также встречается на Скандинавском полуострове."
            : "The lesser white-fronted goose (Anser erythropus) is a goose closely related to the larger greater white-fronted goose (A. albifrons). It breeds in the northernmost Palearctic, but it is a scarce breeder in Europe, with a reintroduction attempt in Fennoscandia.\nThe two white-fronted goose species differ little other than in size (the lesser, at 53–66 cm (21–26 in) length and with a 120–135 cm (47–53 in) wingspan, is not much bigger than a mallard (Anas platyrhynchos)), but both may be readily distinguished from the greylag goose by their bright orange legs and their mouse-coloured upper wing-coverts. The greylag goose has a flesh-coloured bill and legs and the upper wing-coverts are bluish-grey. Adult lesser white-fronted geese, as well as being smaller than greater white-fronted geese, have an obvious yellow eye-ring and the white facial blaze goes up to the crown.",
        arrival: 1,
        month: [5],
        area: [1],
        count: 1,
        icon: 'duck',
        source: "https://en.wikipedia.org/wiki/Lesser_white-fronted_goose",
        author: "Olaf Oliviero Riemer",
        authorLink:
            "https://en.wikipedia.org/wiki/Lesser_white-fronted_goose#/media/File:Zwerggans_(Anser_erythropus)_-_Weltvogelpark_Walsrode_2011.jpg",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Гуменник" : "Bean goose",
        latin: "Anser fabalis",
        family: locale == 'ru' ? "Утиные" : "Anatidae",
        imageUrl: "anser_fabalis",
        desc: locale == 'ru'
            ? "Водоплавающая птица из семейства утиных. Вид рода гуси, в котором могут выделять ряд подвидов.Гусь гуменник — крупная птица буровато-серой окраски, напоминающий серого гуся. Клюв чёрный с оранжевой полоской посередине. Самец и самка не отличаются по окраске, однако самка несколько мельче. Масса тела колеблется от 2,5 до 4,5 кг и выше.\n\nГуменник населяет тундру и тайгу Евразии от Гренландии до Дальнего Востока. Зимует на морских побережьях Средней Европы и Азии, на Чёрном и Средиземном морях, частично в Средней Азии, в Японии и юго-восточном Китае.\n\nОснова питания гуменников, как и всех гусей, — растительная пища: зелёные побеги, травы, ягоды (особенно любят голубику). Во время зимовок и остановок во время перелётов кормятся также на хлебных полях, озимыми, на рисовых полях. Пуховые птенцы питаются водными и наземными насекомыми, ракообразными и моллюсками."
            : "The bean goose (Anser fabalis or Anser serrirostris) is a goose that breeds in northern Europe and Eurosiberia. It has two distinct varieties, one inhabiting taiga habitats and one inhabiting tundra. ",
        arrival: 1,
        month: [5],
        area: [1],
        count: 2,
        icon: 'duck',
        source: "https://ru.wikipedia.org/wiki/Гуменник",
        author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.M.",
        authorLink: "",
        author2: "Adrian Pingstone",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Лебедь-кликун" : "Whooper swan",
        latin: "Cygnus cygnus",
        family: locale == 'ru' ? "Утиные" : "Anatidae",
        imageUrl: "cygnus_cygnus",
        desc: locale == 'ru'
            ? "Водоплавающая птица из семейства утиных. Лебедь-кликун — крупная птица, весящая от 7 до 10 кг, иногда больше. Тело вытянутое, длина шеи примерно равна длине туловища. Ноги короткие, отнесены назад. В оперении большое количество пуха. Клюв лимонно-жёлтый с чёрным кончиком. Оперение белое. Молодые птицы имеют дымчато-серое оперение с более тёмной головой. Чисто белый цвет оперения кликун приобретает лишь на третий год жизни. Самец и самка внешне практически не отличаются друг от друга. Шею кликун держит прямо, не сгибая её в форме буквы «S», как лебедь-шипун. Сам лебедь-кликун также несколько мельче шипуна.\n\nЛебеди-кликуны гнездятся на северных границах лесов Евразии от Скандинавии до Чукотки и Сахалина. На юге встречаются до Ладожского озера, Монголии, севера Японии, северной части Каспийского моря. Зимовать летят на север Средиземного моря, на Каспий, а также в Среднюю, Южную и Юго-Восточную Азию. Лишь некоторые птицы остаются зимовать на местах гнездовья. Обычно не улетают на зимовку кликуны из Скандинавии, на Белом и Балтийском морях. Также остаются зимовать лебеди, живущие на незамерзающих или на не полностью замерзающих водоёмах Евразии. На места гнездовий кликуны прилетают парами в течение всей весны начиная с середины марта.\n\nЛебедь-кликун получил своё название за громкие, трубные крики, особенно часто издаваемые в полёте. Плавая, шею держит вертикально, крылья плотно прижаты к телу. Обычно лебедь-кликун, как и все лебеди, плавает неторопливо и величественно, но если его преследовать, то с трудом можно догнать даже на лодке. Взлетая с воды, долго разбегается, молотит лапами по воде, постепенно набирая скорость и высоту. По земле ходить не любит и делает это крайне неохотно и редко. Кликун осторожная птица, которая держится на широких водных пространствах, подальше от берегов."
            : "The whooper swan, also known as the common swan, is a large northern hemisphere swan. It is the Eurasian counterpart of the North American trumpeter swan, and the type species for the genus Cygnus.\nWhooper swans require large areas of water to live in, especially when they are still growing because their body weight cannot be supported by their legs for extended periods. The whooper swan spends much of its time swimming, straining the water for food, or eating plants that grow on the bottom.",
        arrival: 1,
        month: [5],
        area: [1],
        count: 1,
        icon: 'swan',
        source: "",
        author: locale == 'ru' ? "Белоусов М.Ф." : "Belousov M.F.",
        authorLink: "",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Малый лебедь" : "Tundra swan",
        latin: "Cygnus bewickii",
        family: locale == 'ru' ? "Утиные" : "Anatidae",
        imageUrl: "cygnus_bewikii",
        desc: locale == 'ru'
            ? "Малый лебедь очень похож на кликуна, но меньше размером: длина тела 115—127 см и 170—195 см размах крыльев. Весит малый лебедь около 5—6 кг. Голос малого лебедя также похож на голос кликуна, только тише и ниже. Кроме этого у малого лебедя клюв имеет больше чёрного цвета, тогда как у кликуна наоборот, чёрный цвет присутствует лишь на кончике клюва.\n\nМалый лебедь обитает на территории России в тундре Европейской и азиатской части страны. Встречается также на островах Колгуев, Вайгач и южный остров архипелага Новая Земля. Раньше гнездился и на Кольском полуострове, теперь оттуда исчез, также как из других районов южной тундры, например, нет его местами на Ямале и Таймыре. Сегодня выделяют западную и восточную популяцию, некоторые орнитологи считают эти популяции разными подвидами. Западная популяция гнездится в тундре от Кольского полуострова до побережья Таймыра. На юге распространяется до лесотундры долины Енисея. Также гнездится на п-ове Канин, на Югорском п-ове, по Карскому побережью, на Ямале и Гыдане. Восточная популяция населяет приморские тундры от дельты Лены до Чаунской низменности. Западная популяция зимовать улетает в Великобританию, Францию и Нидерланды, а также в бассейн Каспийского моря. Восточная популяция летит в Китай, Японию и Корею. В общей сложности малый лебедь проводит в тундре 120—130 дней."
            : "The tundra swan is a small swan of the Holarctic. As their common name implies, the tundra swan breeds in the tundra of the Arctic and subarctic, where they inhabit shallow pools, lakes and rivers. These birds are migratory birds. The winter habitat of both subspecies is grassland and marshland, often near the coast; they like to visit fields after harvest to feed on discarded grains and while on migration may stop over on mountain lakes.",
        arrival: 1,
        month: [5],
        area: [1],
        count: 1,
        icon: 'swan',
        source: locale == 'ru'
            ? "https://ru.wikipedia.org/wiki/Малый_лебедь"
            : "https://en.wikipedia.org/wiki/Tundra_swan",
        author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.M.",
        authorLink: "",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Савка" : "White-headed duck",
        latin: "Oxyura leucocephala",
        family: locale == 'ru' ? "Утиные" : "Anatidae",
        imageUrl: "oxyura_leucocephala",
        desc: locale == 'ru'
            ? "Савка — это коренастая утка средних размеров. Длина 43 — 48 см, масса 500—900 граммов, длина крыла самцов 15,7 — 17,2 см, самок — 14,8 — 16,7 см, размах крыльев 62 — 70 см. Окраска самца в брачном наряде очень характерна: белая голова с небольшой чёрной «шапочкой», голубой, «вздутый» у основания клюв, окраска тела состоит из сочетания тёмно-рыжего, бурого, коричневого и охристого цветов с мелким тёмным крапом в виде бесформенной сыпи или струйчатого рисунка. У самки окраска в целом как у самца, но голова того же цвета, что и остальное тело и больше бурых тонов в окраске; характерны светлые продольные полосы на щеках, клюв серый. У самца в летнем наряде клюв становится серым, чёрная «шапочка» на голове становится шире. \n\nВесной и летом встречаются самцы с почти чёрной головой с различным развитием белого на щеках — от отдельных перьев до вполне развитых пятен; клюв у них серый или голубой, — это, скорее всего, годовалые птицы. Молодые похожи на самку, но несколько меньше, а полосы на щеках и передняя часть шеи светлые, почти белые. Пуховички тёмно-бурые со светлыми полосками на щеках. Во всех нарядах и возрастах отличается характерной манерой плавать с поднятым почти вертикально клиновидным хвостом из жёстких перьев."
            : "The white-headed duck  is a small diving duck some 45 cm long. The male has a white head with black crown, a blue bill, and reddish-grey plumage. The female has a dark bill and rather duller colouring. Its breeding habitat is lakes with open water and dense vegetation at the margin. It dives under water and feeds on aquatic vegetation as well as some animal matter. It is more likely to swim away from a perceived threat than to fly. This duck is known from Spain, North Africa, Western Asia and Central Asia.",
        arrival: 1,
        month: [5],
        area: [1],
        count: 1,
        icon: 'duck',
        source: locale == 'ru'
            ? "https://ru.wikipedia.org/wiki/Савка"
            : "https://en.wikipedia.org/wiki/White-headed_duck",
        author: locale == 'ru' ? "Баздырев А.В." : "Bazdyrev A.V.",
        authorLink: "",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Скопа" : "Osprey",
        latin: "Pandion haliaetus",
        family: locale == 'ru' ? "Скопиные" : "Pandionidae",
        imageUrl: "pandion_haliaetus",
        desc: locale == 'ru'
            ? "Крупная хищная птица длиной 55—58 см, с размахом крыльев 145—170 см. Длинные крылья характерно изогнуты в районе запястного сустава. Перья верхней стороны тела бурого цвета; темя, затылок и нижняя сторона тела — белые; в районе запястного сустава имеются тёмно-коричневые пятна, а вокруг шеи крапчатое ожерелье. С боковой стороны головы имеется бурая полоска, проходящая от клюва через глаз и шею. Восковица и ноги свинцового цвета, клюв чёрный. Молодые особи почти не отличаются от взрослых птиц, но выглядят несколько пятнистыми из-за светло-коричневых кончиков перьев на внешней стороне крыльев и хвоста. Их пятнистое ожерелье менее ярко выражено, а радужная оболочка глаза оранжево-красная, тогда как у взрослых птиц она жёлтого цвета. Взрослая окраска молодой скопы появляется к 18-му месяцу\n\nСкопы распространены во всём мире, размножаясь или зимуя на всех континентах, кроме Антарктиды. Данных о том, размножаются ли они в Южной Америке или Индо-Малайзии, не имеется, но иногда их там встречают в зимнее время. Зимой они гнездятся в Египте и на некоторых островах Красного моря\n\nВ отличие от других хищных птиц, рацион скопы почти полностью (более 99 %) состоит из рыбы. В выборе конкретных видов птицы неразборчивы и питаются всем, что в состоянии поймать у поверхности воды. Однако на определённой территории два или три вида рыбы могут доминировать перед другими в качестве выбора жертвы\n\nОхотятся скопы в основном на лету (реже из засады), паря над водой на высоте 10—40 м. Когда жертва обнаружена, птица быстро опускается, выставляя лапы вперёд, отводит крылья назад и лапами вперёд погружается в воду. Для взлёта с водной поверхности она использует мощный, почти горизонтальный взмах крыла. В воздухе добыча удерживается одной лапой впереди и одной сзади."
            : "The osprey, also called sea hawk, river hawk, and fish hawk, is a diurnal, fish-eating bird of prey with a cosmopolitan range. It is a large raptor, reaching more than 60 cm in length and 180 cm across the wings. It is brown on the upperparts and predominantly greyish on the head and underparts.\nThe osprey tolerates a wide variety of habitats, nesting in any location near a body of water providing an adequate food supply. It is found on all continents except Antarctica, although in South America it occurs only as a non-breeding migrant. \nAs its other common names suggest, the osprey's diet consists almost exclusively of fish. It possesses specialised physical characteristics and unique behaviour in hunting its prey. Its unique characteristics classify it in its own taxonomic genus, Pandion, and family, Pandionidae.",
        arrival: 1,
        month: [5],
        area: [1],
        count: 1,
        icon: 'osprey',
        source: "https://ru.wikipedia.org/wiki/Скопа",
        author: locale == 'ru' ? "Самодуров К.В." : "Samodurov K.V.",
        authorLink: "",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Степной лунь" : "Pallid harrier",
        latin: "Circus macrourus",
        family: locale == 'ru' ? "Ястребиные" : "Accipitridae",
        imageUrl: "circus_macrourus",
        desc: locale == 'ru'
            ? "Вид перелётных птиц семейства луневых. У взрослых самцов светло-сизая спина с затемнёнными плечами; брови и щёки белые. Нижняя часть тела светло-серая, почти белая. На «пальцах» — главных перьях первостепенных маховых — чёрно-коричневое пятно; второстепенные маховые — пепельно-серые, с белой каймой на концах. Первостепенные цветом идентичны второстепенным, с серыми концами по внутренней стороне. Все перья с внутренней стороны белые. Надхвостье светлое, окаймлённое пепельно-серым; перья хвоста, за исключением двух средних, равномерно окрашенных в серый цвет, окаймлены серым и белым; кончики и нижняя часть хвостовых перьев — белые. Клюв чёрный, радужина и ноги жёлтые\n\nУ взрослых самок коричневый верх с пёстрой головой и зашейком; верхняя часть крыла и малые кроющие перья окаймлены, с рыжими кончиками. Лоб, брови и пятна под глазами белого цвета. Щёки тёмно-коричневые, с лёгким бурым отливом. «Пальцы» дымчато-коричневые; первостепенные маховые перья припорошены сверху пепельно-серым и, также как и второстепенные маховые, темнеют к концам, заканчиваются охристо-белыми штрихами. Надхвостье белое, с тёмно-коричневой каймой или пятнами. На хвосте два центральных пера — пепельно-коричневые, с шестью горизонтальными чёрно-бурыми полосами; на остальных перьях хвоста четыре полосы, бледно-рыжие с обратной стороны хвоста. Подхвостье красноватое либо рыжее. Нижние кроющие крыла бежевые, с коричневыми пятнами и прожилками. Восковица зеленовато-жёлтая. Ноги жёлтые; радужина коричневая\n\nВстречается в южной части Восточной Европы и Центральной Азии. Зиму проводит, главным образом, в Индии и Юго-Восточной Азии. Очень редко встречается в Британии и в Западной Европе.\n\nЭта хищная птица водится на открытых равнинах, болотах и пустошах. Охотится на маленьких животных, таких, например, как ящерицы, грызуны и птицы. В поисках пищи птица парит низко над лугами и верещатниками."
            : "The Pallid Harrier is a migratory bird of prey of the harrier subfamily. The scientific name is derived from the Ancient Greek. Circus is from kirkos, referring to a bird of prey named for its circling flight (kirkos, \"circle\"), probably the hen harrier and macrourus is \"long-tailed\", from makros, \"long\" and -ouros \"-tailed\"",
        arrival: 1,
        month: [5],
        area: [1],
        count: 1,
        icon: 'hawk',
        source: locale == 'ru'
            ? ""
            : "https://en.wikipedia.org/wiki/Pallid_harrier",
        author: locale == 'ru' ? "Белоусов М.Ф. " : "Belousov M.F.",
        authorLink: "",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Обыкновенный осоед" : "European honey buzzard",
        latin: "Pernis apivorus",
        family: locale == 'ru' ? "Ястребиные" : "Accipitridae",
        imageUrl: "pernis_apivorus",
        desc:
            "Дневной хищник семейства ястребиных отряда ястребообразных. Птица средних размеров, размах крыльев до 1,5 м. Распространён на большей части Европы и на западе Азии, на восток — до Алтая. В целом довольно редкая птица. Наиболее обычен в средней и южной тайге. Перелётный, прилетает позднее прочих хищников (на большей части ареала — в начале мая). Отлёт происходит в августе-сентябре, иногда затягивается до октября. Своё название осоед получил из-за того, что разрушает гнёзда ос и поедает их личинки. Кроме них, может питаться личинками шмелей или диких пчёл. В его рацион также входят лягушки, ящерицы, грызуны, жуки, кузнечики, мелкие птицы.\n\nКрупная птица с относительно длинным хвостом и узкими крыльями. На лбу и вокруг глаз короткие, жесткие перья, напоминающие чешую. Цевка покрыта сетчатыми щитками. У взрослых птиц спинная сторона темно-бурая, брюшная — очень изменчивой окраски: от однотонно-бурой до светлой с бурым поперечным рисунком или с редкими тёмно-бурыми продольными штрихами. Маховые перья бурые с черноватыми вершинами, беловатыми основаниями и темными поперечными полосами. Рулевые перья с тремя широкими темными поперечными полосами — двумя у основания хвоста и одной у вершины. Встречаются птицы и одноцветно-бурые. Радужина жёлтая или оранжевая. Клюв черноватый, лапы желтые, когти черные. Молодые птицы часто имеют светлоокрашенную голову и светлые пятна на спине. Голос звучит как «кии-е» или быстрое «ки-кики». Летает обычно невысоко, полет легкий и маневренный.",
        arrival: 1,
        month: [1],
        area: [1],
        count: 2,
        icon: 'hawk',
        source: "https://ru.wikipedia.org/wiki/Осоед",
        author: locale == 'ru' ? "Белоусов М.Ф. " : "Belousov M.F.",
        authorLink: "",
        author2: "Гашков С.И.",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Хохлатый осоед" : "Crested honey buzzard",
        latin: "Pernis ptilorhynchus",
        family: locale == 'ru' ? "Ястребиные" : "Accipitridae",
        imageUrl: "pernis_ptilorhynchus",
        desc: locale == 'ru'
            ? "Хищная птица средних размеров, крупнее обыкновенного осоеда. На затылочной части головы удлиненные перья образуют заостренный хохолок. Верх тела бурый или темно-бурый, горло белое с узкой черной полосой снизу, иногда бурое с малозаметной черной полосой.Самцы серой окраски, радужка глаз красная, на хвосте 2 широких полосы. Самки темнее с коричневой головой, радужка желтая. У самок и молодых птиц от 4 до 6 полос на хвосте как и у обыкновенного осоеда. Масса 0,7—1,5 кг, длина 59—66 см, крыло самцов 40,4—44,5 см, самок 43,7—49,7 см, размах крыльев — 150—170 см.\n\nОбитает в смешанных и лиственных лесах с открытыми участками. Питается перепончатокрылыми, преимущественно осами, может питаться и другими насекомыми, например цикадами"
            : "The crested honey buzzard is a bird of prey. They are also known as the Oriental, Asiatic, or Eastern honey buzzard. The name is derived from its diet, which consists mainly of the larvae of bees and wasps extracted from honey combs.\nCrested honey buzzards migrate for breeding to Siberia and Japan during the summer. They then spend the winter in Southeast Asia and the Indian subcontinent. They are also a year-round resident in these latter areas. They prefer well-forested areas with open spaces and are found from sea level up to 1,800 m. Unusually for raptors, the sexes can be differentiated.",
        arrival: 1,
        month: [1],
        area: [1],
        count: 2,
        icon: 'hawk',
        source: "https://ru.wikipedia.org/wiki/Хохлатый_осоед",
        author: locale == 'ru' ? "Белоусов М.Ф. " : "Belousov M.F.",
        authorLink: "",
        author2: locale == 'ru' ? "Гашков С.И." : "Gashkov S",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Малый перепелятник" : "Japanese sparrowhawk",
        latin: "Accipiter gularis",
        family: locale == 'ru' ? "Ястребиные" : "Accipitridae",
        imageUrl: "accipiter_gularis",
        desc: locale == 'ru'
            ? "Вид хищных перелётных птиц из семейства ястребиных. Гнездится в Китае, Японии, Корее и на юго-востоке Сибири и Дальнем Востоке. Зимует в Индонезии и на Филиппинах, мигрируют через остальную часть Юго-Восточной Азии. Это птица открытых ландшафтов и лесистой местности\n\nОбщий размер от 23—30 см, самки крупнее, чем самцы. Для самцов характерны испещрённые тёмными пестринами подкрылья и слабее испещрённая поперечными полосами нижняя часть тела, темно-серая спина и красная радужина глаз. У самок глаза желтые и нижняя часть тела испещрённая тёмными поперечными полосами. У неполовозрелых особей (subadultus) коричневая спина и полосатая грудь.Малый перпелятник охотится на мелких воробьиных птиц, которых ловит в полёте. Иногда отмечалось питание летучими мышами"
            : "The Japanese sparrowhawk is a bird of prey in the family Accipitridae which also includes many other diurnal raptors such as eagles, buzzards and harriers. The bird is known by many alternative names such as the Japanese lesser, Asiatic, or Eastern sparrowhawk. This species is a small raptor with broader and rounder wings and a shorter tail. Its total length measures 23–30 centimetres. It has a dark back and whitish underside with brown-grey barring and red-brown colouring on the sides in males, and with heavier brown barring on the abdomen in females.\nThe Japanese sparrowhawk typically inhabits many forest types such as deciduous, coniferous and mixed, at elevations up to 1800 meters but usually below 1000 meters. It prefers southern taiga and subalpine zones near rivers. During migration and wintering, they can be seen in villages, and open areas where woodlands and shrubs mix with marshes and fields ",
        arrival: 1,
        month: [1],
        area: [1],
        count: 1,
        icon: 'hawk',
        source: locale == 'ru'
            ? "https://ru.wikipedia.org/wiki/Малый_перепелятник"
            : "https://en.wikipedia.org/wiki/Japanese_sparrowhawk",
        author: locale == 'ru' ? "Самодуров К.В." : "Samodurov K.",
        authorLink: "",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Большой подорлик" : "Greater spotted eagle",
        latin: "Aquila clanga",
        family: locale == 'ru' ? "Ястребиные" : "Accipitridae",
        imageUrl: "aquila_clanga",
        desc: locale == 'ru'
            ? "Вид птиц семейства ястребиных. Большой подорлик имеет длину тела 65—73 см и массу тела 1,6—3,2 кг. Половой диморфизм не выражен, самки крупнее самцов. Редко встречается светлая форма. Экология вида изучена недостаточно. Большой подорлик несколько крупнее и темнее своего ближайшего родственника — малого подорлика, но в полевых условиях эти виды практически неразличимы. Оперение взрослых птиц (от трёх лет и старше) однотонное, тёмно-бурое, затылок и подхвостье окрашены несколько светлее. Маховые перья черноватые со светлыми основаниями внутренних опахал; рулевые — тёмно-бурые, иногда с черноватым поперечным рисунком. Изредка встречаются особи, у которых основной бурый цвет заменён охристо-желтоватым. У молодых особей оперение со светлыми каплевидными пятнами на верхней стороне тела, встречается также светлая вариация с преобладанием охристо-золотистого тона. В промежуточных нарядах постепенно уменьшается примесь охристых пестрин. Клюв и когти чёрные. Восковица и ноги жёлтые. Ноги оперены до самых пальцев.\n\nГнездится в Евразии от Финляндии, Польши, Венгрии и Румынии до Монголии, Китая и Пакистана. В России встречается от Калининграда до Приморья. Зимует в Индии, Иране и Индокитае. В Европе самая большая популяция этой птицы - в Беларуси(около 120-150 пар).\n\nБольшой подорлик обитает в смешанных лесах, а также возле пойменных лугов, болот, рек и озёр. Именно эти места являются для него отличными охотничьими угодьями. Чаще населяет равнины, но изредка встречается на высоте до 1000 м. Охотясь, подорлик парит на большой высоте или разыскивает добычу на земле.\n\nПищей подорликам служат грызуны (большей частью водяные полёвки), пресмыкающиеся, земноводные и мелкие птицы."
            : "The greater spotted eagle, also called the spotted eagle, is a large migratory bird of prey. \nDuring breeding season, greater spotted eagles are widely distributed across Eastern Europe, parts of Central Europe, central Russia, central Asia and parts of China, along with other isolated areas. During winter, they migrate, primarily to South Asia, Southeast Asia, the Middle East, the upper Mediterranean Basin, and parts of East Africa\nThe eagle is an opportunistic forager, especially during the winter. It will readily scavenge a variety of food sources, including carrion, as well as small mammals (principally rodents), frogs, and a variety of smaller birds (especially water birds), and occasionally reptiles and insects. The eagle is primarily an aerial hunter, gliding from concealed perches over marshes or wet fields to catch prey ",
        arrival: 1,
        month: [1],
        area: [1],
        count: 1,
        icon: 'hawk',
        source: locale == 'ru'
            ? ""
            : "https://en.wikipedia.org/wiki/Greater_spotted_eagle",
        author: locale == 'ru' ? "Белоусов М.Ф. " : "Belousov M.F.",
        authorLink: "",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Беркут" : "Golden eagle",
        latin: "Aquila chrysaetos",
        family: locale == 'ru' ? "Ястребиные" : "Accipitridae",
        imageUrl: "aquila_chrysaetos",
        desc: locale == 'ru'
            ? "Одна из наиболее известных хищных птиц семейства ястребиных, самый крупный орёл. Распространён в Северном полушарии, где обитает преимущественно в горах, в меньшей степени на равнинных открытых и полуоткрытых ландшафтах. Избегает жилых районов, чувствителен к беспокойству со стороны человека. На большей части ареала живёт оседло, держится парами возле гнезда, на северной периферии области распространения и высокогорья часть птиц откочёвывает в менее снежные районы.\n\nОхотится на самую разнообразную дичь весом от 0,4 до 5 кг, чаще всего на зайцев, грызунов и многие виды птиц, поедает падаль. Изредка нападает на ягнят и детёнышей оленей, либо на больных и раненых более крупных животных\n\nГнездо устраивает на дереве либо на труднодоступном скалистом уступе. В кладке обычно два яйца, однако чаще всего выживает только один птенец.\n\nОчень крупный и сильный орёл — длина тела 76—93 см, размах крыльев 180—240 см. Самки значительно крупнее самцов\n\nХвост слегка закруглённый и более длинный, чем у других типичных орлов. При парении птица пальцеобразно расставляет передние маховые перья.Цвет оперения взрослой птицы колеблется от тёмно-бурого до чёрно-бурого с золотистыми перьями на затылке и шее, из-за чего по-английски его название звучит как «золотой орёл» "
            : "The golden eagle is a bird of prey living in the Northern Hemisphere. It is the most widely distributed species of eagle. Like all eagles, it belongs to the family Accipitridae. They are one of the best-known birds of prey in the Northern Hemisphere. These birds are dark brown, with lighter golden-brown plumage on their napes. Immature eagles of this species typically have white on the tail and often have white markings on the wings. Golden eagles use their agility and speed combined with powerful feet and large, sharp talons to hunt a variety of prey, mainly hares, rabbits, and marmots and other ground squirrels.\nOnce widespread across the Holarctic, it has disappeared from many areas that are heavily populated by humans. Despite being extirpated from or uncommon in some of its former range, the species is still widespread, being present in sizeable stretches of Eurasia, North America, and parts of North Africa. It is the largest and least populous of the five species of true accipitrid to occur as a breeding species in both the Palearctic and the Nearctic.\n",
        arrival: 1,
        month: [5],
        area: [1],
        count: 2,
        icon: 'hawk',
        source: "",
        author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.M.",
        authorLink: "",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Орлан-белохвост" : "White-tailed eagle",
        latin: "Haliaeetus albicilla",
        family: locale == 'ru' ? "Ястребиные" : "Accipitridae",
        imageUrl: "haliaeetus_albicilla",
        desc: locale == 'ru'
            ? "Хищная птица из семейства ястребиных. Длина тела орлана-белохвоста составляет от 70 до 90 сантиметров, размах крыльев — от 200 до 230 сантиметров, масса — от 4 до 7 килограммов. Хвост короткий, клиновидной формы. Оперение взрослой особи бурого цвета, голова и шея с желтоватым осветлением, хвост белый. Клюв светло-жёлтого цвета, по сравнению с другими хищными птицами довольно большой и мощный. Радужная оболочка глаза также имеет светло-жёлтый цвет. В отличие от беркута (Aquila chrysaetos), лапы орлана-белохвоста не покрыты перьями до самых пальцев. Молодые особи тёмно-бурого цвета, клюв тёмно-серый. С каждой линькой молодые орланы-белохвосты становятся всё больше похожими на взрослых животных, а в пятилетнем возрасте орлан-белохвост полностью обретает взрослую внешность. Самки орлана-белохвоста значительно больше по размеру и весят больше, чем самцы. В полёте птица держит свои широкие крылья горизонтально. После чёрного грифа (Aegypius monachus), бородача (Gypaetus barbatus) и белоголового сипа (Gyps fulvus) орлан-белохвост является четвёртой по величине хищной птицей Европы."
            : "The white-tailed eagle, sometimes known as the 'sea eagle', is a large bird of prey, widely distributed across temperate Eurasia.\nThe white-tailed eagle is one of the largest living birds of prey. It is the largest of the dozen species of eagle found in Europe and the largest eagle across its distribution, excluding the Russian Far East and (during the winter) Hokkaido, Japan, where it co-exists with its larger cousin, Steller's sea eagle. The white-tailed eagle is sometimes considered the fourth largest eagle in the world and is, on average, the fourth heaviest eagle in the world. ",
        arrival: 1,
        month: [5],
        area: [1],
        count: 2,
        icon: 'hawk',
        source: "https://ru.wikipedia.org/wiki/Орлан-белохвост",
        author: locale == 'ru' ? "Баздырев А.В." : "Bazdyrev A.",
        authorLink: "",
        author2: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Кречет" : "Gyrfalcon",
        latin: "Falco rusticolus",
        family: locale == 'ru' ? "Соколиные" : "Falconidae",
        imageUrl: "falco_rusticolus",
        desc: locale == 'ru'
            ? "Птица из отряда соколообразных семейства соколиных.Самый крупный из соколов. Размах крыльев около 120—135 см при общей длине около 55—60 см. Самка заметно крупнее самца, её масса достигает 2 кг, масса же самца чуть больше 1 кг. Телосложение массивное, цевки оперены на 2/3 длины, крылья длинные и острые, хвост относительно длинный. \nОкраска сибирского кречета светлая (светлее лапландских кречетов), но изменчивая: от буровато-серой до почти белой сверху; брюшная сторона беловатая с темным рисунком. Темная полоска у разреза рта («усы») почти незаметна. На надклювье, как у всех соколов, характерный зубец. Лапы жёлтые. Скорость в полёте высокая, после нескольких взмахов птица быстро несётся вперёд, не парит. Сидящий кречет держится прямо.\n\nКречет похож на сапсана, но крупнее и имеет относительно более длинный хвост. Голос также похож на голос сапсана, но грубее и ниже: хриплое «кьяк-кьяк-кьяк» или протяжное «кеек-кеек-кеек». Весной может издавать довольно тихую и высокую трель\n\nРаспространение.\n Арктическая и субарктическая зоны Европы, Азии и Северной Америки; обособленный подвид имеется на Алтае, Саяне, центральном (вероятно восточном) Тянь-Шане. Самые северные пункты — в Гренландии под 82°15' с. ш. и 83°45'; самые южные, кроме горно-азиатского подвида — средняя Скандинавия, Командорские о-ва (о. Беринга, около 55° с. ш.). На кочевках в холодное время года примерно до 60° с. ш. в Сев. Америке, Азии, Европе."
            : "The gyrfalcon, the largest of the falcon species, is a bird of prey. The abbreviation gyr is also used. \nIt breeds on Arctic coasts and tundra, and the islands of northern North America and the Eurosiberian region. It is mainly a resident there also, but some gyrfalcons disperse more widely after the breeding season, or in winter. Individual vagrancy can take birds for long distances. Its plumage varies with location, with birds being coloured from all-white to dark brown. ",
        arrival: 1,
        month: [5],
        area: [1],
        count: 2,
        icon: 'falcon',
        source: "",
        author: locale == 'ru' ? "Белоусов М.Ф. " : "Belousov M.F.",
        authorLink: "",
        author2: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Сапсан" : "Peregrine falcon",
        latin: "Falco peregrinus",
        family: locale == 'ru' ? "Соколиные" : "Falconidae",
        imageUrl: "falco_peregrinus",
        desc: locale == 'ru'
            ? "хищная птица из семейства соколиных, распространённая на всех континентах, кроме Антарктиды. Размером с серую ворону, выделяется тёмным, аспидно-серым оперением спины, пёстрым светлым брюхом и чёрной верхней частью головы, а также чёрными «усами». Сапсан является как самой быстрой птицей, так и самым быстрым представителем царства животных вообще. По оценкам специалистов, в стремительном пикирующем полёте он способен развивать скорость свыше 322 км/ч, или 90 м/с. Однако в горизонтальном полете уступает в скорости стрижу. Во время охоты сапсан сидит на присаде либо планирует в небе; обнаружив добычу, он приподнимается над жертвой и стремительно пикирует вниз («делает ставку»), по касательной ударяя её сложенными и прижатыми к туловищу лапами.\n\n Объектом охоты этого сокола являются преимущественно среднего размера птицы, как например голуби, скворцы, утки и другие водные и околоводные виды, реже небольшие млекопитающие. Половая зрелость наступает в возрасте двух лет, пары сохраняются в течение всей жизни. Гнездится на скалистых обрывах, вершинах увалов, реже на кочках моховых болот или каменных строениях — крышах и уступах высотных зданий, колокольнях, мостах."
            : "The peregrine falcon, also known simply as the peregrine, and historically as the duck hawk in North America, is a cosmopolitan bird of prey. A large, crow-sized falcon, it has a blue-grey back, barred white underparts, and a black head. The peregrine is renowned for its speed. It can reach over 320 km/h during its characteristic hunting stoop (high-speed dive), making it the fastest member of the animal kingdom\nThe peregrine's breeding range includes land regions from the Arctic tundra to the tropics. It can be found nearly everywhere on Earth, except extreme polar regions, very high mountains, and most tropical rainforests; the only major ice-free landmass from which it is entirely absent is New Zealand. This makes it the world's most widespread raptor and one of the most widely found wild bird species.\nThe peregrine is a highly successful example of urban wildlife in much of its range, taking advantage of tall buildings as nest sites and an abundance of prey such as pigeons and ducks. Both the English and scientific names of this species mean \"wandering falcon\", referring to the migratory habits of many northern populations. ",
        arrival: 1,
        month: [5],
        area: [1],
        count: 2,
        icon: 'falcon',
        source: locale == 'ru'
            ? "https://ru.wikipedia.org/wiki/Сапсан"
            : "https://en.wikipedia.org/wiki/Peregrine_falcon",
        author: locale == 'ru' ? "Гашков С.И." : "Gashkov S.",
        authorLink: "",
        author2: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Дербник" : "Merlin",
        latin: "Falco columbarius",
        family: locale == 'ru' ? "Соколиные" : "Falconidae",
        imageUrl: "falco_columbarius",
        desc: locale == 'ru'
            ? "Хищная птица, мелкий сокол. Распространённый, но достаточно редкий вид. Гнездится в Северной и Восточной Европе, лесной и лесостепной зоне Азии и в Северной Америке. На большей части территории перелётная птица, зимует к западу и югу от гнездового ареала, в отдельных случаях достигая тропиков. Предпочтение отдаёт открытым пространствам — долинам рек, сфагновым болотам, степи, редколесью, морским побережьям. Сплошного тёмного леса избегает, однако в сезон размножения часто встречается на опушках. Охотится в основном на мелких птиц, в меньшей степени на грызунов, ящериц и насекомых. Гнездо устраивает на земле, на деревьях, в нишах скал.\n\nМелкий коренастый сокол, с относительно короткими заострёнными крыльями и длинным хвостом. Длина тела 24—32 см, размах крыльев 53—73 см. Самки в среднем на треть крупнее самцов, их масса составляет 160—311 г. \n\nСамки внешне похожи на балобана, но значительно меньше размером — тёмно-бурые сверху и более серым, испещрённым пестринами низом. Хвост полосатый с чередованием бурых и кремовых полос и со светлым окончанием. У обоих полов клюв буровато-серый, радужина тёмно-каряя, восковица и ноги жёлтые. Молодые птицы похожи на самок\n\nОкраска и размеры сильно изменяются географически, в связи с чем выделяют 9 подвидов дербника. \n\nПолёт несколько напоминает полёт ласточек — быстрый и маневренный, чередуется частыми неглубокими взмахами крыльев, и скольжением. Охотится невысоко над землёй, при пикировании волнообразно скользит в воздухе со сложенными крыльями.\n\nНеобщительная и вне гнезда обычно молчаливая птица. Сигнал беспокойства — типичный для соколов ускоряющийся резкий и отрывистый крик «кьяк-кьяк-кьяк», более быстрый и высокий у самок\n\nОбитает на различных открытых ландшафтах — в кустарниковой тундре, по окраинам торфяных болот, вдоль речных долин, в редколесье, в степи, вересковых пустошах, среди горного кустарника, в песчаных дюнах. Наиболее часто встречается в лесотундре и северном поясе тайги, где достигает максимальной численности. Сплошного тёмного леса избегает. В местах гнездовий поднимается в горы до 2000 м, в местах миграции до 3000 м над уровнем моря\n\nПреимущественно перелётная птица. На Британских островах, частично в Исландии, горных районах Центральной Азии, вдоль северо-западного побережья Америки и в канадских прериях живёт оседло либо совершает незначительные кочёвки. В тёплые зимы часть птиц южной части ареала также остаётся на местах. Зимует южнее гнездового ареала, в восточном полушарии достигая стран Средиземноморья, Северной Африки, Ближнего Востока, Ирака, Ирана, Китая, Кореи и Японии. В Америке перемещается на юг до Венесуэлы, Эквадора и северного Перу. В России зимой обычен на юге и в средней полосе страны "
            : "The merlin (Falco columbarius) is a small species of falcon from the Northern Hemisphere, with numerous subspecies throughout North America and Eurasia.\nMerlins inhabit fairly open country, such as willow or birch scrub, shrubland, but also taiga forest, parks, grassland such as steppe and prairies, or moorland. They are not very habitat-specific and can be found from sea level to the treeline. In general, they prefer a mix of low and medium-height vegetation with some trees, and avoid dense forests as well as treeless arid regions. During migration however, they will utilize almost any habitat.",
        arrival: 1,
        month: [5],
        area: [1],
        count: 1,
        icon: 'falcon',
        source: "https://ru.wikipedia.org/wiki/Дербник",
        author: locale == 'ru' ? "Белоусов М.Ф. " : "Belousov M.F.",
        authorLink: "",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Серая куропатка" : "Grey partridge",
        latin: "Perdix perdix",
        family: locale == 'ru' ? "Фазановые" : "Phasianidae",
        imageUrl: "perdix_perdix",
        desc: locale == 'ru'
            ? "Широко распространённый вид из рода куропаток. Имеет тело округлой формы, общая длина 28—32 см. Клюв и ноги тёмного цвета. Верхняя часть оперения рябая, коричневого цвета, бока и хвост рыжие. Шпоры на ногах отсутствуют. Половые различия сводятся лишь к тому, что самки окрашены бледнее, чем самцы. Обитают в умеренной зоне Евразии. Населяет почти всю Европу, Малую Азию, Казахстан и юг Западной Сибири, от Британских островов и Скандинавии до Алтая и Тувы.\n\nЖивёт в разных биотопах: в разнотравных степях с кустарниками и лесными колками, на равнинах и в долинах рек, в лесостепях, на хлебных полях и по залежам, по лесным вырубкам, на опушках лесов, по оврагам, заросшим кустарником, реже по вересковым пустошам, в бугристых песках с зарослями ивы или тамариска. В горных местностях держится в предгорьях, на полях в лесном поясе и поднимается до субальпийских лугов.\n\nЯвляются оседлыми птицами, живут в открытой местности. Питаются разнообразными семенами, иногда насекомыми. Гнёзда устраивают на земле в виде выстланных углублений, расположенных в укромных местах. Вся жизнь птицы проходит приблизительно на одной территории. Только нехватка пропитания заставляет её покидать обжитые участки и отправиться на поиски пропитания. Подобные миграции она переносит нелегко, вынужденные переселения превращают серую куропатку в очень пугливую птицу.\n\nолос самца — громкое «кукареку», похожее на крик петуха, а самки — квохтанье. Зимой переселяется к населенным местам, ночует во дворах, у построек, а также в кустах или у подножия барханов и холмов, собравшись тесной стайкой на снегу с подветренной стороны. \n\n Летает птица редко, только если ей угрожает опасность и в случае пополнения запасов еды. В основном большую часть времени проводит на земле, густая растительность из трав и кустарников служит ей защитой от хищников. У куропатки развитые мышцы ног, поэтому она быстро бегает и хорошо преодолевает препятствия. \n\nЗимой и осенью ведет стайный образ жизни. Весной, в период размножения серые куропатки разбиваются на пары. У каждой пары существует свой участок для строительства гнезда."
            : "The grey partridge (Perdix perdix), also known as the gray-legged partridge, English partridge, Hungarian partridge, or hun, is a gamebird in the pheasant family Phasianidae.\nThe grey partridge is a rotund bird, brown-backed, with grey flanks and chest. The belly is white, usually marked with a large chestnut-brown horse-shoe mark in males, and also in many females. Hens lay up to twenty eggs in a ground nest. The nest is usually in the margin of a cereal field, most commonly winter wheat.",
        arrival: 1,
        month: [5],
        area: [1],
        count: 1,
        icon: 'pheasant',
        source: locale == 'ru'
            ? "https://ru.wikipedia.org/wiki/Серая_куропатка"
            : "https://en.wikipedia.org/wiki/Grey_partridge",
        author: "Ekaterina Chernetsova",
        authorLink:
            "https://www.flickr.com/photos/katechka/albums/72157679328402628/",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Стерх" : "Siberian crane",
        latin: "Grus leucogeranus",
        family: locale == 'ru' ? "Журавлиные" : "Gruidae",
        imageUrl: "grus_leucogeranus",
        desc: locale == 'ru'
            ? "вид журавлей, эндемик северных территорий России. Стерхи находятся под угрозой исчезновения и внесены в международные списки Красной книги Международного союза охраны природы и конвенции по международной торговле животными СИТЕС, а также Красной книги России. В настоящее время численность якутской популяции вида (в дикой природе) оценивается приблизительно в 2900—3000 особей. Критическая ситуация сложилась с западносибирскими стерхами — их в природе осталось около 20 особей. \n\nКрупная птица: высота около 140 см, размах крыльев 2,1—2,3 м, масса 5—8,6 кг. Перья в передней части головы вокруг глаз и клюва отсутствуют, кожа в этом месте у взрослых птиц окрашена в ярко-красный цвет. Роговица глаз красноватая или бледно-жёлтая. Клюв длинный (самый длинный среди всех журавлей), красный, на конце пилообразно зазубренный. Оперение большей части тела белое, за исключением чёрных маховых перьев первого порядка на крыльях. Ноги длинные, красновато-розовые. У молодых стерхов передняя часть головы бледно-жёлтая; оперение коричневато-рыжее, с бледными пятнами на шее и подбородке. Изредка встречаются белые молодые стерхи с рыжими пятнами на спине, шее и по бокам. Глаза у птенцов первые полгода голубые, затем желтеют.\n\nСтерх гнездится исключительно на территории России. Отмечено две изолированные друг от друга популяции этой птицы: западная в Архангельской области, Республике Коми и Ямало-Ненецком автономном округе, и восточная на севере Якутии. Первая популяция, условно называемая «Обской», на западе ограничена устьем реки Мезень южнее полуострова Канин, на востоке поймой реки Куноват и нижним течением Оби в Ямало-Ненецком округе. В зимнее время птицы этой популяции мигрируют на заболоченные территории Индии (Национальный парк Кеоладео) и северного Ирана возле побережья Каспийского моря (Шомаль). Ареал восточной популяции пролегает в междуречье рек Яна, Индигирка и Алазея в Якутии; на зимовку эти птицы перелетают в Китай, в долину реки Янцзы в её среднем течении.\n\nСтерхи всеядны и питаются как растительной, так и животной пищей. Весной и летом рацион включает в себя мелких грызунов, яйца и птенцов других птиц, рыбу, насекомых и других беспозвоночных животных, клюкву, подводные части осоки и пушицы. Во время зимней миграции птицы употребляют в основном растительную пищу: богатые питательными веществами корневища и клубни водных растений. В отличие от других журавлей, стерхи никогда не ищут пропитание на сельскохозяйственных посевах."
            : "The Siberian crane (Leucogeranus leucogeranus), also known as the Siberian white crane or the snow crane, is a bird of the family Gruidae. They are distinctive among the cranes: adults are nearly all snowy white, except for their black primary feathers that are visible in flight, and with two breeding populations in the Arctic tundra of western and eastern Russia. The eastern populations migrate during winter to China, while the western population winters in Iran and (formerly) in Bharatpur, India.\nAmong the cranes, they make the longest distance migrations. Their populations, particularly those in the western range, have declined drastically in the 20th century due to hunting along their migration routes and habitat degradation.\nAdults of both sexes have a pure white plumage except for the black primaries, alula and primary coverts. The fore-crown, face and side of head is bare and brick red, the bill is dark and the legs are pinkish. The iris is yellowish. Juveniles are feathered on the face and the plumage is dingy brown. There are no elongated tertial feathers as in some other crane species.",
        arrival: 1,
        month: [5],
        area: [1],
        count: 1,
        icon: 'crane',
        source: "https://www.flickr.com/photos/francesco_veronesi/15546835731",
        author: "Francesco Veronesi",
        authorLink: "https://www.flickr.com/photos/francesco_veronesi/",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Серый журавль" : "Common crane",
        latin: "Grus grus",
        family: locale == 'ru' ? "Журавлиные" : "Gruidae",
        imageUrl: "grus_grus",
        desc: locale == 'ru'
            ? "Крупная птица, обитающая в Европе и Азии; второй по численности вид журавлей. Это крупная птица: высота около 115 см, размах крыльев 180—200 см; вес самца до 6 кг, самки до 5 кг 900 г. Оперение большей части тела синевато-серое, что позволяет птице маскироваться от врагов среди лесистой местности. Спина и подхвостье несколько темнее, а крылья и брюхо более светлые. Окончания крыльев чёрные. Передняя часть головы, подбородок, верхняя часть шеи и уздечка чёрные либо тёмно-серые. Затылок синевато-серый. По бокам головы имеется белая широкая полоса, начинающаяся под глазами и далее уходящая вниз вдоль шеи. На темени перья почти отсутствуют, а участок голой кожи выглядит красной шапочкой. Клюв светлый от 20—30 см. Ноги чёрные. У молодых журавлей перья на голове и шее серые с рыжими окончаниями.\n\nГнездится серый журавль в северной, западной и восточной Европе; на большей части территории России вплоть до бассейна реки Колымы и Забайкалья, Северной Монголии и Китае. Кроме того, небольшие участки гнездовий замечены в Турции, на Алтае и Тибете. Отсутствует серый журавль в районах тундры на севере и полупустынь на юге. Зимой мигрирует на юг — в Испанию, Францию, Северную и Восточную Африку, Ближний Восток, Индию, а также южные и восточные районы Китая. Известны залёты в Северную Америку\n\nГнездится главным образом в болотистой местности: кочковатых болотах, окружённых лесом, в заросших осокой или камышом лугах, в заболоченных поймах рек. Предпочитают большие изолированные заболоченные территории, но в случае недостатка таких мест могут обосноваться на небольших участках вблизи от сельскохозяйственных угодий. Для зимовки выбирают возвышенности, густо покрытые травянистой растительностью; часто селятся вблизи от сельскохозяйственных угодий и пастбищ."
            : "The common crane is a large, stately bird and a medium-sized crane. It is 100–130 cm long with a 180–240 cm wingspan. The body weight can range from 3 to 6.1 kg. Males are slightly heavier and larger than females, with weight showing the largest sexual size dimorphism, followed by wing, central toe, and head length in adults and juveniles\nThis species is slate-grey overall. The forehead and lores are blackish with a bare red crown and a white streak extending from behind the eyes to the upper back. The overall colour is darkest on the back and rump and palest on the breast and wings. \nThe common crane predominantly breeds in boreal and mixed forests, from an elevation of sea-level to 2,200 m. In northern climes, it breeds in treeless moors, on bogs, or on dwarf heather habitats, usually where small lakes or pools are also found. ",
        arrival: 1,
        month: [5],
        area: [1],
        count: 2,
        icon: 'crane',
        source: "",
        author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.M.",
        authorLink: "",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Чёрный журавль" : "Hooded crane",
        latin: "Grus monacha",
        family: locale == 'ru' ? "Журавлиные" : "Gruidae",
        imageUrl: "grus_monacha",
        desc: locale == 'ru'
            ? "Птица семейства журавлей, гнездящаяся преимущественно на территории Российской Федерации. \n\nОдин из самых маленьких видов журавлей, его высота составляет около 100 см, а вес 3,75 кг. Оперение большей части тела синевато-серое. Маховые перья первого и второго порядков крыльев, а также кроющие перья хвоста чёрные. Голова и большая часть шеи белые. На темени перья почти отсутствуют, за исключением множества чёрных щетинок; кожа в этом месте у взрослых птиц окрашена в ярко-красный цвет. Клюв зеленоватый, в основании слегка розоватый и желто-зеленый на вершине. Ноги черно-бурые. Половой диморфизм (видимые различия между самцом и самкой) не выражен, хотя самцы выглядят несколько крупнее. У молодых птиц на первом году жизни темя покрыто чёрно-белыми перьями, а оперение тела имеет рыжеватый оттенок.\n\nГнездится чёрный журавль преимущественно на территории Российской Федерации, а также на небольшой территории северного Китая. В России ареал населен несколькими отдельными популяциями, ограниченными на юго-востоке средней частью хребта Сихотэ-Алинь в Хабаровском крае и на северо-западе платом Путорана в Красноярском крае. Гнездящихся птиц можно встретить в верхнем течении реки Вилюй, в бассейнах рек Чульман, Амур.\n\nВ зимнее время более 80 % птиц мигрирует в район питомника Идзуми на японском острове Кюсю; остальные журавли зимуют в районе г. Като на юге Японии, в Южной Корее и в среднем течении реки Янцзы в Китае\n\nРацион не отличается от рациона серого журавля и включает в себя как растительную, так и животную пищу. Питается частями водных растений, ягодами, зерном, насекомыми, лягушками, саламандрами и другими мелкими животными. В японском питомнике подкармливается семенами риса, кукурузы, пшеницы и других зерновых культур. "
            : "It has a grey body. The top of the neck and head is white, except for a patch of bare red skin above the eye. It is one of the smallest cranes, but is still a fairly large bird, at 1 mlong, a weight of 3.7 kg and a wingspan of 1.9m\nThe hooded crane breeds in south-central and south-eastern Siberia. Breeding is also suspected to occur in Mongolia. Over 80% of its population winters at Izumi, southern Japan. There are also wintering grounds in South Korea and China. ",
        arrival: 1,
        month: [5],
        area: [1],
        count: 1,
        icon: 'crane',
        source: "",
        author: "Alastair Rae",
        authorLink:
            "https://www.flickr.com/photos/merula/5820629379/in/photolist-9SmfjX-2jqiVda",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Кулик-сорока" : "Eurasian oystercatcher",
        latin: "Haematopus ostralegus",
        family: locale == 'ru' ? "Кулики-сороки" : "Haematopodidae",
        imageUrl: "haematopus_ostralegus",
        desc: locale == 'ru'
            ? "Крупный кулик с длинным оранжевым клювом и чёрно-белым контрастным оперением. Наиболее распространённый вид небольшого семейства Haematopodidae, куда входят птицы, обитающие в основном на морских побережьях. Распространён в Западной Европе, центральных районах Евразии, на Камчатке, в Китае и на западе Корейского полуострова. Гнездится на песчаных и галечных пляжах морей и крупных внутренних водоёмов. Питается различными беспозвоночными — ракообразными, моллюсками и насекомыми. Пегой окраской оперения напоминает сороку, за что и получил своё русское название.\n\nКлюв оранжево-красный, прямой, уплощённый с боков, длиной 8—10 см. Ноги относительно короткие для кулика, розовато-красные.\n\nХорошо бегает и плавает. Полёт прямой, стремительный, с частыми взмахами крыльев, напоминает полёт уток. Суетливая и шумная птица. Основной крик, издаваемый как на земле, так и в воздухе — далеко слышная трель «квирррррр». Во время насиживания издаёт резкое повторяющееся «квиик-квиик-квиик», обычно с опущенным клювом. Последняя песня, часто ускоряющаяся и переходящая в трель, иногда исходит одновременно от обоих членов пары либо от небольшой компактной группы птиц.\n\nКак правило, перелётный вид. Только на северо-западе Европы часть птиц зимует в местах гнездовий либо совершает незначительные кочёвки — например, сотни тысяч зимующих куликов можно наблюдать на юго-западе Англии и берегах Ваттового моря, где гнездящиеся здесь птицы смешиваются с прилетающими куликами из Исландии, северных районов Великобритании, Скандинавии и северо-запада России. Другая часть птиц перемещается южнее к берегам Пиренейского полуострова и Южной Европы, а единицы пересекают Средиземное море и достигают Северной Африки. Самым южным государством, где отмечены кулики-сороки, является Гана. Популяции центральной Евразии (подвид longipes) являются дальними мигрантами — места их зимовок находятся в восточной Африке, на Аравийском полуострове и в Индии. Подвид osculans зимует на юго-востоке Китая."
            : "The Eurasian oystercatcher also known as the common pied oystercatcher, or just oystercatcher, is a wader. It has striking black and white plumage, a long straight orange-red bill, red eyes and relatively short dull pink legs. The sexes are similar in appearance but the bill of the female is longer than that of the male.\nThe oystercatcher is a migratory species over most of its range. The European population breeds mainly in northern Europe, but in winter the birds can be found in north Africa and southern parts of Europe. Although the species is present all year in Ireland, Great Britain and the adjacent European coasts, there is still migratory movement: the large flocks that are found in the estuaries of south-west England in winter mainly breed in northern England or Scotland. Similar movements are shown by the Asian populations. The birds are highly gregarious outside the breeding season.",
        arrival: 1,
        month: [5],
        area: [1],
        count: 1,
        icon: 'sandpiper',
        source: "",
        author: locale == 'ru' ? "Белоусов М.Ф. " : "Belousov M.F.",
        authorLink: "",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Тонкоклювый кроншнеп" : "Slender-billed curlew",
        latin: "Numenius tenuirostris",
        family: locale == 'ru' ? "Бекасовые" : "Scolopacidae",
        imageUrl: "numenius_tenuirostris",
        desc: locale == 'ru'
            ? "Вид птиц из семейства бекасовых. Длина тела около 40 см, вес — от 255 до 360 граммов. Длинные ноги и длинный острый клюв, загнутый вниз; оперение землисто-серое с густыми полосами и крапинками; на голове светлые продольные полосы; окраска у самцов и самок одинаковая. Похож на среднего кроншнепа. В настоящее время находится на грани исчезновения либо уже вымер. Общая численность — менее 50 особей"
            : "The slender-billed curlew is a small curlew, 36–41 cm in length with a 77–88 cm wingspan. It is therefore about the same size as a Eurasian whimbrel, but it is more like the Eurasian curlew in plumage.\nAfter a long period of steady decline, the slender-billed curlew is extremely rare, with only a minute and still declining population. This is thought to be fewer than 50 adult birds, with the last verified sighting in 2004. As a result, it is now listed as critically endangered. ",
        arrival: 1,
        month: [5],
        area: [1],
        count: 1,
        icon: 'sandpiper',
        source: locale == 'ru'
            ? "https://ru.wikipedia.org/wiki/Тонкоклювый_кроншнеп"
            : "https://en.wikipedia.org/wiki/Slender-billed_curlew",
        author: locale == 'ru'
            ? "рисунок Х. Грёнвольда "
            : "Illustration by Henrik Grönvold",
        authorLink: "",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Большой кроншнеп" : "Eurasian curlew",
        latin: "Numenius arquata",
        family: locale == 'ru' ? "Бекасовые" : "Scolopacidae",
        imageUrl: "numenius_arquata",
        desc: locale == 'ru'
            ? "Большой кроншнеп достигает величины от 50 до 60 см и весит от 600 до 1000 г\n\nЕго размах крыльев составляет от 80 до 100 см. Они являются самыми крупными представителями семейства бекасовых и наиболее часто встречающимися в Европе кроншнепами. Характерной чертой большого кроншнепа является длинный и выгнутый вниз клюв. Самка, как правило, несколько крупнее самца, а её клюв ещё длиннее и изогнутее. Помимо этого, между обоими полами внешних отличий не существует. Окраска большого кроншнепа скорее скромная, оперение варьирует от бежево-коричневого до серо-коричневого с различными полосками и вкраплениями. Крик большого кроншнепа состоит из длинного, почти печального звука, напоминающее «кури-ли». Видимо поэтому в англоязычном мире эта птица называется Curlew. В пении упражняются, как правило, самцы, которые с его помощью отмечают свои гнездовые участки.\n\nБольшие кроншнепы гнездятся в болотистых и прочих влажных местностях. Основным ареалом их является Северная и Центральная Европа, а также Британские острова. В зимнее время эти птицы совершают перелёт на побережья Западной и Южной Европы\n\nБольшие кроншнепы встречаются также в большой части Азии, их ареал доходит до озера Байкал и Маньчжурии на востоке и Киргизии на юге.\n\nК добыче больших кроншнепов относятся насекомые, черви и моллюски, которых они подбирают с земли своим длинным клювом. При этом они используют клюв также в качестве пинцета, чтобы извлечь улиток или ракушек из их твёрдых оболочек."
            : "The Eurasian curlew or common curlew (Numenius arquata) is a very large wader\nIt is one of the most widespread of the curlews, breeding across temperate Europe and Asia.",
        arrival: 1,
        month: [5],
        area: [1],
        count: 1,
        icon: 'sandpiper',
        source: "",
        author: locale == 'ru' ? "Белоусов М.Ф. " : "Belousov M.F.",
        authorLink: "",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Средний кроншнеп" : "Eurasian whimbrel",
        latin: "Numenius phaeopus",
        family: locale == 'ru' ? "Бекасовые" : "Scolopacidae",
        imageUrl: "numenius_phaeopus",
        desc: locale == 'ru'
            ? "Длина тела составляет от 40 до 46 см. Размах крыльев — 80 см, вес самцов — 268—550 г, самок — от 315 до 600 г. Отличается от большого кроншнепа тем, что чёрно-бурое темя у него разделено посередине светлой продольной полосой и окаймлено светлыми бровями, клюв короче, окраска серая, с пестринами по всему телу. Лапы голубовато-серые, когти тёмно-серые. Крик напоминает трель.\n\nСредний кроншнеп обитает на северных болотах, заболоченных берегах озёр, в лесном молодняке на месте пожарищ, но всегда вблизи воды. Гнездится в Западной Европе и на северо-западе Северной Америки, в России в лесотундре и по моховым болотам от Кольского полуострова и Латвии до Анадыря и Камчатки. Перелётная птица, зимует от Средиземного моря и Юго-Восточного Китая и далее на юг до Тасмании и Новой Зеландии, до юга Африки и Южной Америки.\n\nЛетом, в период размножения, средний кроншнеп питается исключительно ягодами водяники чёрной\n\nЗимой на материковой части суши он поедает преимущественно насекомых и их личинок, а также червей и улиток, а на побережье птица питается крабами, креветками, бокоплавами и морскими моллюсками "
            : "The Eurasian or common whimbrel (Numenius phaeopus), also known as the white-rumped whimbrel in North America, is a wader\nThe common whimbrel was traditionally considered a sub-cosmopolitan bird, breeding in Russia and Canada, then migrating to coasts all around the world to spend the winter. However the North American population of whimbrels were considered distinct enough to be considered a separate species from the common whimbrel.\nThe Eurasian whimbrel is a fairly large wader, though mid-sized as a member of the curlew genus. ",
        arrival: 1,
        month: [5],
        area: [1],
        count: 1,
        icon: 'sandpiper',
        source: locale == 'ru'
            ? "https://ru.wikipedia.org/wiki/Средний_кроншнеп"
            : "https://en.wikipedia.org/wiki/Eurasian_whimbrel",
        author: locale == 'ru' ? "Белоусов М.Ф. " : "Belousov M.F.",
        authorLink: "",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Большой веретенник" : "Black-tailed godwit",
        latin: "Limosa limosa",
        family: locale == 'ru' ? "Бекасовые" : "Scolopacidae",
        imageUrl: "limosa_limosa",
        desc: locale == 'ru'
            ? "Крупный кулик из семейства бекасовых, гнездящийся в сырых низинах и заболоченных ландшафтах от Исландии до Дальнего востока. Районы зимовок очень обширны — Западная и Южная Европа, Африка, Южная и Юго-Восточная Азия, Австралия.\n\nИзящный кулик с относительно маленькой головой, длинным клювом и длинными ногами. Размерами сравним со средним кроншнепом (Numenius phaeopus), однако имеет более стройное телосложение. Длина 36—44 см, размах крыльев 70—82 см, масса 160—500 г\n\nСамцы в среднем несколько мельче самок и имеют более короткий клюв. В брачном наряде голова, шея и передняя часть груди ржавчато-рыжие. В верхней части головы тёмно-бурые продольные полосы, с боков тонкие штрихи того же оттенка. Спина пёстрая — чёрно-бурая с рыжими поперечными пятнами и серовато-бурыми пестринами. Верхние кроющие серовато-бурые, маховые чёрно-бурые с белыми основаниями.\n\nВ полёте белые перья образуют широкую белую полосу вдоль крыла — заметный отличительный признак от схожего по окрасу малого веретенника. Испод крыла белый. Другие характерные особенности — почти полностью чёрный хвост с белым надхвостьем (у малого веретенника хвост рябой) и беловатый низ с многочисленными бурыми либо рыжеватыми пестринами на боках. Клюв бледный оранжево-жёлтый и черноватый на конце, по сравнению с малым веретенником немного длиннее и более прямой, тогда как у второго вида он заметно искривлён кверху."
            : "The black-tailed godwit (Limosa limosa) is a large, long-legged, long-billed shorebird\nIts breeding range stretches from Iceland through Europe and areas of central Asia. Black-tailed godwits spend (the northern hemisphere) winter in areas as diverse as the Indian subcontinent, Australia, New Zealand, western Europe and west Africa. The species breeds in fens, lake edges, damp meadows, moorlands and bogs and uses estuaries, swamps and floods in (the northern hemisphere) winter\nThe black-tailed godwit is a large wader with long bill (7.5 to 12 cm long), neck and legs. During the breeding season, the bill has a yellowish or orange-pink base and dark tip; the base is pink in winter. The legs are dark grey, brown or black. ",
        arrival: 1,
        month: [5],
        area: [1],
        count: 2,
        icon: 'sandpiper',
        source: locale == 'ru'
            ? "https://ru.wikipedia.org/wiki/Большой_веретенник"
            : "https://en.wikipedia.org/wiki/Black-tailed_godwit",
        author: locale == 'ru' ? "Белоусов М.Ф. " : "Belousov M.F.",
        authorLink: "",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru'
            ? "Азиатский бекасовидный веретенник"
            : "Asian dowitcher",
        latin: "Limnodromus semipalmatus",
        family: locale == 'ru' ? "Бекасовые" : "Scolopacidae",
        imageUrl: "limnodromus_semipalmatus",
        desc: locale == 'ru'
            ? "Кулик средних размеров, длина 30-36 см, вес 170—300 г, крыло 17,4-18,8 см, размах крыльев 55-60 см. Самки немного крупнее самцов. Грудь и брюшко у взрослых самцов в брачном наряде ржвачато-рыжие, верхняя часть головы, передняя часть спины чёрные. Задняя часть спины и надхвостье пёстрые. Маховые тёмно-бурые, рулевые в белых и черно-бурых полосах. Ноги тёмные, клюв длинный прямой и тёмный. Самка заметно бурее и тусклее, но все-таки ярко-рыжая\n\nВ зимнем наряде перья верхней стороны тела тёмно-бурые с широкими беловатыми каемками. Издали птицы выглядят серыми. Нижняя сторона белая, шея и бока груди с узкими косыми темно-бурыми полосками\n\nКлюв несколько короче, чем у американского бекасовидного веретенника, а сам азиатский бекасовидный веретенник крупнее. Гнездовые биотопы, миграционные пути и большая часть зимовок у этих видов не перекрываются. Азиатский бекасовидный веретенник во многом напоминает, но немного меньше по размерам малого веретенника, клюв у бекасовидного веретенника прямой, мощный и чёрного цвета, он слегка уплощен и расширен у основания, у малого веретенника клюв чуть вздёрнут. Надхвостье с пестринами не составляет резкого контраста с хвостом (у малого надхвостье белое, а хвост тоже с поперечными полосками)\n\nРаспространение: степи, лесостепи, юг лесной зоны в России (от Омской области до Приморья), в Казахстане, Монголии, Китае (Маньчжурия)."
            : "Adults have dark legs and a long straight dark bill, somewhat shorter than that of the long-billed dowitcher. The body is brown on top and reddish underneath in breeding plumage. The tail has a black and white barred pattern. The winter plumage is largely grey.\nTheir breeding habitat is grassy wetlands in inland Siberia and Manchuria. They migrate to southeast Asia as far south as northern Australia, although both the breeding and wintering areas are poorly known. This bird is always found on coasts during migration and wintering.\nThese birds forage by probing in shallow water or on wet mud. They mainly eat insects, mollusks, crustaceans and marine worms, but also eat some plant material.",
        arrival: 1,
        month: [5],
        area: [1],
        count: 1,
        icon: 'sandpiper',
        source: locale == 'ru'
            ? "https://ru.wikipedia.org/wiki/Азиатский_бекасовидный_веретенник"
            : "https://en.wikipedia.org/wiki/Asian_dowitcher",
        author: "Alnus",
        authorLink: "https://commons.wikimedia.org/wiki/User:Alnus",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Малая крачка" : "Little tern",
        latin: "Sterna albifrons",
        family: locale == 'ru' ? "Чайковые" : "Laridae",
        imageUrl: "sterna_albifrons",
        desc: locale == 'ru'
            ? "Один из самых мелких представителей семейства. Масса птицы 45 г, длина 20 см. В брачном наряде имеет неполную чёрную шапочку. Лоб и полоски над бровями белые. Клюв жёлтый с чёрным кончиком, лапы желтоватые. Сверху окрас светло-серый, снизу белый.\n\nКормится на отмелях и в тихих реках мелкой рыбой, рачками, моллюсками, улитками и насекомыми.\n\nАреал гнездования охватывает большую часть Европы, частично — Африка и Азия, север Австралии и Океании. Гнездится предпочитает на песчаных берегах или на ровных гравийных отмелях крупных рек."
            : "The little tern (Sternula albifrons) is a seabird of the family Laridae\nThis bird breeds on the coasts and inland waterways of temperate and tropical Europe and Asia. It is strongly migratory, wintering in the subtropical and tropical oceans as far south as South Africa and Australia.",
        arrival: 1,
        month: [5],
        area: [1],
        count: 1,
        icon: 'gull',
        source: "",
        author: locale == 'ru' ? "Баздырев А.В." : "Bazdyrev A.",
        authorLink: "",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Белая сова" : "Polar owl",
        latin: "Nyctea scandiaca",
        family: locale == 'ru' ? "Совиные" : "Strigidae",
        imageUrl: "nyctea_scandiaca",
        desc: locale == 'ru'
            ? "Обитает в арктических регионах Северной Америки и Палеарктики, размножается в основном в тундре. Является одним из крупнейших представителей отряда совообразных; самки крупнее самцов и могут достигать до 70 см в длину (по неподтверждённым данным до 75 см) при размахе крыльев до 180 см, самцы достигают в длину до 65 см, а размах их крыльев достигает 120—160 см. Масса тела самок до 2,5 кг, самцов до 1,8 килограммов.\n\nЯвляется единственной совой с полностью или почти полностью белым оперением. Окраска самцов светлее, у самок гораздо чаще встречаются обширные пятна темно-коричневого цвета. У молодых самцов также имеются темные отметины, из-за которых они становятся похожими на самок. После достижения половой зрелости их оперение обычно становится белее. Большинство совообразных охотятся ночью, но полярная сова часто активна днем, особенно в летнее время.\n\n Белая сова распространена по всей зоне тундр. На зиму в поисках пищи откочёвывает до зоны лесотундры и степей; в лесах встречается редко. На зимовках придерживается открытых участков; иногда залетает в поселения. Начинаются кочёвки в сентябре — октябре; на юге сова остаётся до марта — апреля. Некоторые особи остаются в местах гнездования и на зиму, выбирая участки с небольшим покрытием снега и льда.\n\n Белая сова — активный хищник. Основу её питания составляют мышевидные грызуны, в первую очередь лемминги. За год одна сова съедает более 1600 леммингов. Ловит также зайцев, пищух, мелких хищников (горностай), птиц (белых куропаток, гусей, уток), не пренебрегает рыбой и падалью. Сова не охотится вблизи гнезда, поэтому птицы охотно селятся поблизости от сов, которые защищают свою территорию от других хищников. \n\nОхотится белая сова, главным образом, сидя на земле, предпочтительно на возвышении, и бросаясь на приближающуюся добычу. В сумерках иногда охотится и на лету, трепеща на одном месте в воздухе, подобно пустельге. Хотя белая сова и не строго ночная птица, всё же охотничьи вылеты обычно падают на раннее утро или вечер."
            : "The snowy owl (Bubo scandiacus), also known as the polar owl, the white owl and the Arctic owl, is a large, white owl of the true owl family.\nSnowy owls are native to the Arctic regions of both North America and the Palearctic, breeding mostly on the tundra.\nMost owls sleep during the day and hunt at night, but the snowy owl is often active during the day, especially in the summertime. The snowy owl is both a specialized and generalist hunter. Its breeding efforts and global population are closely tied to the availability of tundra-dwelling lemmings, but in the non-breeding season, and occasionally during breeding, the snowy owl can adapt to almost any available prey – most often other small mammals and northerly water birds, as well as, opportunistically, carrion.",
        arrival: 1,
        month: [5],
        area: [1],
        count: 2,
        icon: 'owl',
        source: "https://ru.wikipedia.org/wiki/Белая_сова",
        author: locale == 'ru' ? "Белоусов М.Ф. " : "Belousov M.F.",
        authorLink: "",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Филин" : "Eurasian eagle-owl",
        latin: "Bubo bubo",
        family: locale == 'ru' ? "Совиные" : "Strigidae",
        imageUrl: "bubo_bubo",
        desc: locale == 'ru'
            ? "Один из наиболее крупных представителей отряда совообразных. Наиболее характерные черты включают в себя массивное «бочкообразное» телосложение, рыхлое оперение с преобладанием рыжеватых и охристых оттенков, ярко-оранжевые глаза и пучки удлинённых перьев над ними (так называемые «перьевые уши»)\n\n Распространён в лесных и степных районах Евразии, где имеется достаточная кормовая база и труднодоступные места для гнездования. Приспосабливается к самым разнообразным биотопам. Оседлая птица.\n\nОхотится на зайцев, грызунов, ежей, ворон, водоплавающих и куриных, а также на многих других позвоночных. Ориентируется на массовую, легкодоступную добычу, при необходимости легко переключается с одного вида корма на другой. К гнездованию приступает один раз в год зимой или ранней весной, когда земля ещё покрыта снежным покровом. Яйца откладывает в небольшую ямку в грунте, в качестве укрытия часто используя низкие ветки ели, нагромождения из камней и поваленных стволов, расщелины и вымоины. Охотно занимает уступы на крутых склонах гор и речных долин.\n\n По данным российских источников, длина птицы составляет 60—75 см, размах крыльев 160—190 см, масса самцов 2,1—2,7 кг, масса самок 3,0—3,2 кг\n\nФилин обладает мощным голосом и сложным репертуаром. Вокализация подвержена индивидуальной изменчивости, вследствие чего её функциональное предназначение не всегда ясно.\n\nНаиболее часто присутствие поблизости птицы выдаёт её низкое двусложное уханье с ударением на первом слоге, которое в тихую погоду можно услышать на расстоянии до 2—4 км\n\nНаибольшая голосовая активность проявляется в предрассветный час в брачный период (на северо-западе России с февраля до конца апреля), в меньшей степени во время распада выводков (в августе — сентябре)\n\nФилин — один из наиболее распространённых палеарктических видов сов. Он обитает почти на всей территории Евразии от западных границ до Сахалина, южных Курильских островов и побережья Охотского моря. Отсутствует в лесотундрах, тундрах, на полуостровах Индостан и Индокитай, в Великобритании, Ирландии и на большинстве островов Средиземного моря. В Западной Европе область распространения филина резко сократилась в XIX—XX веках: он полностью исчез в странах Бенилюкса и Дании, а также на большей части Франции и Германии. В Северной Африке филин встречается к югу примерно до 15-й параллели"
            : "The Eurasian eagle-owl (Bubo bubo) is a species of eagle-owl that resides in much of Eurasia. It is also called the Uhu and it is occasionally abbreviated to just the eagle-owl in Europe. It is one of the largest species of owl, and females can grow to a total length of 75 cm, with a wingspan of 188 cm, with males being slightly smaller\nThe Eurasian eagle-owl is among the larger birds of prey, smaller than the golden eagle (Aquila chrysaetos), but larger than the snowy owl (Bubo scandiacus), despite some overlap in size with both of those species. It is sometimes referred to as the world's largest owl",
        arrival: 1,
        month: [5],
        area: [1],
        count: 1,
        icon: 'owl',
        source: locale == 'ru'
            ? "https://ru.wikipedia.org/wiki/Филин"
            : "https://en.wikipedia.org/wiki/Eurasian_eagle-owl",
        author: "Koshy Koshy",
        authorLink: "https://www.flickr.com/photos/kkoshy/14824135114",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Бородатая неясыть" : "Great grey owl",
        latin: "Strix nebulosa",
        family: locale == 'ru' ? "Совиные" : "Strigidae",
        imageUrl: "strix_nebulosa",
        desc: locale == 'ru'
            ? "Крупная сова из рода неясытей. Русское название получила за чёрное пятно под клювом, похожее на бороду.\nОбитает в таёжной зоне, иногда в горных лесах. Распространена от Кольского полуострова до гор Приморья. От границ высокоствольного леса на севере до Восточной Пруссии, Прибалтики, центральной полосы Европейской части России . Водится она также в Сибири до Забайкалья, Приамурья, Сахалина, Западной Чукотки и Монголии. Зимой изредка появляется в Средней полосе.\nОхотится днем преимущественно на мелких грызунов, иногда на белок.\nГнездовой постройки нет, использует подходящие по размерам гнезда других птиц — ястребов и канюков. В кладке бывает от 2 до 4 белых яиц."
            : "The great grey owl (also great gray owl in American English) is an owl, which is the world's largest species of owl by length. It is distributed across the Northern Hemisphere, and it is the only species in the genus Strix found in both Eastern and Western Hemispheres. \nAdults have large rounded heads with grey faces and yellow eyes with darker circles around them. The underparts are light with dark streaks; the upper parts are grey with pale bars. This owl does not have ear tufts and has the largest facial disc of any raptor. There is a white collar or \"bow-tie\" just below the beak. The long tail tapers to a rounded end.",
        arrival: 1,
        month: [5],
        area: [1],
        count: 2,
        icon: 'owl',
        source: locale == 'ru'
            ? "https://ru.wikipedia.org/wiki/Бородатая_неясыть"
            : "https://en.wikipedia.org/wiki/Great_grey_owl",
        author: locale == 'ru' ? "Гашков С.И." : "Gashkov S.",
        authorLink: "",
        author2: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.",
        authorLink2: ""),
    BirdRedbookDataModel(
        name:
            locale == 'ru' ? "Иглохвостый стриж" : "White-throated needletail",
        latin: "Hirundapus caudacutus",
        family: locale == 'ru' ? "Стрижиные" : "Apodidae",
        imageUrl: "hirundapus_caudacutus",
        desc: locale == 'ru'
            ? "Крупный стриж. Тело длиной 19—22 см, крыло около 20см. Размах крыльев 48—55 см. В отличие от других стрижей, хвост без выемки, прямо обрезанный.\nЛоб, горло и подхвостье у взрослых птиц белого цвета. Крылья длинные, серповидные. Окраска крыльев черная или темно-бурая с металлическим блеском и зеленым отливом.\nРазорванный ареал. Одна часть ареала располагается в Южной и Юго-Восточной Азии, другая располагается на юге Дальнего Востока и Сибири — от Северо-Восточного Алтая до Сахалина, на запад — до Томской области.\nНаселяет леса и рощи со старыми дуплистыми деревьями, лесные местообитания в сочетании с лугами, вырубками, открытыми пространствами. Охотно селится возле водоёмов.\nПерелётная птица. Прилетают в конце мая. \nПолет чрезвычайно быстрый, стремительный\nКрик не громкий, дребезжащий, в отличие от других видов стрижей — молчаливы. Отлетают в сентябре, зимуют в Австралии."
            : "The white-throated needletail (Hirundapus caudacutus), also known as needle-tailed swift or spine-tailed swift, is a large swift in the genus Hirundapus. It is reputed to reach speeds of up to 170 km/h (105 mph) in horizontal flight\nThey build their nests in rock crevices in cliffs or hollow trees. They do not like to sit on the ground and spend most of their time in the air. They feed on small, flying insects like beetles, flies, bees and moths.\nThe white-throated needletail is a migratory bird, breeding in Central Asia and southern Siberia, and wintering south in the Indian Subcontinent, Southeast Asia and Australia. It is a rare vagrant in Western Europe and has been recorded as far west as Norway, Sweden and Great Britain.",
        arrival: 1,
        month: [5],
        area: [1],
        count: 1,
        icon: 'swift',
        source: locale == 'ru'
            ? "https://ru.wikipedia.org/wiki/Иглохвостый_стриж"
            : "https://en.wikipedia.org/wiki/White-throated_needletail",
        author: "Ron Knight",
        authorLink: "https://www.flickr.com/photos/sussexbirder/8077032281/",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Обыкновенный зимородок" : "Common kingfisher",
        latin: "Alcedo atthis",
        family: locale == 'ru' ? "Зимородковые" : "Alcedinidae",
        imageUrl: "alcedo_atthis",
        desc: locale == 'ru'
            ? "Длина крыла 7—8 см, размах крыльев примерно 25 см, масса 25—45 граммов. Имеет яркое оперение, сверху блестящее, голубовато-зелёное, с мелкими светлыми крапинками на голове и крыльях, снизу ржаво-рыжее; полоска через глаз к затылку и горлышко светлые. Голова большая, клюв длинный и прямой, крылья и хвост короткие. Самец и самка одинаковы по окраске, но самцы чуть крупнее и ярче. Кроме того, у самки подклювье оранжевое, у самца клюв весь чёрный. Перемещается с помощью крыльев, так как лапки короткие и не предназначены для длительного перемещения. Оперение зимородка вблизи тусклое; его яркость достигается за счёт преломления света перьями.\n\nВ среднюю полосу России зимородок прилетает в конце апреля — начале мая. У зимородка очень строгие требования к местообитанию: чистый водоём с проточной водой (не мелкий, но и не глубокий), обрыв и заросшие берега. Зимородки не любят близкого соседства с другими птицами.\n\nПитается мелкой рыбой, реже водными беспозвоночными. Иногда питается водными насекомыми и лягушатами. "
            : "The common kingfisher (Alcedo atthis), also known as the Eurasian kingfisher and river kingfisher, is a small kingfisher with seven subspecies recognized within its wide distribution across Eurasia and North Africa. It is resident in much of its range, but migrates from areas where rivers freeze in winter.\nThis sparrow-sized bird has the typical short-tailed, large-headed kingfisher profile; it has blue upperparts, orange underparts and a long bill. It feeds mainly on fish, caught by diving, and has special visual adaptations to enable it to see prey under water. The glossy white eggs are laid in a nest at the end of a burrow in a riverbank.\nThis species has the typical short-tailed, dumpy-bodied, large-headed, and long-billed kingfisher shape.\nThe flight of the kingfisher is fast, direct and usually low over water. The short, rounded wings whirr rapidly, and a bird flying away shows an electric-blue \"flash\" down its back",
        arrival: 1,
        month: [5],
        area: [1],
        count: 1,
        icon: 'kingfisher',
        source: locale == 'ru'
            ? "https://ru.wikipedia.org/wiki/Обыкновенный_зимородок"
            : "https://en.wikipedia.org/wiki/Common_kingfisher",
        author: locale == 'ru' ? "Белоусов М.Ф. " : "Belousov M.F.",
        authorLink: "",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Удод" : "Eurasian hoopoe",
        latin: "Upupa epops",
        family: locale == 'ru' ? "Удодовые" : "Upupidae",
        imageUrl: "upupa_epops",
        desc: locale == 'ru'
            ? "Небольшая ярко окрашенная птица с длинным узким клювом и хохолком, иногда раскрываемым в виде веера. Широко распространён в южных и центральных областях Европы и Азии, а также почти на всей территории Африки. Излюбленным местом обитания является открытая местность с редким кустарником или деревьями, такая как саванна, луг или пастбище. Также встречается на культивируемых ландшафтах во фруктовых садах и виноградниках.\nМного времени проводит на земле, охотясь на насекомых"
            : "The Eurasian hoopoe (Upupa epops) is the most widespread species of the genus Upupa. It is a distinctive cinnamon coloured bird with black and white wings, a tall erectile crest, a broad white band across a black tail, and a long narrow downcurved bill. Its call is a soft \"oop-oop-oop\".\nThe Eurasian hoopoe is native to Europe, Asia and the northern half of Africa. It is migratory in the northern part of its range.\nThe Eurasian hoopoe is a medium-sized bird, 25–32 cm long, with a 44–48 cm wingspan. It weighs 46–89 g. The species is highly distinctive, with a long, thin tapering bill that is black with a fawn base.",
        arrival: 1,
        month: [5],
        area: [1],
        count: 1,
        icon: 'hoopoe',
        source: "",
        author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.M.",
        authorLink: "",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Таежный сверчок" : "Gray's warbler",
        latin: "Helopsaltes fasciolatus",
        family: locale == 'ru' ? "Сверчковые" : "Locustellidae",
        imageUrl: "helopsaltes_fasciolatus",
        desc: locale == 'ru'
            ? "Встречается от юга Западной Сибири до Кореи.\nСамый крупный представитель своего рода, размером немного больше воробья. Тело удлинённое, со ступенчатым округлым хвостом и короткими широкими крыльями. Клюв прямой узкий, темя плоское.\nИмеет некоторое сходство с соловьём, по размерам и характеру окраски.\nПтицы отличаются очень скрытными повадками, самцы поют всегда в стороне от гнезда.\nКрупные чашеобразные гнёзда располагает прямо на земле в густой траве или невысоко на валежнике и в основаниях кустов. В кладке обычно находится 3—5 яиц.\nПитается насекомыми.\nПение громкое и хорошо заметное в лесу. Наиболее активно поёт утром на заре, но может быть слышен и в другое время суток.\nВид внесён в Красную книгу Томской области, как редкий вид, находящийся на северо-западной границе ареала."
            : "This small passerine bird breeds in southern Siberia, northeastern China and Korea. It is migratory, wintering in southeast Asia. It is a species found in lowland and coastal regions, nesting in forests or thickets.\nThis is the largest of all the Locustella warblers, approaching the size of the great reed warbler. The adult has an unstreaked olive-brown back, uniformly grey breast and buff underparts, with unmottled dull orange undertail coverts.\nThe song is a short phrase, loud and distinctive; nothing like the insect-like reeling of European Locustella species, and more musical than that of Pallas's grasshopper warbler.",
        arrival: 1,
        month: [5],
        area: [1],
        count: 1,
        icon: 'warbler',
        source: locale == 'ru'
            ? "https://ru.wikipedia.org/wiki/Таёжный_сверчок"
            : "https://en.wikipedia.org/wiki/Gray%27s_grasshopper_warbler",
        author: "lonelyshrimp",
        authorLink: "https://www.flickr.com/photos/lonelyshrimp/",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Вертлявая камышовка" : "Aquatic warbler",
        latin: "Acrocephalus paludicola",
        family: locale == 'ru' ? "Камышовковые" : "Acrocephalidae",
        imageUrl: "acrocephalus_paludicola",
        desc: locale == 'ru'
            ? "Мелкая певчая перелётная птица. Ареал вертлявой камышовки достаточно обширен, несмотря на её общую немногочисленность. На территории России данный вид встречается по югу и в центральных районах Европейской части и по югу Западной Сибири.\nЗимует в Западной Африке, по обе стороны Ла-Манша и в Бискайском заливе\n Типичными местами её обитания являются равнинные влажные и заболоченные участки с наличием густой травы высотой от 50 сантиметров и редким ивняком."
            : "The aquatic warbler is an Old World warbler in the genus Acrocephalus. It breeds in temperate eastern Europe and western Asia. It is migratory, wintering in west Africa. \nThis small passerine bird is a species found in wet sedge beds with vegetation shorter than 30 cm\nThis is a medium-sized warbler. The adult has a heavily streaked brown back and pale underparts with variable streaking. The forehead is flattened, and the bill is strong and pointed. There is a prominent whitish supercilium and crown stripe.",
        arrival: 1,
        month: [5],
        area: [1],
        count: 1,
        icon: 'warbler',
        source: locale == 'ru'
            ? "https://ru.wikipedia.org/wiki/Вертлявая_камышовка"
            : "https://en.wikipedia.org/wiki/Aquatic_warbler",
        author: locale == 'ru' ? "Соколова Л." : "Sokolova L",
        authorLink: "https://www.flickr.com/photos/156929711@N05/29164222888/",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name:
            locale == 'ru' ? "Толстоклювая камышовка" : "Thick-billed warbler",
        latin: "Arundinax aedon",
        family: locale == 'ru' ? "Камышовковые" : "Acrocephalidae",
        imageUrl: "arundinax_aedon",
        desc: locale == 'ru'
            ? "Водится в зарослях кустарников на опушках леса и в поймах рек. Ареал охватывает юг Сибири и Дальний Восток. \nИз России улетает на зиму в Юго-Восточную Азию.Иногда залетает в Египет, Бутан, Японию, Малайзию."
            : "The thick-billed warbler breeds in the temperate east Palearctic, from south Siberia to west Mongolia. It is migratory, wintering in tropical South Asia and South-east Asia. It is a very rare vagrant to western Europe.\nThis passerine bird is a species found in dense vegetation such as reeds, bushes and thick undergrowth. Five or six eggs are laid in a nest in a low tree.\nThis is a large warbler, at 17 cm long, which is nearly as big as the great reed warbler. The adult has an unstreaked brown back and buff underparts, with few obvious distinctive plumage features. The forehead is rounded, and the bill is short and pointed. The sexes are identical, as with most warblers, but young birds are richer buff below. Like most warblers, it is insectivorous, but will take other small prey items.",
        arrival: 1,
        month: [5],
        area: [1],
        count: 1,
        icon: 'warbler',
        source: locale == 'ru'
            ? "https://ru.wikipedia.org/wiki/Толстоклювая_камышовка"
            : "https://en.wikipedia.org/wiki/Thick-billed_warbler",
        author: locale == 'ru' ? "Самодуров К.В." : "Samodurov K",
        authorLink: "",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Обыкновенный ремез" : "Eurasian penduline tit",
        latin: "Remiz pendulinus",
        family: locale == 'ru' ? "Ремезовые" : "Remizidae",
        imageUrl: "remiz_pendulinus",
        desc: locale == 'ru'
            ? "певчая птица.\n Длина тела ремеза примерно 12 см, вес до 20 г. Длина крыла до 60 мм. В глаза бросается серая голова с чёрной маской и красно-бурая спина. У молодых птиц чёрной маски ещё нет. По окраске ремез отдалённо напоминает самца обыкновенного жулана. Тонкий свист звучит примерно как «ции-ции».\nС апреля по октябрь некоторые ремезы мигрируют в Восточной и Центральной Европе и перелетают на зиму в Средиземноморье. Некоторые птицы остаются в районе Средиземного моря целый год. Ремез предпочитает селиться в зарослях по берегам рек, озёр и болот.\nРемез ищет себе корм преимущественно на деревьях, в кустарниках, кустах и в камыше. Он питается насекомыми, пауками и семенами.\nПериод размножения продолжается с мая по июнь. Самец строит несколько пушистых, круглых гнёзд из растительных волокон, пуха и семян на свисающих над водой ветвях. Гнездо в форме сумки примерно 17 см в высоту и 11 см шириной."
            : "The Eurasian penduline tit or European penduline tit (Remiz pendulinus) is a passerine bird of the genus Remiz. It is relatively widespread throughout the western Palearctic. It is migratory in the northern part of its range but resident in the southern part.\nThe nest is suspended from thin long branches of trees such as willow (Salix), elm (Ulmus) or birch (Betula), often over water. ",
        arrival: 1,
        month: [5],
        area: [1],
        count: 1,
        icon: 'warbler',
        source: locale == 'ru'
            ? "https://ru.wikipedia.org/wiki/Обыкновенный_ремез"
            : "https://en.wikipedia.org/wiki/Eurasian_penduline_tit",
        author: locale == 'ru' ? "Самодуров К.В." : "Samodurov K",
        authorLink: "",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Серый сорокопут" : "Great grey shrike",
        latin: "Lanius excubitor",
        family: locale == 'ru' ? "Сорокопутовые" : "Laniidae",
        imageUrl: "lanius_excubitor",
        desc: locale == 'ru'
            ? "Достаточно крупная певчая птица из семейства сорокопутовых. Гнездится в северной части Евразии и Северной Америки. Частично перелётный вид. \nДлина 23—28 см, размах крыльев 35—39 см, вес около 60—80 г.\n Щёки и подбородок, а также малозаметная узкая полоска над глазом белые. Через глаз от основания клюва до кроющих уха проходит широкая чёрная полоса, образуя подобие «маски»"
            : "The great grey shrike (Lanius excubitor) is a large and predatory songbird species in the shrike family\nAn adult great grey shrike is a medium-sized passerine about as large as a big thrush. \nThis species is territorial, but likes to breed in dispersed groups of a good half-dozen adults. It is not known to what extent the birds in such groups are related.\nTypically, at least half the prey biomass is made up from small rodents from the Cricetidae (voles, lemmings) and Murinae (Eurasian mice and sometimes young Eurasian rats). Shrews, songbirds, other passerines, lizards, and frogs and toads (typically as tadpoles) make up most of the remaining vertebrate prey.\nPrey is killed by hitting it with the hooked beak, aiming for the skull in vertebrates. If too large to swallow in one or a few chunks, it is transported to a feeding site by carrying it in the beak or (if too large) in the feet. The feet are not suited for tearing up prey, however. It is rather impaled upon a sharp point – thorns or the barbs of barbed wire – or wedged firmly between forking branches. Thus secured, the food can be ripped into bite-sized pieces with the beak.  ",
        arrival: 1,
        month: [5],
        area: [1],
        count: 1,
        icon: 'warbler',
        source: "",
        author: "",
        authorLink: "",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Овсянка-дубровник" : "Yellow-breasted bunting",
        latin: "Emberiza aureola",
        family: locale == 'ru' ? "Овсянковые" : "Emberizidae",
        imageUrl: "emberiza_aureola",
        desc: locale == 'ru'
            ? "Перелетный вид.\nВеличиной с воробья.\nПрилетает, когда распустилась листва на деревьях, а на лугах начинают отрастать многолетние травы. В окрестностях Томска появляется во второй половине мая.\nПтица открытых пространств. Заселяет пойменные луга, пустыри, болота, поросшие кустарником и высокотравьем. Обычный, местами фоновый вид, распространенный по всей области.\nГнездо устраивает на земле.\nЛегко узнаваемая овсянка как по внешнему виду, так и по песне, особенно если учесть приуроченность вида к открытым биотопам.\nПоет, сидя на высоком стебле травы или вершине кустарника.\nСезон пения длится с конца мая до середины июля."
            : "The yellow-breasted bunting (Emberiza aureola) is a passerine bird in the bunting family Emberizidae that is found across the Boreal and East Palearctic. The genus name Emberiza is from Old German Embritz, a bunting. The specific aureola is Latin for \"golden\".\nEmberiza aureola aureola breeds in boreal forests of Finland to Bering Sea migrating to Indochina. Emberiza aureola ornata breeds from the Amur River to Manchuria, N Korea, Kamchatka and Kuril Islands. It is migratory, wintering in south-east Asia, India, and North Korea.",
        arrival: 1,
        month: [5],
        area: [1],
        count: 2,
        icon: 'warbler',
        source: locale == 'ru'
            ? ""
            : "https://en.wikipedia.org/wiki/Yellow-breasted_bunting",
        author: locale == 'ru' ? "Гашков С.И." : "Gashkov S",
        authorLink: "",
        author2: "",
        authorLink2: ""),
    BirdRedbookDataModel(
        name: locale == 'ru' ? "Овсянка-ремез" : "Rustic bunting",
        latin: "Emberiza rustica",
        family: locale == 'ru' ? "Овсянковые" : "Emberizidae",
        imageUrl: "emberiza_rustica",
        desc: locale == 'ru'
            ? "Овсянка-ремез имеет пёструю окраску оперения и легко отличима от других овсянок. Тем не менее, есть сходство с тростниковой овсянкой.Верхняя часть тела коричневатая с тёмными полосами. Голова у самца чёрная, с белой «бровью» и белым горлом. У самки голова скорее коричневого цвета, пятнистая и не чёрная. Перья на голове образуют узнаваемый, отсутствующий у других овсянок хохолок. Затылок, грудь, а также бока красно-коричневые.\nОвсянка-ремез длиной примерно 15 см и весом 16-21 г. Длина крыльев составляет 7,5-8,5 см.\nОвсянка-ремез — это перелётная птица. Её летние участки расположены в северных широтах. Она распространена от Скандинавии через северную часть России вплоть до Берингова пролива. Регионы её зимовки расположены на юге Восточной Азии. Здесь она встречается в Восточном Китае и Японии. Эта овсянка предпочитает гнездиться во влажных бореальных хвойных лесах.\nПение похоже на пение зарянки или лесной завирушки. Это высокое «твюит» или жёсткое и короткое «тик-тик». Самки тоже поют, но их песня тише. Питание состоит преимущественно из семян и насекомых, а также ягод."
            : "The rustic bunting (Emberiza rustica) is a passerine bird in the bunting family Emberizidae, a group now separated by most modern authors from the finches, Fringillidae. The genus name Emberiza is from Old German Embritz, a bunting. The specific rustica is Latin for \"rustic, simple\"\nIt breeds across the northern Palearctic. It is migratory, wintering in south-east Asia, Japan, Korea, and eastern China. It is a rare wanderer to western Europe.\nIt breeds in wet coniferous woodland. Four to six eggs are laid in a nest in a bush or on the ground. Its natural food consists of seeds, and when feeding young, insects.",
        arrival: 1,
        month: [5],
        area: [1],
        count: 1,
        icon: 'warbler',
        source: locale == 'ru'
            ? ""
            : "https://en.wikipedia.org/wiki/Rustic_bunting",
        author: locale == 'ru' ? "Баздырев А.В." : "Bazdyrev A",
        authorLink: "",
        author2: "",
        authorLink2: "")
  ];
}
