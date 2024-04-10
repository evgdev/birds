import 'constants.dart';

List<BirdDataModel> birds = [
  BirdDataModel(
      name: locale == 'ru' ? "Большая синица" : 'Great tit',
      latin: 'Parus major',
      family: locale == 'ru' ? "Синицевые" : "Paridae",
      imageUrl: 'parus_major',
      desc: locale == 'ru'
          ? "Большая синица (Parus major). Семейство Синицы. \nКруглый год встречается в наших широтах, на зиму концентрируется вблизи жилья человека.\nВеличиной с воробья.\nЛесной вид, предпочитает лиственные и смешанные разреженные леса с наличием старых дуплистых деревьев, включая парки города. Обычный вид, распространенный по всей области.\nГнездится в дуплах деревьев, различных укрытиях антропогенного характера (трубы, щели в стенах и т.п.).\nВ определении большая синица особо не нуждается, т.к. всю зиму вместе с воробьями и голубями держится в населенных пунктах у нас на глазах. Следует обратить внимание на разнообразие песен даже одного исполнителя, меняющего их периодически. Отличительной чертой самца является широкая черная полоса идущая по груди и расширяется на брюшке, тогда как у самки она становиться совсем тонкой до пунктира или даже полного отсутствия. \nПоет открыто, чаще в средней и верхней части кроны.\nПесню синицы изредка можно слышать в оттепель уже в начале января, но примерно с 10 февраля она начинает звучать постоянно. Больших синиц можно считать одними из первых глашатаев Весны, которые уже с этого времени ежедневно и старательно объявляют о её приближении"
          : "Great Tit (Parus major).\nThe great tit is  not migratory. Pairs will usually remain near or in their territory year round, in winter birds are found near housing. The great tit occupies a range of habitats. It is most commonly found in open deciduous woodland, mixed forests, forest edges and gardens. In dense forests, including conifer forests it prefers forest clearings. In northern Siberia it lives in boreal taiga.\nGreat tits are cavity nesters, breeding in a hole that is usually inside a tree, although occasionally in a wall or rock face, and they will readily take to nest boxes. The nest inside the cavity is built by the female, and is made of plant fibres, grasses, moss, hair, wool and feathers. ",
      arrival: 1,
      month: [11, 12, 1, 2, 3],
      area: [1, 3],
      icon: '',
      count: 2,
      source: "https://zoomuseum-tsu.ru/voices/01/",
      author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Запись сделана 14.04.2005 в Сибирском ботаническом саду г. Томска. (Гашков С.И.)"
          : "Voice was recorded in Siberian Botanical Garden (Tomsk). 14.05.2005 by Gashkov S"),
  BirdDataModel(
      name: locale == 'ru' ? "Обыкновенный снегирь" : "Common bullfinch",
      latin: 'Pyrrhula pyrrhula',
      family: locale == 'ru' ? "Вьюрковые" : 'Fringillidae',
      imageUrl: 'pyrrhula_pyrrhula',
      desc: locale == 'ru'
          ? "Круглый год встречается в наших широтах. В зимнее время он чаще попадается на глаза, чему способствует его внешность и питание различными семенами, плодами, которые он находит вблизи жилья человека.\nВеличиной с воробья, но из-за хвоста и пышного оперения кажется немного крупнее.\nЛесной вид, предпочитает разнообразные хвойные и смешанные леса с наличием хвойного подлеска. В небольшом числе может гнездиться в городских парках, где есть густой подлесок. Обычный вид, распространенный по всей области.\nГнездо устраивает чаще всего в густом хвойном подросте.\nСнегирь - один из самых известных и нарядных наших пернатых. Однако следует знать, что самка его окрашена скромно, розово-красный цвет в ее оперении заменен серо-буроватым оттенком. Многим хорошо известна и ценима его простая свистовая со скрипами песня, исполнять которую могут как самцы, так и самки. Любители любят содержать снегиря дома за его нарядный вид и простую, но одновременно полную индивидуальности песню.\nПоет обычно сидя на дереве или кусту.\nПесню снегиря можно слышать, начиная с февраля."
          : "Found in our latitudes all year round. In winter, it is more often seen, which is facilitated by its appearance and feeding on various seeds and fruits, which it finds near human habitation.\nIt is the size of a sparrow, but because of its tail and lush plumage it seems a little larger.\nForest species, prefers a variety of coniferous and mixed forests with the presence of coniferous undergrowth. In small numbers it may nest in city parks where there is dense undergrowth. A common species, distributed throughout the region.\nThe nest is most often made in dense coniferous undergrowth.\nThe bullfinch is one of our most famous and elegant birds. However, you should know that its female is modestly colored, the pink-red color in her plumage is replaced by a gray-brownish tint. Many people know and appreciate his simple whistling song with squeaks, which can be performed by both males and females. \nIt usually sings while sitting on a tree or bush.\nThe bullfinch's song can be heard starting in February. ",
      arrival: 2,
      month: [11, 12, 1, 2, 3],
      area: [1, 3],
      icon: '',
      count: 1,
      source: "https://zoomuseum-tsu.ru/voices/02/",
      author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "На втором плане - большая синица. Запись сделана 1.04.2005 в Сибирском ботаническом саду г. Томска. (Гашков С.И.)"
          : "Recorded 1.04.2005 at Botanical Garden in Tomsk by Gashkov S. Second voice belongs to Great Tit."),
  BirdDataModel(
      name: locale == 'ru' ? "Сорока" : "Eurasian magpie",
      latin: 'Pica pica',
      family: locale == 'ru' ? "Врановые" : 'Corvidae',
      imageUrl: 'pica_pica',
      desc: locale == 'ru'
          ? "Круглый год встречается в наших широтах. Живет на постоянных участках оседло.\nВеличиной с голубя, но из-за хвоста кажется вдвое больше.\n Населяет различные биотопы от леса до пойменных кустарниковых лугов и населенные пункты, включая городские кварталы. Обычный вид, распространенный по всей области.\nСвое гнездо в виде шара из веток устраивает на разных деревьях, чаше в средней и верхней части кроны.\nСорока-белобока одна из известнейших и нарядных наших птиц, персонаж многих литературных произведений, в которых наделена хитростью и болтливостью. Все эти особенности, а также способность вида приспособиться к городской среде обитания, которую она стала осваивать только с середины XX века, во многом являются результатом умственных способностей вида, что определяет его пластичность и успешность в разных условиях среды обитания. В городе она выполняет еще и санитарные функции, питаясь пищевыми отходами, подбирает погибших мелких животных, занимается мелким хищничеством, нападая на ослабевших птиц, грызунов."
          : "Found in our latitudes all year round. Lives sedentary in permanent areas.\nThe size of a pigeon, but because of the tail it seems twice as large.\nInhabits various biotopes from forests to floodplain shrub meadows and populated areas, including city neighborhoods. A common species, distributed throughout the region.\nIt makes its nest in the form of a ball of branches on different trees, mostly in the middle and upper parts of the crown.\nThe ability of the species to adapt to the urban habitat, which it began to develop only from the middle of the 20th century, is largely are the result of the mental abilities of the species, which determines its plasticity and success in different environmental conditions. In the city, it also performs sanitary functions, feeding on food waste, picking up dead small animals, and engaging in petty predation, attacking weakened birds and rodents.",
      arrival: 3,
      month: [10, 11, 12, 1, 2, 3, 4],
      area: [1, 3],
      icon: '',
      count: 2,
      source: "https://zoomuseum-tsu.ru/voices/04/",
      author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.",
      authorLink: "",
      author2: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Её стрекочущее беспокойство знакомо многих, но сорока может удивлять набором самых разных свистовых и скрипучих звуков в весеннее время и обладает некоторыми способностями птиц-пересмешников. При содержании сороки в домашних условиях может освоить произношение слов и других окружающих ее звуков.\n Песню сороки можно слышать даже осенью, а зимой уже с января в ясные дни по утрам она исполняется регулярно.\nЗапись сделана 13.04.2004 в Сибирском ботаническом саду г. Томска. На втором плане - большая синица. "
          : 'Its chirping restlessness is familiar to many, but the magpie can surprise with a variety of whistling and creaking sounds in the spring and has some of the abilities of mockingbirds. When keeping a magpie at home, it can master the pronunciation of words and other sounds surrounding it.\n The song of a magpie can be heard even in the fall, and in winter, starting in January on clear days in the mornings, it is performed regularly.\nRecorded on April 13, 2004 in the Siberian Botanical Garden. Tomsk. In the background is a great tit.'),
  BirdDataModel(
      name:
          locale == "ru" ? "Большой пёстрый дятел" : "Great spotted woodpecker",
      latin: 'Dendrocopos major',
      family: locale == "ru" ? "Дятловые" : 'Picidae',
      imageUrl: 'dendrocopos_major',
      desc: locale == 'ru'
          ? "Круглый год встречается в наших широтах.\nВеличиной несколько крупнее скворца.\nЛесной вид, населяет разнообразные типы леса, предпочитая смешанные сосняки в зимнее время, а смешанные осиновые леса в период размножения. Обычный вид, распространенный по всей области.\nГнездится в дуплах, которые сам и выдалбливает, выбирая для этого деревья с мягкой древесиной как лиственных, так и хвойных пород.\nСамый обычный из наших дятлов. По своему пестрому наряду и размеру легко узнаваем. Самец отличается от самки наличием красной поперечной полосы на темени. У пестрого дятла спина черного цвета в отличие от преобладания белого цвета у других наших пестрых дятлов (белоспинного, трехпалого, малого)."
          : "Found all year round in our latitudes.\nSlightly larger in size than the starling.\nForest species, inhabits a variety of forest types, preferring mixed pine forests in winter, and mixed aspen forests during the breeding season. A common species, distributed throughout the region.\nIt nests in hollows, which it hollows out itself, choosing for this purpose trees with soft wood, both deciduous and coniferous.\nThe most common of our woodpeckers. It is easily recognizable by its colorful outfit and size. The male differs from the female by the presence of a red transverse stripe on the crown. The pileated woodpecker has a black back, in contrast to the predominance of white in our other pileated woodpeckers (white-backed, three-toed, lesser).",
      arrival: 4,
      month: [10, 11, 12, 1, 2, 3],
      area: [1],
      icon: '',
      count: 1,
      source: "https://zoomuseum-tsu.ru/voices/05/",
      author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Барабанная дробь дятла узнаваема, имеет она и видовые особенности, но научиться различать их по стуку сложнее, нежели по внешнему виду. В качестве резонатора дятлы обычно используют сухой сук или ствол дерева, от формы и размера которых зависит мощность и тональность звука.\nБарабанит дятел чаще в конце зимы и в весеннее время.\nНа втором плане - рябинник, сорока.\nЗапись сделана 1.04.2005 в восточных окр. Томска в смешанном лесу.\nГашков С.И."
          : 'The drumming of a woodpecker is recognizable, and it also has specific characteristics, but learning to distinguish them by knocking is more difficult than by appearance. Woodpeckers usually use a dry branch or tree trunk as a resonator, the shape and size of which determine the power and tonality of the sound.\nA woodpecker drums more often at the end of winter and in spring.\nIn the background are fieldfare and magpie.\nRecorded on April 1, 2005 in the eastern environs Tomsk in a mixed forest by Gashkov S.I.'),
  BirdDataModel(
      name: locale == 'ru' ? "Желна или черный дятел" : 'Black woodpecker',
      latin: 'Dryocopus martius',
      family: locale == 'ru' ? "Дятловые" : 'Picidae',
      imageUrl: 'dryocopus_martius',
      desc: locale == 'ru'
          ? "Круглый год встречается в наших широтах.\nВеличиной несколько меньше вороны.\nЛесной вид, населяет разнообразные типы леса, предпочитая высокоствольные спелые участки. Обычный вид, распространенный по всей области.\nГнездится в дуплах, выбирая для дупла высокое дерево, чаще всего осину. Пара может использовать одно дупло повторно в следующий сезон. Дупло желны имеет характерную овальную форму.\nСамый большой из наших дятлов. По своему черному наряду и размеру легко узнаваем.\nБарабанит редко, чаще можно слышать его крики в нескольких вариантах и круглый год."
          : "Found in our latitudes all year round.\nSize is slightly smaller than a crow.\nIt lives in different types of forest, mostly in old ones. A common species, distributed throughout the region.\nIt nests in hollows, choosing a tall tree, most often aspen. The couple can reuse one hollow the next season. The woodpecker's hollow has a characteristic oval shape.\nThe largest of our woodpeckers. It is easily recognizable by its black outfit and size.\nIt rarely drums; more often you can hear its calls in several variations and all year round.",
      arrival: 5,
      month: [5],
      area: [1],
      icon: '',
      count: 1,
      source: "",
      author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Барабанит и становится особенно криклив в феврале-марте.\nНа втором плане серая славка, малая мухоловка, пеночка-теньковка, зеленушка, обыкновенная чечевица.\nЗапись сделана 30.05. 2004 в окр. Томска, близ с. Корнилово. "
          : 'This bird can be heard in February-March. Sound was recorded at 30.05.2004 in Tomsk by Gashkov S.'),
  BirdDataModel(
      name: locale == 'ru' ? "Черноголовый щегол" : "European goldfinch",
      latin: 'Carduelis carduelis',
      family: locale == 'ru' ? "Вьюрковые" : "Fringillidae",
      imageUrl: 'carduelis_carduelis',
      desc: locale == 'ru'
          ? "Круглый год встречается в наших широтах, ведет оседло-кочевой образ жизни.\nВеличиной с воробья.\nЛесной вид. Населяет разреженные лиственные и смешанные леса, травянистые сосновые боры, садово-парковые участки.\nГнездо строит на дереве.\nЩегол одна из самых нарядных наших птиц и, познакомившись с ним, всегда будешь его узнавать. Сочетание в одной птице белого, коричневого, черного, желтого и красного цвета делает щегла одной из самых нарядных наших пернатых. Его легко запомнить и уже трудно забыть пернатого щёголя-щегла, не случайно эти слова имеют много общего.\nПоет сидя на присаде среди луга или в лесу на дереве."
          : "Year-round lives in Siberia. Sometimes migrate to other areas. Goldfinch lives in mixed woods, pine forest, garden areas.\nThe nest is neat and compact and is generally located several metres above the ground\nThe breeding male has a red face with black markings around the eyes, and a black-and-white head. The back and flanks are buff or chestnut brown. The black wings have a broad yellow bar. The tail is black and the rump is white. Males and females are very similar, but females have a slightly smaller red area on the face.",
      arrival: 6,
      month: [5],
      area: [1],
      icon: '',
      count: 1,
      source: "",
      author: "",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Песню щегла можно слышать в ясные дни уже в январе и далее они поют всю весну и лето и даже осенью, что позволяет говорить практически о его круглогодичном пении лишь с разной интенсивностью по сезонам.\nНа втором плане – обыкновенная чечевица, серая славка.\nЗапись сделана 29.05.2005 на террасных лугах р. Томи у городского парка Лагерный сад."
          : "Singing almost all year, starting in January.\nBackground voices belong to  Common rosefinch and Common whitethroat\n Sound was recorded at 29.05.2005 in Tomsk by Gashkov S."),
  BirdDataModel(
      name: locale == 'ru' ? "Клест-еловик" : "Red crossbill",
      latin: 'Loxia curvirostra',
      family: locale == 'ru' ? "Вьюрковые" : "Fringillidae",
      imageUrl: 'loxia_curvirostra',
      desc: locale == 'ru'
          ? "Круглый год встречается в наших широтах, ведет оседло-кочевой образ жизни.\nВеличиной несколько меньше скворца.\nЛесной вид, обитает в хвойных и смешанных лесах, концентрируясь там, где есть урожай шишек хвойных пород, в первую очередь ели и пихты. Обычный вид, распространенный по всей области.\nГнездится на деревьях. Не имеет строгого периода размножения, может загнездиться в любой месяц года, но большая часть птиц приступает к гнездованию в марте-апреле.\nОпределить клеста несложно, благодаря его исключительному перекрещенному клюву, яркому от зеленовато-желтого до оранжево-малинового тона оперения, но увидеть птицу близко удается не часто. Чаще удается слышать позывки пролетающей птицы или их перекличку в стайке. Клеста часто содержат в домашних условиях, он легко привыкает и вскоре начинает петь свою разнообразную с трелями и щебетаниями песню, которая у каждого самца имеет много индивидуальных черт."
          : "The bird lives year-round in our latitudes and leads a sedentary-nomadic lifestyle.\nIts size is slightly smaller than that of a sparrow.\nIt is a forest species, inhabiting coniferous and mixed forests, primarily fir and spruce. It is a common species found throughout the region.\nIt nests in trees. It does not have a strict breeding period and can nest in any month of the year, but most birds start nesting in March-April.\nRed crossbill is easy to identify thanks to its unique crossed beak and its plumage, which ranges from greenish-yellow to orange-crimson. However, seeing the bird up close is not common. It is more often heard through the calls of passing birds or their exchange of calls in a flock.",
      arrival: 7,
      month: [10, 11, 12, 1, 2, 3],
      area: [1],
      icon: '',
      count: 2,
      source: "https://zoomuseum-tsu.ru/voices/06/",
      author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Поют клесты верхней части кроны, часто сидя на самой макушке ели, пихты.\nМассовый сезон пения начинается в феврале и продолжается до начала-середины апреля. Позывки птиц можно слышать круглый год.\nЗапись позывки сделана 23.10.2004 в окр. Томска в сосновом бору на левобережье Томи.\nГашков С.И."
          : "Sound was recorded at 23.10.2004 in Tomsk by Gashkov S."),
  BirdDataModel(
      name: locale == 'ru' ? "Белокрылый клест" : "Two-barred crossbill",
      latin: 'Loxia leucoptera',
      family: locale == 'ru' ? "Вьюрковые" : "Fringillidae",
      imageUrl: 'loxia_leucoptera',
      desc: locale == 'ru'
          ? "Круглый год встречается в наших широтах, ведет оседло-кочевой образ жизни.\nВеличиной несколько меньше скворца.\nЛесной вид, обитает в разреженных хвойных и смешанных лесах. Распространен по всей области, но везде более редок, чем клест-еловик.\nГнездится на деревьях. Гнездовой сезон растянут со второй половины зимы вплоть до мая и даже позже.\nРаспознать в увиденном клесте белокрылого не сложно, если удастся рассмотреть его крыло, где имеется две белых полоски (зеркальца). На расстоянии его следует различать по характерным особенностям в позывке и песне. Как и еловика его содержат в домашних условиях."
          : "Crossbill lives in siberian latitudes all year round, leads a sedentary lifestyle.\nSlightly smaller in size than a starling.\nIt lives in sparse coniferous and mixed forests. Bird is distributed throughout the region, but everywhere rarer than the red crossbill.\nNests in trees. The nesting season stretches from the second half of winter until May and even later.\nIt is not difficult to recognize a white-winged crossbill in a crossbill you see if you can examine its wing, where there are two white stripes (mirrors). From a distance, it should be distinguished by the characteristic features in its call and song.",
      arrival: 8,
      month: [9, 10, 11, 12, 1, 2, 3],
      area: [1],
      icon: '',
      count: 1,
      source: "https://zoomuseum-tsu.ru/voices/13/",
      author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Поют клесты верхней части кроны, часто сидя на самой макушке ели, пихты.\nМассовый сезон пения начинается в феврале и продолжается до лета. Позывки птиц можно слышать круглый год.\nНа втором плане – сорока, рябинник, большая синица, зяблик.\nЗаписан голос на участке смешанного леса 14.04.2005."
          : "Crossbills sing in the upper part of the crown, often sitting on the very top of spruce and fir.\nThe mass singing season begins in February and continues until summer. Bird calls can be heard all year round.\nIn the background are magpie, fieldfare, great tit, finch.\nVoice recorded in a mixed forest area on 04.14.2005 by Gashkov S."),
  BirdDataModel(
      name: locale == 'ru' ? "Ворон" : "Raven",
      latin: 'Crux crux',
      family: locale == 'ru' ? "Врановые" : "Corvidae",
      imageUrl: 'crux_crux',
      desc: locale == 'ru'
          ? "Круглый год встречается в наших широтах. Ведет парный оседлый образ жизни.\nВеличиной заметно крупнее вороны, но из-за внешнего сходства их размерные отличия сглаживаются.\nНаселяет различные биотопы в пределах большого участка обитания пары. Обычный вид, распространенный по всей области.\nСвое гнездо устраивает на высоких деревьях, умело маскируя его в толще лесного полога.\nВорон известная широко распространенная птица. Из-за своего черного цвета, печального голоса и питания падалью его образ имеет богатую фольклорную историю. Вместе с тем не все могут уверенно отличать его от других врановых. Только ему свойственны топорчащиеся в виде бородки перья на горле (горловом мешке в котором птица переносит пищу) и клиновидный хвост, что хорошо заметно у летящей птицы."
          : "These birds are found in our latitudes year-round. It leads a sedentary paired lifestyle.\nIts size is noticeably larger than that of a crow, but due to the external similarity, their dimensional differences are smoothed out.\nIt inhabits various biotopes within a large range of the pair's habitat. A common species widespread throughout the region.\nIt builds its nest in tall trees, skillfully camouflaging it in the thickness of the forest canopy.\nThe raven is a well-known widely distributed bird. Because of its black color, mournful voice, and scavenging diet, it has a rich folklore history. However, not everyone can confidently distinguish it from other corvids. Only it has the characteristic feathery hackles on the throat (gular pouch in which the bird carries food) and a wedge-shaped tail, which is clearly visible on a flying bird.",
      arrival: 9,
      month: [10, 11, 12, 1, 2, 3],
      area: [1],
      icon: '',
      count: 1,
      source: "https://zoomuseum-tsu.ru/voices/07/",
      author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Не имеет аналогов и его курлыкающие звуки, которые имеют разные вариации, но всегда легко узнаваемы.\nГолос ворона чаще удается слышать во время полета в любое время года.\nНа втором плане - серая ворона.\nЗапись сделана 3.04.2005 в южных окр. Томска над Томью."
          : "Its squawking sounds, which have different variations, but are always easily recognizable, are unparalleled.\nThe raven's voice is more often heard during flight at any time of year.\n In the background is a crow.\nThe recording was made on 3.04.2005 in the southern districts of Tomsk over the Tom River."),
  BirdDataModel(
      name: locale == 'ru' ? "Московка" : "Coal tit",
      latin: 'Parus ater',
      family: locale == 'ru' ? "Синицевые" : "Paridae",
      imageUrl: 'parus_ater',
      desc: locale == 'ru'
          ? "Круглый год встречается в наших широтах. Зимой в небольшом числе ее можно видеть на кормушках в парках вместе с большой синицей.\nМеньше воробья, примерно вполовину.\nЛесной вид, предпочитает хвойные и смешанные леса. Обычный вид, распространенный по всей области.\nГнездится в дуплах и расщелинах стволов деревьев.\nМосковка самая мелкая из наших синиц по окраске несколько схожа с большой синицей, но отсутствуют желтый и зеленый тона в оперении. От распространенной у нас буроголовой гаички отличается общим более темным оперением, как спины, так и брюшка и выделяющимися на этом фоне белыми щеками и белым пятном на затылке."
          : "It is found year-round in our latitudes. In winter, it can be seen in small numbers at feeders in parks together with the great tit.\n Smaller than the sparrow, about half the size.\n A forest species, preferring coniferous and mixed forests. It nests in hollows and crevices of tree trunks. The Moscow tit is the smallest of our tits, somewhat similar to the great tit in coloration, but lacks yellow and green tones in plumage. It differs from the Willow Tit, which is widespread in our country, by its darker plumage, both back and abdomen, and white cheeks and a white spot on the back of the head standing out against this background.",
      arrival: 10,
      month: [11, 12, 1, 2, 3],
      area: [1],
      icon: '',
      count: 1,
      source: "https://zoomuseum-tsu.ru/voices/03/",
      author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Поет, чаще в верхней части кроны.\nПесню московки  можно слышать с февраля до начала лета.\nНа втором плане - белокрылый клест, обыкновенный снегирь.\nЗапись сделана 13.03.2005 в окр. Томска близ. д. Кусково."
          : "Bird sings often in the upper part of the crown.\nThe song of the Coal tit can be heard from February to the beginning of summer.\nIn the background is the white-winged crossbill, the common bullfinch.\nRecorded on 03.13.2005 near Tomsk."),
  BirdDataModel(
      name: locale == 'ru' ? "Буроголовая гаичка" : 'Willow tit',
      latin: 'Parus montanus',
      family: locale == 'ru' ? "Синицевые" : "Paridae",
      imageUrl: 'parus_montanus',
      desc: locale == 'ru'
          ? "Другое название - пухляк\nКруглый год встречается в наших широтах. Зимой ее можно видеть в парках на кормушках вместе с большой синицей.\nЗаметно меньше воробья.\nЛесной вид, обитает в лесах самого разного типа. Обычный вид, распространенный по всей области.\nГнездится в дуплах деревьев, которые самец и самка выщипывают и выдалбливают себе сами, в подгнившем стволе или пне лиственного дерева.\nУзнать в образе и поведении этой мелкой птицы синицу не трудно, тем более что они не пугливы и позволяют рассмотреть себя с близкого расстояния. Рассмотрите голову птицы и если черный цвет есть только на шапочке и горошиной под клювом, то это буроголовая гаичка (другие наши гаички сероголовая с севера и черноголовая с юга у нас редки). Выдают пухляка и характерные с жужжанием позывки и беспокойство."
          : "The bird is found in our latitudes all year round. In winter, it can be seen in parks at feeders along with the great tit.\nThe bird is noticeably smaller than a sparrow.\nIt lives in forests of various types. This is a common species, distributed throughout the region.\nNests in tree hollows, which the male and female pluck out and hollow out for themselves, in a rotten trunk or stump of a deciduous tree.\nThe brown-headed chickadee is black in color only on the cap and a pea under the beak (Other chickadee of Siberia are rare. There are grey-headed chickadee or Siberian tit and Marsh tit (Poecile palustris)). The bird is identified by its characteristic buzzing calls.",
      arrival: 11,
      month: [10, 11, 12, 1, 2, 3],
      area: [1],
      icon: '',
      count: 1,
      source: "https://zoomuseum-tsu.ru/voices/08/",
      author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Поет, обычно передвигаясь в кроне дерева.\nПростенькую свистящую песню пухляка можно слышать с января-февраля и до начала лета.\nЗапись песни сделана 5.04.2004 в восточных окр. Томска в смешанном лесу, запись позывки 28.03.2005 в сосновом бору в северных окр. Томска."
          : "It sings, usually moving in the crown of a tree.\nThe simple whistling song of the puffball can be heard from January-February until the beginning of summer.\nThe song was recorded on April 5, 2004 in the eastern outskirts of Tomsk in a mixed forest. call recording on 03/28/2005 in a pine forest in the northern outskirts of Tomsk."),
  BirdDataModel(
      name: locale == 'ru' ? "Серая ворона" : "Crow",
      latin: 'Corvus cornix',
      family: locale == 'ru' ? "Врановые" : "Corvidae",
      imageUrl: 'corvus_cornix',
      desc: locale == 'ru'
          ? "Часть птиц проводит зиму в наших широтах, большинство отлетает на зимовку южнее и возвращаются одними из первых среди мигрирующих птиц уже в марте.\nВеличина вороны является одним из сравнительных эталонов в силу обычности и известности данной птицы.\nЛесной вид, предпочитает мозаичный ландшафт из леса и открытых участков. Приспособилась жить вблизи человека, где, как и сорока, занимает нишу собирателя и отчасти хищника. Обычный вид, распространенный по всей области.\nГнездится на высоких нередко одиноко стоящих деревьях.\nВорону представлять не стоит, но стоит обратить внимание на ее поведение как представителя одной из самых умных наших птиц, которая умело пользуется своими преимуществами."
          : "Birds are partly migratory. Some birds stay for winter in Siberia. Crow live in sparse forest, prefering mozaic landscapes with trees and open grounds. It is a  common in urban environment. Crow lives throughout the Tomsk region. It nests usually on tall isolated trees. Crows are known by their intelligence. ",
      arrival: 12,
      month: [9, 10, 11, 12, 1, 2, 3],
      area: [1, 3],
      icon: '',
      count: 2,
      source: "https://zoomuseum-tsu.ru/voices/09/",
      author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.",
      authorLink: "",
      author2: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.",
      authorLink2: "",
      audioDesc: locale == "ru"
          ? "Весенние нотки в голосе вороны, так называемое «картавое карканье» можно слышать в марте-апреле.\nНа втором плане – большая синица.\nЗапись сделана 5.04.2004 на северо-восточных окраинах Томска."
          : "Special sounds can be heard in March-April."),
  BirdDataModel(
      name: locale == 'ru' ? "Полевой воробей" : "Eurasian tree sparrow",
      latin: 'Passer montanus',
      family: locale == 'ru' ? "Воробьиные" : "Passeridae",
      imageUrl: 'passer_montanus',
      desc: locale == "ru"
          ? "Круглый год встречается в наших широтах, но часть птиц откочевывает зимовать южнее.\nВеличина воробья является одним из сравнительных эталоном для птиц мелкого размера.\nЛесо-степной вид, предпочитающий сельско-хозяйственный ландшафт. В крупных городах избегает густо застроенных, многоэтажных районов, предпочитая окраины и парки. Обычный вид более многочисленный на юге области.\nГнездится в дуплах деревьях, различных нишах, использует укрытия в домах человека, заселяет также норы ласточек-береговушек по берегам рек.\nВоробья все знают, но не все разделяют двух обитающих у нас совместно вида. Обратите внимание, что у полевого воробья (самец и самка одинаковы) вся шапочка кирпичного цвета, а на горле только маленькая горошина черного цвета, тогда как самец домового воробья имеет каштановую шапочку с широкой серой полосой через всю голову, а его черная манишка большего размера заходит на грудь и не имеет резких границ, самка же окрашена совсем скромно без черного и каштанового цвета в оперении."
          : "Tree sparrow lives year round in Tomsk region, but some birds move to south in winter. \n Birds live in forests and fields, especially agricalture areas. Settled in urban environment, preferring parks and outskirts. \n Sparrow nests in hollows in the trees, niches in the walls, houses. ",
      arrival: 13,
      month: [9, 10, 11, 12, 1, 2, 3],
      area: [3],
      icon: '',
      count: 1,
      source: "https://zoomuseum-tsu.ru/voices/10/",
      author: locale == 'ru' ? "Гашков С.И." : "Gashkov S.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == "ru"
          ? "Разница между песней и позывками у воробьев не велика, разве что по темпу и азарту исполнения. \nПоют обычно вблизи выбранного места для гнезда.\nНа втором плане – большая синица, сорока.\nЗапись сделана 13.04.2004 в Сибирском ботаническом саду г. Томска."
          : "Sparrow sing usually near nest place.\n Other sounds belong to great tit, pica\nSound was recorded 13.04.2004 in Tomsk"),
  BirdDataModel(
      name: locale == 'ru' ? "Обыкновенный поползень" : "Nuthatch",
      latin: 'Sitta europaea',
      family: locale == 'ru' ? "Поползневые" : "Sittidae",
      imageUrl: 'sitta_europaea',
      desc: locale == "ru"
          ? "Оседлый вид.\nНемного меньше воробья.\nЛесной вид, населяющий все типы леса. Является обычным видом по всей области.\nГнездится в дуплах, часто замазывая часть летка глиной, уменьшая, таким образом, его диаметр под себя.\nБлагодаря его внешнему виду и способности ловко лазать по стволу дерева в любом направлении эту длинноносую и короткохвостую птицу знают многие. А теперь соотнесите с ним его столь же выразительный голос.\nПоет чаще в верхнем ярусе леса, отчего обычно остается незамеченным."
          : "Birds are sedentary. This is a forest species, living throughout the region. \n Nests in tree holes, reducing the size of the entrance hole with mud. Nuthatch can climb the trees up and down.  ",
      arrival: 14,
      month: [9, 10, 11, 12, 1, 2, 3],
      area: [1, 3],
      icon: '',
      count: 1,
      source: "https://zoomuseum-tsu.ru/voices/11/",
      author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == "ru"
          ? "Сезон пения начинается со второй половины зимы и достигает своего пика в марте-апреле и почти прекращается уже к периоду насиживания самкой кладки, примерно со второй половины мая.\nНа втором плане - большая синица, серая ворона, обыкновенная овсянка.\nЗапись сделана 13.04.2004 в Сибирском ботаническом саду г. Томска."
          : "Start singing in second half of winter. Peak of singing period is March-April.\nSound was recorded 13.04.2004 in Tomsk"),
  BirdDataModel(
      name: locale == 'ru' ? "Свиристель" : "Bohemian waxwing",
      latin: 'Bombycilla garrulus',
      family: locale == "ru" ? "Свиристелевые" : "Bombycillidae",
      imageUrl: 'bombycilla_garrulus',
      desc: locale == "ru"
          ? "Круглый год встречается в наших широтах, однако встречаем его чаще в зимний период, когда свиристель стаями, состоящими до сотни и более особей, кочует в поисках своего основного зимнего корма - рябины.\nВеличиной со скворца.\nЛесной вид, предпочитающий гнездиться в разреженных таежных лесах, рослых рямах среди верховых болот, зарастающих вырубках. Обычный вид, распространенный по всей области.\nГнездится на деревьях, чаще хвойных.\nСвиристель - особенная по своему наряду и голосу птица. Узнавать о том, что они кормятся или пролетают где-то рядом, помогают звуки «свирели», которые птицы постоянно издают в коммуникационных целях. Обнаружив птиц, понаблюдайте за ними, они не пугливы, а вблизи в морозный день смотрятся лучше, чем на любой фотографии."
          : "These birds are living all year round in our region, but mostly seen in winter period when they appear in flocks. Waxwing makes migrations in search of rowen. Size is about starling. It is a wood species, nesting in sparse coniferous woods, bogs and overgrown fellings. These birds are very special with plumage and voice. Usually people hear waxwing when birds are feeding on trees.",
      arrival: 15,
      month: [1, 2, 3, 4, 10, 11, 12],
      area: [3],
      icon: '',
      count: 2,
      source: "https://zoomuseum-tsu.ru/voices/14/",
      author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == "ru"
          ? "Свиристящие звуки, схожие с теми, что слышим зимой, можно слышать и летом в местах гнездования вида, самцы при этом часто совершают демонстративные полеты.\nЗвук «серебряных колокольчиков» можно услышать в любое время года, но вблизи населенных пунктов его обычно удается слышать в течение снежного периода.\nЗапись сделана 15.05.2005 в 15 км южнее Томска, в смешанном лесу. На втором плане - зяблик."
          : "Special sounds of birds can be heard not only in winter, but in summer near nesting places. \nSound was recorded 15.05.2005 in mixed forest near Tomsk. On background voice of chaffinch"),
  BirdDataModel(
      name: locale == 'ru' ? "Обыкновенная овсянка" : "Yellowhammer",
      latin: 'Emberiza citrinella',
      family: locale == 'ru' ? "Овсянковые" : "Emberizadae",
      imageUrl: 'emberiza_citrinella',
      desc: locale == "ru"
          ? "Перелетный вид.\nВеличиной с воробья.\nПрилетает, когда появляются первые проталины. Некоторые самцы на юге области могут оставаться на зимовку.\nПтица лесо-полевого ландшафта. Заселяет разреженные леса, вырубки, просеки, гари, окраины болот, полей. Обычный вид, распространенный по всей области.\nГнездо устраивает на земле.\nУзнать песню обыкновенной овсянки совсем нетрудно, а после её прослушивания Вы наверняка вспомнили, что уже слышали её или обязательно узнаете, если услышите вновь. Часто ее удается еще и видеть поющей, что будет способствовать Вашей уверенности в правильном определении. При вспугивании овсянок, кормящихся на земле, их легко узнать по белым опахалам на крайних рулях и, конечно, по пестрому наряду с желтым цветом в своей основе."
          : "It is a migratory species sizing of sparrow. Arrives in Tomsk region when snow melts. Some birds from southern parts of the region stay for the winter. Common species, living throughout the region. ",
      arrival: 16,
      month: [4, 5, 6, 7, 8, 9],
      area: [1],
      icon: '',
      count: 2,
      source: "https://zoomuseum-tsu.ru/voices/12/",
      author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Поет, сидя на макушке дерева или вершине кустарника, любит использовать в качестве присады столбы.\nСезон пения длится с марта до середины июля.\nЗапись сделана 3.04.2004 в южных окр. Томска среди редкого березняка по берегу Томи."
          : "Usually sings on top of the tree or bush.\nSinging time is March to July.\nSound was recorded at 3.04.2004 near Tomsk by Gashkov S."),
  BirdDataModel(
      name: locale == 'ru' ? "Зеленушка" : "European greenfinch",
      latin: 'Chloris chloris',
      family: locale == 'ru' ? "Вьюрковые" : "Fringillidae",
      imageUrl: 'chloris_chloris',
      desc: locale == 'ru'
          ? "Перелетный вид.\nВеличиной с воробья.\nПрилетает в период схода снега. В окрестностях Томска появляется в конце марта - начале апреля. Отдельные птицы встречаются в зимнее время.\nЛесополевой вид. Населяет островные и разреженные темнохвойные и смешанные лесные массивы, сады и парки, окраины припоселковых кедрачей. В последнее два десятилетия стала обычным видом на юге области. К северу далее Кривошеино не отмечена. Вид начинал гнездиться в окр. Томске еще в начале XX века, затем перестал встречаться и повторно стал осваивать нашу территорию, примерно, в 50-е годы прошлого века.\nГнездится, как правило, в пихтах и елях на большой высоте.\nОпределить птицу легко по ее внешности. Зеленушка оправдывает свое название. На крыле выделяется более светлый желтый участок – зеркальце. Однако чаще достаточно услышать ее голос или нежное (в сравнении с юрком) жужжание, чтобы определить ее присутствие."
          : "Migratory species. \nThis bird is about sparrow size. \nArrives to Siberia when snow melts, usually end of March - beginning of April. Some birds can be seen in winter time. \n Lives in fields and forests. Greenfinch inhabits sparse dark-coniferous forests and parks. It is a common species in southern part of Tomsk region.\nNests in fir or spruce forest.\nGreenfinch is easily distinguished by plumage. They make special sounds like buzz",
      arrival: 17,
      month: [5],
      area: [1, 3],
      icon: '',
      count: 1,
      source: "",
      author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Поет чаще всего в верхней части кроны.\nПесню можно слышать с апреля и до июня, изредка в другие периоды лета, когда птицы приступают к повторному циклу гнездования.\nНа втором плане – иволга, обыкновенная чечевица, рябинник.\nЗапись сделана 15.06.2002 в окр. Томска, близ п. Кисловка в смешанном пойменном лесу."
          : "Sing in upper part of tree.\nSinging time last from April to June.\nBackground voices of common golden oriole, common rosefinch, fieldfare\nSound was recorded at 15.06.2022 near Tomsk in mixed forest by Gashkov S."),
  BirdDataModel(
      name: locale == 'ru' ? "Зяблик" : "Chaffinch",
      latin: 'Fringilla coelebs',
      family: locale == 'ru' ? "Вьюрковые" : "Fringillidae",
      imageUrl: 'fringilla_coelebs',
      desc: locale == 'ru'
          ? "Перелетный вид.\nВеличиной с воробья.\nПрилетает в период схода снега. В окрестностях Томска появляется в конце марта - начале апреля.\nЛесной вид, предпочитающий селиться в осветленных лесах различного типа, включая парки города. Обычен на юге области, к северу встречается реже.\nГнездится на деревьях.\nОпределить зяблика несложно, благодаря его нарядной внешности и громкому голосу. Чаще его можно видеть кормящимся на земле, где он передвигается шагом или прыжками. В парках города не слишком пуглив и позволяет себя рассматривать с нескольких метров.\nПоет чаще всего в средней части кроны, сидя на одном месте или медленно передвигаясь по ветке. Кроме песни у него есть еще и характерная позывка, по созвучию с которой говорят, что зяблик рюмит."
          : "Migratory species, with size of a sparrow. \nArrives when snow melts. In Tomsk region appear in end of May - beginning of April\nLives in forests, parks. It is a common species in southern part of Tomsk region.\nCan be easily distinguished by plumage and voice.\nUsually sing in middle part of tree. Apart from song chaffinch makes special sounds.",
      arrival: 18,
      month: [4, 5, 6, 7, 8, 9],
      area: [1, 3],
      icon: '',
      count: 1,
      source: "https://zoomuseum-tsu.ru/voices/15/",
      author: locale == 'ru' ? "Гашков С.И." : "Gashkov S.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Песню зяблика можно слышать с апреля и до июля.\nНа втором плане в первом фрагменте - полевой воробей, большая синица; во втором фрагменте - белобровик.\nЗапись песни сделана 13.04.2004 в Сибирском ботаническом саду г. Томска, позывки 15.06.2002 в окр. Томска, близ п. Кисловка на участке смешанного леса "
          : "Song can be heard during period of April till June\nBackground sounds belong to tree sparrow, great tit.\nSound was recorded at 13.04.2004 in Siberian botanical garden, Tomsk by Gashkov S."),
  BirdDataModel(
      name: locale == 'ru' ? "Белая трясогузка" : "White wagtail",
      latin: 'Motacilla alba',
      family: locale == "ru" ? "Трясогузковые" : "Motacillidae",
      imageUrl: 'motacilla_alba',
      desc: locale == 'ru'
          ? "Перелетный вид.\nВеличиной с воробья.\nПрилетает в период схода снега. Массовый прилет обычно происходит за несколько дней до вскрытия реки. В окрестностях Томска появляется в конце марта - начале апреля.\nПредпочитает селиться по берегам водоемов, повсеместно обитает в населенных пунктах. Обычный вид, но нигде не бывает многочисленным.\nГнездо прячет в различных укрытиях, нишах, как на земле, так и высоко в зданиях.\nТрясогузка легко узнаваемый вид, везде выделяется своим поведением, бегая по берегу водоемов или улицам города и собирая беспозвоночных."
          : "Migratory species, with size of a sparrow. \nAppears in time when snow melts. Arrives to Tomsk in end of March - beginning of April.\nTypically nest close to water, as well it is common species in cities. \n Nests are located on ground, in niches high in buildings. \nThis bird can be easily distinguished by behavior. Usually birds are running on the shore searching for insects.",
      arrival: 19,
      month: [4, 5, 6, 7, 8, 9],
      area: [2, 3],
      icon: '',
      count: 2,
      source: "https://zoomuseum-tsu.ru/voices/16/",
      author: locale == 'ru' ? "Гашков С.И." : "Gashkov S.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Песню, состоящую из набора щебечущих звуков, исполняет сидя на одном месте или в процессе хождения по земле.\nПоет мало и не долго только в первое время по прилету, в дальнейшем своей звонкой позывкой она всегда выдает свое присутствие.\nНа втором плане первого фрагмента – большая синица; второго фрагмента – белая трясогузка, большая синица.\nЗапись песни сделана 14.04.2004 в окр. «Синего Утеса», позывка 15.04.2004 в Сибирском ботаническом саду г. Томска."
          : "Sings at one place or in process of walking. \nSings little and not for long only during the first time upon arrival. After that only calls can be heard. \nBackground voices of great tit\nSound was recorded 14.04.2004 in Tomsk botanical garden"),
  BirdDataModel(
      name: locale == 'ru' ? "Дрозд рябинник" : "Fieldfare",
      latin: 'Turdus pilaris',
      family: locale == 'ru' ? "Дроздовые" : "Turdidae",
      imageUrl: 'turdus_pilaris',
      desc: locale == 'ru'
          ? "Перелетный вид, но часть птиц на юге области зимуют, а в годы урожая рябины остается на зимовку повсеместно и в большем числе.\nВеличиной немного крупнее скворца.\nПрилетает еще до схода снега. В окрестностях Томска обычно появляется в середине апреля.\nЛесной вид, предпочитает разреженные леса, пойменные биотопы. Обычный вид, распространенный по всей области. На юге в освоенных сельскохозяйственных районах более многочислен.\nГнездится обычно колониями, устраивая свои гнезда из растительного материала, склеенного грязью, в развилках стволов на горизонтальных ветках и др. основе.\nРябинник из-за колониального гнездования всегда выдает себя своей трескотней и поэтому его не трудно узнать."
          : "Migratory species, but some birds winter in the south of the region. In years with abundance of rowan berries, winters in all places in a great number. After wintering returns before the snow thawing. In Tomsk area appears usually in mid-April.\n	Breeds in various types of woodland and bush scrub, also birch and mixed forests in floodplain. Common and region-wide. More abundant in farmland on the south of the region.",
      arrival: 20,
      month: [4, 5, 6, 7, 8, 9, 10],
      area: [1, 3],
      icon: '',
      count: 1,
      source: "https://zoomuseum-tsu.ru/voices/17/",
      author: locale == 'ru' ? "Рауш А." : "A. Rausch",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Свою скрипучую песню исполняет сидя на дереве или в полете.\nПоет не долго с прилета и, примерно, до середины мая, а после вылупления птенцов песня-скороговорка уступает место эмоциональному коллективному беспокойству.\nНа втором плане – пеночка-теньковка, лесной дупель.\nЗапись сделана 9.05.2002 в 15 км южнее Томска, в смешанном лесу."
          : "The period of singing is short and lasts from birds’ arrival until mid-May.\nSong recorded on the 9th of May 2003 near Kolarovo village (15 km to the south of Tomsk), (mixed woodland). Background species: Phylloscopus collybita, Gallinago megala "),
  BirdDataModel(
      name: locale == 'ru' ? "Певчий дрозд" : "Song thrush",
      latin: 'Turdus philomelos',
      family: locale == 'ru' ? "Дроздовые" : "Turdidae",
      imageUrl: 'turdus_philomelos',
      desc: locale == 'ru'
          ? "Перелетный вид.\nВеличиной со скворца.\nПрилетает в период схода снега. В окр. Томска обычно появляется в конце апреля - начале мая.\nЛесной вид, населяющий темнохвойные, смешанные и лиственные леса с хвойным подростом. Обычный вид, распространенный по всей области.\nГнездо устраивает чаще невысоко, предпочитая деревья темнохвойных пород.\nУзнавать певчего дрозда нужно учиться по его великолепной мелодичной и своеобразной песне, в которой обязательно прослеживается повторение отдельных строф. По внешнему виду в сравнении с другими широкораспространенными у нас дроздами (рябинником, белобровиком, темнозобым) он выглядит скромнее и несколько меньше в размерах."
          : "Migratory species. Arrives at the thaw period. In Tomsk area appears usually at the end of April - early May.\nInhabits dense and tall coniferous woods, mixed and deciduous forests with some coniferous growth. Common and region-wide.",
      arrival: 21,
      month: [4, 5, 6, 7, 8, 9],
      area: [1],
      icon: '',
      count: 1,
      source: "https://zoomuseum-tsu.ru/voices/18/",
      author: "",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Поет, обязательно сидя на макушке дерева, предпочитая в качестве присады ель или пихту.\nСезон массового пения длится с прилета и до конца июня – середины июля.\nНа втором плане – мухоловка-пеструшка, юрок.\nЗапись 4.05.2004 в 15 км южнее Томска, в смешанном лесу."
          : "Sings from the arrival time until the end of June- early July.\n Sound was recorded on the 4th of May 2004 near Kolarovo village (15 km to the south of Tomsk) (mixed woodland). Background species: Ficedula hypoleuca, Fringilla montifringilla"),
  BirdDataModel(
      name: locale == 'ru' ? "Обыкновенный скворец" : "Starling",
      latin: 'Sturnus vulgaris',
      family: locale == 'ru' ? "Скворцовые" : "Sturnidae",
      imageUrl: 'sturnus_vulgaris',
      desc: locale == 'ru'
          ? "Перелетный вид.\nРазмер скворца является одним из эталонов для визуального сравнения с ним других видов птиц.\nПрилетает в период схода снега. В окр. Томска в сельскохозяйственных ландшафтах появляется уже в конце марта, в других биотопах несколько позднее.\nНаселяет сельскохозяйственные ландшафты, сады, парки и частный сектор в городах, лесо-луговые пространства в поймах крупных рек. Избегает сплошных лесных массивов. Является обычным, местами фоновым видом. Распространен по всей области.\nГнездится в дуплах и искусственных гнездовьях.\nСкворца знают, наверное, все, а вот его песню слышал далеко не каждый горожанин. Учитывая, что среди птиц-пересмешников он занимает не последнее место, прислушайтесь к его песне. В ней можно слышать знакомые звуки самых разных пернатых."
          : "Arrives at the start of the thawing period. Appears in the Tomsk area in agricultural habitats at the end of March, in other habitats a bit later.\nLives in agricultural landscapes, gardens, city parks, floodplains of large rivers. Avoids large dense forests. Common species, often abundant. Distributed over the whole region.",
      arrival: 22,
      month: [4, 5, 6, 7, 8, 9],
      area: [1, 3],
      icon: '',
      count: 1,
      source: "https://zoomuseum-tsu.ru/voices/19/",
      author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Поет, обычно сидя на присаде вблизи гнезда.\nПесенный сезон длится недолго, после того как самец привлек самку, его песенная активность снижается и совсем прекращается после вылупления птенцов, примерно с середины мая.\nНа втором плане – серая ворона, остромордые лягушки.\nЗапись сделана 8.05.2003 в Томской области, близ Кривошеино, в пойме Оби на южном берегу оз Манатка в вечернее время."
          : "Short song season, from April until mid-May or end of May.\nSound was recorded 8 May 2003 in the Tomsk area, near the village of Kriwoshenino at sunset (floodplain grassland). Background species: Corvus cornix."),
  BirdDataModel(
      name: locale == 'ru' ? "Белобровик" : "Redwing",
      latin: 'Turdus iliacus',
      family: locale == 'ru' ? "Дроздовые" : "Turdidae",
      imageUrl: 'turdus_iliacus',
      desc: locale == 'ru'
          ? "Перелетный вид.\nВеличиной со скворца.\nПрилетает еще до схода снега. В окр. Томска обычно появляется во второй половине апреля.\nЛесной вид, населяет разреженные леса разного типа с выраженным подлеском. Любит гнездиться в колонии дроздов-рябинников, которые коллективно защищают места своего гнездования от хищников. Именно среди рябинников его можно видеть в парках в черте города. Обычный вид, распространенный по всей области.\nГнездо устраивает обычно у ствола дерева невысоко от земли, на пнях, обросших порослью или просто на земле среди высокотравья, особенно для второй кладки."
          : "Arrives before the end of the thaw period. In Tomsk area appears mostly in the second half of April.\nInhabits various types of open forests with well-developed undergrowth. Common and region-wide.",
      arrival: 23,
      month: [4, 5, 6, 7, 8, 9],
      area: [1],
      icon: '',
      count: 1,
      source: "https://zoomuseum-tsu.ru/voices/20/",
      author: locale == 'ru' ? "Гашков С.И." : "Gashkov S.",
      authorLink: "https://zoomuseum-tsu.ru/voices/20/",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Обратите внимание, что его песня состоит из двух частей - громкой собственно песне и тихой подпесни. Песня белобровика в разных местах может существенно меняться, но ее двусложное построение всегда одинаково. По внешнему виду, благодаря белым бровям и рыжим перьям на боках, его удается легко выделять среди других наших дроздов.\nПоет, обязательно сидя в верхней части кроны дерева.\nПесню белобровика можно слышать с прилета и до середины июля.\nНа втором плане – белобровик, пеночка-весничка, лесной конек.\nЗапись сделана 9.05.2002 в 15 км южнее Томска, в смешанном лесу."
          : "The period of mass singing lasts from arrival until June. A few birds can be heard until mid-July.\n	Recorded on the 9th of May 2002 near Kolarovo village (15 km to the south of Tomsk) (mixed woodland). Background species: Turdus iliacus, Phylloscopus trochilus, Anthus trivialis."),
  BirdDataModel(
      name: locale == 'ru' ? "Юрок" : "Brambling",
      latin: 'Fringilla montifringilla',
      family: locale == 'ru' ? "Вьюрковые" : "Fringillidae",
      imageUrl: 'fringilla_montifringilla',
      desc: locale == 'ru'
          ? "Перелетный вид.\nВеличиной с воробья.\nПрилетает в период схода снега. В окр. Томска появляется в начале апреля.\nЛесной вид, обитает в различных лесах, предпочитая смешанные участки. Обычный вид, распространенный по всей области.\nГнездится на деревьях.\nОпределить юрка не трудно по его яркой окраске и благодаря его характерной громкой жужжащей песни. Во время весеннего пролета появляется в городских парках, где и поет на пролете, но гнездится, предпочитает в естественных биотопах."
          : "Migratory species. Arrives at the thaw period. In Tomsk and its outskirts appears in early April.\nCommon species living in various forest types, prefers mixed areas. Nest on trees. Easily distinguished by loud buzzing songs. Sometimes appear in urban parks, but nest outside of the city",
      arrival: 24,
      month: [4, 5, 6, 7, 8, 9],
      area: [1],
      icon: '',
      count: 1,
      source: "https://zoomuseum-tsu.ru/voices/21/",
      author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Поет чаще всего в средней части кроны.\nПесню юрка можно слышать с апреля и до июня.\nНа втором плане – пеночка-весничка, мухоловка-пеструшка, обыкновенная овсянка, московка.\nЗапись сделана 9.05.2002 в 15 км южнее Томска, в смешанном лесу."
          : "Sings from April until June.\nRecorded on the 9th of May 2005 near Kolarovo village (15 km to the south from Tomsk) (mixed woodland). Background species: Phylloscopus trochilus, Ficedula hypoleuca, Emberiza citrinella, Parus ater"),
  BirdDataModel(
      name: locale == 'ru' ? "Урагус" : "Siberian long-tailed rosefinch",
      latin: 'Carpodacus sibiricus',
      family: locale == 'ru' ? "Вьюрковые" : "Fringillidae",
      imageUrl: 'carpodacus_sibiricus',
      desc: locale == 'ru'
          ? "Также имеет название длиннохвостая чечевица или длиннохвостый снегирь. \nКруглый год встречается в наших широтах, ведет оседло-кочевой образ жизни. Величиной меньше воробья. Вид, обитающий в поймах рек, среди кустарниково-лугового ландшафта, на низинных закустаренных болотах. \nОбычный вид, распространенный по всей области, но на севере области встречается реже.Гнездится в кустарниках, предпочитая шиповник. \nУзнать урагуса просто. Такой нарядной птицы общего нежно розового цвета, у которой на голове и горле перышки отливают перламутром, у нас больше нет. Длинный черный хвост с белым цветом по краю на внешних опахалах крайних рулевых делает птицу особо изящной. Выдает урагуса не только его внешность, но и особая двух или трехсложная позывка, а также характерный фыркающий шум, издаваемый крыльями перелетающих по кустарникам птиц. \nПоет сидя на кустарниках иногда в токовом полете."
          : "Occurs in our latitude all the year round, resident-nomadic species.\nBird of woodlands and pastures. Inhabits deciduous scrub and bushy areas along watercourses, soggy overgrown lake and river shores, shrubby moors. Common and region-wide. Less common in the north of the region.",
      arrival: 25,
      month: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      area: [1],
      icon: '',
      count: 1,
      source: "https://zoomuseum-tsu.ru/voices/22/",
      author: "",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Песню урагуса можно слышать не долго в предгнездовое время в апреле-мае. \nНа втором плане в первом фрагменте – пеночка-весничка, московка, обыкновенная овсянка, клест-еловик, рябинник;во втором фрагменте – зяблик, пеночка-теньковка, сорока, обыкновенная овсянка. \nЗапись песни и позывки сделана 10.05.2003 в Томской обл. близ Кривошеино, в пойме Оби на южном берегу оз. Манатка, шум крыльев 9.05.2003 там же."
          : "Sings briefly in the pre-breeding season, in April-May. The call and the sound of the wings (when they fly overhead) are more often heard than their songs.\nSong and call recorded on the 10th of May 2003 in Tomsk area near Krivoshenino village (floodplain meadow). Wing sound recorded at the same spot on the 9th of May 2005. Background species: Phylloscopus trochilus, Parus ater, Emberiza citrinella, Loxia curvirostra, Turdus pilaris; Fringilla coelebs, Phylloscopus collybita, Pica pica, Emberiza citrinella"),
  BirdDataModel(
      name: locale == 'ru' ? "Лесной конек" : "Tree pipit",
      latin: 'Anthus trivialis',
      family: locale == 'ru' ? "Трясогузковые" : "Motacillidae",
      imageUrl: 'anthus_trivialis',
      desc: locale == 'ru'
          ? "Перелетный вид.\nНемного меньше воробья.\nПрилетает в период схода снега. В окрестностях Томска появляется во второй половине апреля.\nНесмотря на свое русское название, предпочитает полуоткрытые пространства по окраинам полей и опушкам леса, заселяет верховые болота, гари и вырубки. Обычный, местами фоновый вид, распространенный по всей области.\nГнездится на земле."
          : "Migratory species. Arrives during the thaw period. Can be seen near Tomsk from about mid-April.\nPrefers half open terrain at the edges of arable fields and at forest borders. Also in peat bogs, burnt forests and forest clearings. Common species, locally abundant. Distributed over the whole region",
      arrival: 26,
      month: [4, 5, 6, 7, 8, 9],
      area: [1],
      icon: '',
      count: 1,
      source: "",
      author: locale == 'ru' ? "А.Рауш" : "A. Rausch",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Лесного конька легко узнать как по его характерной песне, так и по токовому полету. Песню начинает, сидя открыто на вершине куста или дерева. Во время исполнения песни птица совершает токовые полеты, поднимается вверх свечкой, а затем плавно планирует на раскрытых крыльях с поднятым хвостом на присаду, при этом всё больше растягивая отдельные свистовые строфы песни.\nСезон пения растягивается с середины-конца апреля и, примерно, до середины июля.\nЗапись сделана 29.05.2005 на террасных лугах р. Томи у городского парка Лагерный сад."
          : "Sings from mid- or end of April until approximately mid-July.\nRecorded 29 May 2005 at the southern edge of Tomsk (dry valley grassland"),
  BirdDataModel(
      name: locale == 'ru' ? "Варакушка" : "Bluethroat",
      latin: 'Luscinia svecica',
      family: locale == 'ru' ? "Мухоловковые" : "Muscicapidae",
      imageUrl: 'luscinia_svecica',
      desc: locale == 'ru'
          ? "Перелетный вид.\nВеличиной с воробья.\nПрилетает обычно к концу периода снеготаяния. В окрестностях Томска появляется во второй половине апреля.\nПтица открытых пространств. Тяготеет к луговым пространствам пойм рек, заросших кустарниками и жесткостебельным высокотравьем, в сельской местности поселяется по окраинам огородов, среди сорного разнотравья, а также в окр. дачных участков, чаще вблизи ручьев, речек. Избегает сплошных лесных массивов. В подобных биотопах это обычный вид. Распространен по всей области.\nГнездо строит на земле.\nКому довелось видеть варакушку вблизи, тот запоминает её навсегда. Спутать этого нарядного соловья больше просто не с кем. Свою песню самец поет, открыто сидя на присаде и часто заканчивает её токовым полетом. В этом случае к его наряду, состоящему из рыжей звезды на голубой манишке и выразительных белых бровей, добавляется раскрытый рыжий с черной вершиной хвост солиста. По земле передвигается на своих длинных ногах быстрыми перебежками, часто замирая на одном месте. Песня у него очень индивидуальна, т.к. варакушка относится к лучшим нашим птицам-пересмешникам. Для того чтобы научиться узнавать данный вид по песне, необходимо послушать нескольких особей еще и в природе. Попробуйте выделить для себя общие черты построения песни, её тональности, ритма и одновременно сравнить с песнями её соседей по биотопу."
          : "The bluethroat is a small passerine bird that was formerly classed as a member of the thrush family Turdidae, but is now more generally considered to be an Old World flycatcher, Muscicapidae. It, and similar small European species, are often called chats. Migratory species. Arrives after the thaw period. Appears in the Tomsk area in early May.\nInhabits flooded and dry valleys, marshes at watersheds, several types of fallow land. Common, locally abundant species, distributed over the whole region.",
      arrival: 27,
      month: [5],
      area: [2],
      icon: '',
      count: 1,
      source: "",
      author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Поет на присаде, чаше всего это высокая жесткоостебельная трава, вершина кустарника или ветка дерева.\nПесню варакушки можно слышать с мая до середины июля.\nНа втором плане – береговушки, коноплянка, обыкновенная чечевица, северная бормотушка, черноголовый щегол.\nЗапись сделана 29.05.2005 на террасных лугах р. Томи у городского парка Лагерный сад."
          : "Sings from mid- or end of April until approximately mid-July.\nRecorded 29 May 2005 at the southern edge of Tomsk (dry valley grassland; at 56°24N, 84°57E)"),
  BirdDataModel(
      name: locale == 'ru' ? "Черноголовый чекан" : "European stonechat",
      latin: 'Saxicola rubicola',
      family: locale == 'ru' ? "Мухоловковые" : "Muscicapidae",
      imageUrl: 'saxicola_rubicola',
      desc: locale == 'ru'
          ? "Перелетный вид.\nВеличиной меньше воробья.\nПрилетает еще до отрастания травы на лугах. В окрестностях Томска появляется со второй половины мая.\nПтица открытых пространств. Тяготеет к луговым пространствам пойм рек, заросших кустарниками и жесткостебельным высокотравьем. Обычный вид, местами многочислен. Распространен по всей области.\nГнездо строит на земле.\nПознакомившись с чеканом, узнаешь его всюду. Птица всегда держится открыто, сидя на стебле высокой травы и позволяет себя хорошо рассмотреть. Сочетание черного, белого и рыжего в оперении самца воспринимается эффектно и запоминаются. Все лето чекан живет на лугу, проводя большую часть времени сидя на присаде, что выделяет его среди луговых птиц.\nПоет чекан, сидя на кустах и стеблях трав, иногда совершает токовый трепещущий полет. Его песня не такая громкая, как у соседей по лугу варакушки, лесного конька, пеночки-веснички и не всегда обращает на себя внимание."
          : "Migratory species. Usually arrives at the end of the thaw period. Appears in the Tomsk area at the end of April.\nPrefers shady coniferous forest and mixed forest with a well-developed understorey, and also disturbed floodplain habitats of small taiga rivers. A rare species around Tomsk, more common in the west and the south of the region",
      arrival: 28,
      month: [5],
      area: [2],
      icon: '',
      count: 1,
      source: "",
      author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Песню чекана удается слышать с середины мая до начала июля, реже дольше.\nНа втором плане – серая славка, черноголовый щегол, коноплянка, желтая трясогузка.\nЗапись сделана 29.05.2005 на террасных лугах р. Томи у городского парка Лагерный сад."
          : "Sings from mid- or end of April until approximately mid-July.\nRecorded 29 May 2005 at the southern edge of Tomsk (dry valley grassland)"),
  BirdDataModel(
      name: locale == 'ru' ? "Желтая трясогузка" : "Western yellow wagtail",
      latin: 'Motacilla flava',
      family: locale == 'ru' ? "Трясогузковые" : "Motacillidae",
      imageUrl: 'motacilla_flava',
      desc: locale == 'ru'
          ? "Перелетный вид.\nВеличиной с воробья.\nПрилетает после схода снега. В окрестностях Томска появляется в начале мая.\nЗаселяет заливные и суходольные луга, водораздельные болота, различные пустыри. Обычный, местами многочисленный вид, встречается по всей области.\nГнездо строят на земле, маскируя его среди прошлогодней травы.\nВид легко узнаваем по своей внешности. Следует всегда обращать внимание на наличие зеленоватого оттенка в окраске спины, серую шапочку с белой бровью и чистый желтый цвет от клюва до брюшка, т.к. сходные виды наших трясогузок с желтым цветом в оперении (желтоголовая, горная) отличаются именно в этих деталях. Все трясогузки позволяют себя рассмотреть, что помогает их узнавать не только по голосу."
          : "Arrives after the thaw period. Appears in the Tomsk area in early May.\nInhabits flooded and dry valleys, marshes at watersheds, several types of fallow land. Common, locally abundant species, distributed over the whole region",
      arrival: 29,
      month: [5, 6, 7],
      area: [2],
      icon: '',
      count: 2,
      source: "",
      author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Простую песню, состоящую из набора позывок, птицы неторопливо исполняют сидя на присаде на стебле высокой травы или кустарнике.\nПоет мало и не долго только в первое время по прилету, в дальнейшем издает только позывки, переходящие в беспокойство при появлении на ее участке зверя или человека.\nНа втором плане – сорока, лесной конек.\nЗапись сделана 11.05.2003 в Томской обл. близ Кривошеино, в пойме Оби на южном берегу оз. Манатка."
          : "Sings little and only during the short period after its arrival. After this only its call (including alarm calls) can be heard.\nRecorded 11 May 2003 in the Tomsk area near the village of Kriwoshenino (floodplain grassland). Background species: Pica pica, Anthus trivialis"),
  BirdDataModel(
      name: locale == 'ru' ? "Зарянка (малиновка)" : "European robin",
      latin: 'Erithacus rubecula',
      family: locale == 'ru' ? "Мухоловковые" : "Muscicapidae",
      imageUrl: 'erithacus_rubecula',
      desc: locale == 'ru'
          ? "Перелетный вид.\nНемного меньше воробья.\nПрилетает обычно к концу периода снеготаяния. В окрестностях Томска появляется в конце апреля.\nЛесной вид. Предпочитает темнохвойные и смешанные леса с выраженным подлеском, захламленные поймы мелких таежных рек. Редкий для окр. Томска вид. Чаще встречается на западе и юге области.\nГнездо строит обычно на земле, в укромном месте под валежником, густой елкой, нишах поваленных деревьев и др. сходных местах.\nВстретить в наших лесах зарянку - дело случая, но рыжее «лицо» и грудка всегда помогут безошибочно её узнать. Будучи фоновым видом в Европе, здесь в Сибири её высокий металлический «малиновый» голос звучит редко, однако люди не утратили память о малиновке, называя этим красивым словом несколько других видов."
          : "Migratory species. Usually arrives at the end of the thaw period. Appears in the Tomsk area at the end of April.\nPrefers shady coniferous forest and mixed forest with a well-developed understorey, and also disturbed floodplain habitats of small taiga rivers. A rare species around Tomsk, more common in the west and the south of the region",
      arrival: 30,
      month: [4],
      area: [1],
      icon: '',
      count: 1,
      source: "",
      author: locale == 'ru' ? "Гашков С.И." : "Gashkov S",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Свою песню самец поет в кустах и кронах, нередко на самой вершине дерева и чаще в сумерках.\nПесню зарянки можно слышать с мая до середины июля.\nНа втором плане – большая синица, мухоловка-пеструшка.\nЗапись сделана 12.05.00 в Сибирском ботаническом саду г. Томска."
          : "Sings from May until mid-July.\nRecorded 12 May 2000 in the Siberian botanical garden of Tomsk (mixed woodland). Background species: Parus major, Ficedula hypoleuca."),
  BirdDataModel(
      name: locale == 'ru' ? "Пеночка - теньковка" : "Common chiffchaff",
      latin: 'Phylloscopus collybita',
      family: locale == 'ru' ? "Пеночковые" : "Phylloscopidae",
      imageUrl: 'phylloscopus_collybita',
      desc: locale == 'ru'
          ? "Перелетный вид.\nМеньше воробья, примерно вполовину.\nПрилетает в период после снеготаяния и до распускания зелени. В окрестностях Томска появляется во второй половине апреля.\nЛесной вид, населяющий леса самого разного типа, включая пойменные ивняки, а также сады и парки населенных пунктов. В лесных биотопах является фоновым видом. Распространен по всей области.\nСвое шарообразное гнездо с боковым входом устраивает как на земле, так и на жесткой растительности, обычно невысоко над землей.\nВыделить пеночку из других птиц нетрудно, учитывая их удлинённое тело, свойственное всем видам пеночек и постоянную кормовую активность в кронах деревьев, за чем обычно их и застаешь. Для видовой диагностики необходимо слышать голос, по которому они четко различаются. Например, теньковку еще метко называют печальной пеночкой."
          : "Migratory species. Arrives after the thaw period and before the first appearance of leaves. Appears in the Tomsk area in the second half of April.\nInhabits several forest and woodland types and also gardens and parks in settlements. Abundant in wooded areas. Distributed over the whole region",
      arrival: 31,
      month: [5],
      area: [1, 3],
      icon: '',
      count: 1,
      source: "",
      author: locale == 'ru' ? "Рауш А." : "A. Rausch",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Поет обычно в верхнем ярусе леса.\nПесенный сезон у вида начинается с прилета и продолжается практически до осени.\nНа втором плане – зяблик, славка-завирушка, седой дятел.\nЗапись сделана 16.05.2004 в 15 км южнее Томска, в смешанном лесу."
          : "Sings from arrival until almost the autumn.\nRecorded 16 May 2004 at 15 km south of Tomsk, near the village of Kolarovo (mixed woodland). Background species: Fringilla coelebs, Sylvia curruca, Picus canus"),
  BirdDataModel(
      name: locale == 'ru' ? "Пеночка - весничка" : "Willow warbler",
      latin: 'Phylloscopus trochilus',
      family: locale == 'ru' ? "Пеночковые" : "Phylloscopidae",
      imageUrl: 'phylloscopus_trochilus',
      desc: locale == 'ru'
          ? "Перелетный вид.\nМеньше воробья, примерно вполовину.\nПрилетает в конце периода схода снега, еще до распускания зелени. В окрестностях Томска появляется чаще всего в третьей декаде апреля.\nНаселяет осветленные лиственные леса, пойменные ивняки, различное мелколесье, вырубки и болота, травянистые боры, рощи и парки населенных пунктов. Вообще спектр заселяемых ею биотопов достаточно широк. \nЯвляется обычным или фоновым видом в большинстве мест своего обитания. Распространен по всей области.\nСвое шарообразное гнездо с боковым входом устраивает на земле.\nУзнать принадлежность веснички к роду пеночек нетрудно, учитывая общие сходные черты их удлинённого телосложения и постоянное обследование древесного и кустарникового яруса, за чем чаще всего и удается их видеть. Для видовой диагностики незаменима песня, которая легко запоминается благодаря громкости, общему мажорному тону и относительной простоте своего рисунка."
          : "Migratory species. Arrives at the end of the thaw period, even before the appearing of leaves. Appears in the Tomsk area mainly in the final third of April.\nInhabits several habitats - thin woodland, floodplain willow bushes, forest clearings, marshes, small woods and parks in settlements. Common, region-wide",
      arrival: 32,
      month: [5],
      area: [1, 3],
      icon: '',
      count: 1,
      source: "",
      author: locale == 'ru' ? "Рауш А." : "A. Rausch",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Поет обычно на вершине куста или в верхней части лесного яруса.\nАктивный песенный сезон у веснички длится с мая и до середины июля, а изредка её можно слышать и позже практически до осени.\nНа втором плане – серая ворона.\nЗапись сделана 29.05.2005 в южных окр. Томска."
          : "Usually sing on top of bush. The active song season lasts from May until mid-July.\nRecorded 29 May 2005 south of Tomsk (deciduous woodland; at 56°25N, 84°58E). Background species: Corvus cornix"),
  BirdDataModel(
      name: locale == 'ru' ? "Лесной дупель" : "Swinhoe's snipe",
      latin: 'Gallinago megala',
      family: locale == 'ru' ? "Бекасовые" : "Scolopacidae",
      imageUrl: 'gallinago_megala',
      desc: locale == 'ru'
          ? "Перелетный вид.\nКулик средних размеров в полтора раза больше скворца.\nПрилетает после схода снега, еще до распускания зелени. В окрестностях Томска появляется первой декаде мая.\nНаселяет разреженные лиственные и смешанные леса, заболоченные лесные участки. Распространен по всей области. На юге области является обычным видом, к северу встречается реже.\nГнездо устраивает на земле.\nЛесной дупель выдает себя характерными жужжащими звуками, издаваемыми им в полете. На них всегда невольно заостряешь внимание, как на необычную составляющую звукового фона весеннего леса. Эти звуки получаются у птицы в бреющем полете за счет тока воздуха через распростертые рулевые и вибрирующие движения крыльев и дополняются скрипучей скороговоркой при выходе из пике."
          : "Migratory species. Arrives after the thaw but before the appearing of leaves. Appears in the Tomsk area in the first third of May.\n	Inhabits moist woodland (deciduous or mixed), interspersed with glades, and waterlogged forests. Present in the whole region. Common in the south, rare in the north. Making a special sounds during dive flight.",
      arrival: 33,
      month: [5],
      area: [1],
      icon: '',
      count: 1,
      source: "",
      author: locale == 'ru' ? "Гашков С.И." : "Gashkov S.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Токует, летая кругами выше полога леса.\nСезон токования длится с прилета до середины лета, иногда отдельных птиц можно слышать и позже.\nНа втором плане – большая синица, мухоловка-пеструшка.\nЗапись сделана 16.05.2005 в 15 км южнее Томска, на участке смешанного леса."
          : "Circular display flights can be seen until mid-summer.\nRecorded on the 16th of May 2005 near Kolarovo village (15 km to the south of Tomsk) (mixed woodland). Background species: Parus major, Ficedula hypoleuca"),
  BirdDataModel(
      name: locale == 'ru' ? "Обыкновенный соловей" : "Thrush nightingale",
      latin: 'Luscinia luscinia',
      family: locale == 'ru' ? "Мухоловковые" : "Muscicapidae",
      imageUrl: 'luscinia_luscinia',
      desc: locale == 'ru'
          ? "Перелетный вид.\nВеличиной с воробья.\nПрилетает в период распускания листвы. В окрестностях Томска появляется примерно в середине мая.\nПтица пойменных ивняков, встречается также в разреженных лиственных лесах с хорошим подлеском. Избегает сплошных лесных массивов и болот. Обычный вид пойменных биотопов. Распространен по всей области, но более обычен на юге, а на востоке проходит его восточная граница распространения, которая детально остается не очерченной.\nГнездо строит на земле.\nУвидеть соловья удается редко, а вот песню слышно за 1-3 км, что и позволяет с легкостью узнавать данный вид, т.к. спутать песню признанного солиста пернатых просто невозможно."
          : "Arrives during the appearing of leaves. Near Tomsk from about mid-May.\nInhabits shrubs in floodplains and also thin deciduous woodland with a well-developed understorey. Avoids dense forests and marshes. Common species in floodplain habitats. Dsitributed over the whole region, but more common in the south",
      arrival: 34,
      month: [5],
      area: [2],
      icon: '',
      count: 1,
      source: "",
      author: "Dion Art",
      authorLink:
          "https://ru.wikipedia.org/wiki/Обыкновенный_соловей#/media/Файл:Восточный_соловей_(Luscinia_luscinia),_Битцевский_лес.jpg",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Поет обычно внутри кустарников и поэтому остается невидимым.\nПесню соловья можно слышать с середины мая до середины июля.\nНа втором плане – полевой воробей, буроголовая гаичка, обыкновенная чечевица, пеночка-теньковка, зяблик.\nЗапись сделана в мае 2003 г. В окр. Томска близ с. Коларово, среди ивовых зарослей в пойме Томи."
          : "Sings from mid-May until mid-July.\nRecorded May 2003 at 15 km south of Tomsk, near the village of Kolarovo (mixed woodland). Background species: Passer montanus, Parus montanus, Carpodacus erythrinus, Phylloscopus collybita, Fringilla coelebs"),
  BirdDataModel(
      name: locale == 'ru'
          ? "Славка-завирушка или славка-мельничек"
          : "Lesser whitethroat",
      latin: 'Sylvia curruca',
      family: locale == 'ru' ? "Славковые" : "Sylviidae",
      imageUrl: 'sylvia_curruca',
      desc: locale == 'ru'
          ? "Перелетный вид.\nМеньше воробья почти вполовину.\nПрилетает после схода снега еще до распускания листвы. В окр. Томска обычно появляется в первой декаде мая.\nЛесной вид, населяет разнообразные леса с хорошо выраженным подлеском и подростом, ивовые заросли пойм, сады, парки и дачные участки. Обычный вид, распространенный по всей области.\nГнездо обычно устраивает в кустарниках, реже на деревьях.\nПо внешнему виду она схожа с другими славковыми, однако её удается узнать благодаря более резкому переходу белого низа к серому верху, особенно на голове. Держится славка-завирушка чаще в нижнем ярусе среди подлеска, где обычно ее и застаешь кормящейся или напевающей свою негромкую с перемолами песенку, за что её еще называют славка-мельничек.\nОбычно поет среди подлеска в нижних и средних участках древесного яруса."
          : "Arrives immediately after the thaw period. Mostly appears in the Tomsk area in the first third of May.\nInhabits several types of forest and woodland, willow bushes on floodplains, and in gardens and parks",
      arrival: 35,
      month: [5],
      area: [1],
      icon: '',
      count: 2,
      source: "",
      author: locale == 'ru' ? "А. Рауш" : "A. Rausch",
      authorLink: "",
      author2: locale == 'ru' ? "А. Рауш" : "A. Rausch",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Сезон пения длится со второй декады мая до начала – середины июля.\nНа втором плане пеночка-весничка, серая ворона, буроголовая гаичка, рябинник, большая горлица.\nЗапись сделана 20.05.2003 в 15 км южнее Томска, на участке смешанного леса."
          : "Sings from the second third of May until early or mid-July.\nRecorded 20 May 2003 at 15 km south of Tomsk, near the village of Kolarovo (mixed woodland). Background species: Phylloscopus trochilus, Corvus cornix, Parus montanus, Turdus pilaris, Streptopelia orientalis"),
  BirdDataModel(
      name: locale == 'ru' ? "Обыкновенная горихвостка" : "Common redstart",
      latin: 'Phoenicurus phoenicurus',
      family: locale == 'ru' ? "Мухоловковые" : "Muscicapidae",
      imageUrl: 'phoenicurus',
      desc: locale == 'ru'
          ? "Перелетный вид.\nНемного меньше воробья.\nПрилетает еще до распускания зелени. В окрестностях Томска появляется в конце апреля -начале мая.\nЛесной вид, предпочитает селиться в осветленных хвойных и лиственных лесах. Тяготеет также к садам и паркам населенных пунктов, дачным участкам. Обычный вид, распространенный по всей области.\nГнездится в дуплах и полостях деревьев, нишах зданий, на чердаках и в других подобных укромных местах. Охотно заселяет искусственные гнездовья (скворечники, синичники).\nОпределить птицу легко, благодаря наличию приметного белого пятна на лбу «лысинки» (у самцов) и характерному дрожанию рыжего хвоста (у самцов и самок) после каждого движения птицы, напоминающего игру огонька в ветвях дерева. Чаще ее удается заметить перемещающейся в нижнем ярусе леса, среди подлеска."
          : "Migratory species. Arrives before the appearance of leaves on trees. In Tomsk and its outskirts appears at the end of April - early May.\nBreeds in light forests of different types, in urban gardens and parks, in rural landscapes. Common and region-wide.",
      arrival: 36,
      month: [5],
      area: [1, 3],
      icon: '',
      count: 2,
      source: "",
      author: locale == 'ru' ? "А. Рауш" : "A. Rausch",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Петь самцы предпочитают, сидя на вершине дерева, столбе, проводах, телевизионных антеннах. Особенно активно поют на зорях. Утром начинают петь одними из первых, еще до рассвета.\nГорихвостку можно слышать с мая и до июля.\nНа втором плане – буроголовая гаичка, деревенская ласточка.\nЗапись сделана 2.06.2002 в северо-восточных окр. Томска, на участке соснового леса."
          : "Usually sing on top of the tree or pillar. Sometimes sings early, before dawn. Can be heard from May until July.\nRecorded on the 2d of June 2005 in the east of Tomsk (pine forest). Background species: Parus montanus, Hirundo rustica."),
  BirdDataModel(
      name: locale == 'ru' ? "Мухоловка-пеструшка" : "European pied flycatcher",
      latin: 'Ficedula hypoleuca',
      family: locale == 'ru' ? "Мухоловковые" : "Muscicapidae",
      imageUrl: 'ficedula_hypoleuca',
      desc: locale == 'ru'
          ? "Перелетный вид.\nВеличиной немного меньше воробья.\nПрилетает в период окончания снеготаяния. В окрестностях Томска обычно появляется в начале мая.\nЛесной вид, населяющий разреженные лиственные и хвойные леса различного типа. Очень хорошо заселяет искусственные гнездовья небольшого размера, развешанные в парках и скверах. Обычный вид, распространенный по всей области.\nГнездится в дуплах деревьев.\nУзнавать мухоловку-пеструшку помогает её черно-серо-белый наряд и характерная особенность поведения – приподнимание крыльев и одновременное подергивание хвостом перед полетом или при некотором беспокойстве, например, если Вы её рассматриваете, к этому могут добавляться короткие свистовые сигналы. Мухоловку удается видеть чаще всего вблизи места гнездования, поэтому в местах развески искусственных гнездовий встреча с ней более вероятна. Если сделать несколько малых синичников с диаметром летка 28-30 мм и развесить их с интервалом в 30-40 метров во дворе, сквере, роще, то и у Вас появится надежда слушать её приятную несложную песню прямо из своего окна."
          : "Migratory species. Arrives by the end of the thaw period. See near Tomsk mostly from early May.\nInhabits thin deciduous forest and woodland and coniferous forest of various types. Articial nests in city parks are well used. Common and region-wide.",
      arrival: 37,
      month: [5],
      area: [1, 3],
      icon: '',
      count: 1,
      source: "",
      author: "",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Поет как в верхнем ярусе леса, так и прямо перед выбранным для гнезда дуплом или домиком.\nСезон массового пения продолжается с мая и до июня – середины июля.\nНа втором плане – пеночка-весничка, большая синица, серая ворона.\nЗапись сделана 29.05.2005 в южных окр. Томска в смешанном лесу."
          : "Sings from May until June or mid-July.\nRecorded 29 May 2005 near Tomsk in mixed forest. Background species: Phylloscopus trochilus, Parus major, Corvus cornix."),
  BirdDataModel(
      name: locale == 'ru' ? "Иволга" : "Eurasian golden oriole",
      latin: 'Oriolus oriolus',
      family: locale == 'ru' ? "Иволговые" : "Oriolidae",
      imageUrl: 'oriolus_oriolus',
      desc: locale == 'ru'
          ? "Перелетный вид.\nНемного крупнее скворца.\nПрилетает после распускания листвы. В окр. Томска обычно появляется во второй половине мая.\nЛесной вид, предпочитающий светлые лиственные леса по берегам рек, пойменные ивняки, а также травянистые сосновые боры, городские сады и парки. Обычный вид, распространенный по всей области.\nГнездо искусно устраивает в развилках тонких ветвей в верхнем ярусе леса.\nНесмотря на свои размеры, иволгу непросто увидеть в кронах деревьев. Увидев, нельзя не узнать «золотую флейту» нашего леса, услышав, нельзя забыть её своеобразную свистовую песню или характерное «мяуканье» - крик тревоги."
          : "Migratory species. Arrives after the appearing of leaves. Appears mostly in the Tomsk area by the second half of May.\nSpecies lives mostly in woods, prefers light deciduous woodlands along rivers, and grassy pine forests, city gardens and parks. Common and region-wide.\n Nest in upper part of trees\nShy bird, it is hard to see in dense foliage",
      arrival: 38,
      month: [5],
      area: [1],
      icon: '',
      count: 2,
      source: "",
      author: locale == 'ru' ? "А. Рауш" : "A. Rausch",
      authorLink: "",
      author2: locale == 'ru' ? "Гашков С.И." : "Gashkov S.",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Поет иволга в верхнем ярусе леса.\nСезон массового пения длится с середины мая и до конца июня.\nНа втором плане – зяблик, обыкновенная горихвостка, мухоловка-пеструшка.\nЗапись сделана 13.06.2005 на окраине Томска, в парке Лагерный Сад."
          : "Usually sing in upper part of trees. Sings mostly from mid-May until the end of June.\nRecorded 13 June 2005 in Tomsk (mixed woodland). Background species: Fringilla coelebs, Phoenicurus phoenicurus, Ficedula hypoleuca."),
  BirdDataModel(
      name: locale == 'ru' ? "Зеленая пеночка" : "Greenish warbler",
      latin: 'Phylloscopus trochiloides',
      family: locale == 'ru' ? "Пеночковые" : "Phylloscopidae",
      imageUrl: 'phylloscopus_trochiloides',
      desc: locale == 'ru'
          ? "Перелетный вид.\nМеньше воробья, примерно вполовину.\nПрилетает после распускания листьев на черемухе и березе. В окр. Томска появляется во второй половине мая.\nЛесной вид, предпочитающий селиться в высокоствольных разреженных хвойных и лиственных лесах со сложным рельефом, включая некоторые парки города, где сохранен подлесок. В таких биотопах является обычным видом. Распространен по всей области.\nГнездится на земле.\nОпределить птицу по внешнему виду сложно из-за большого внешнего сходства пеночек между собой. Проще научиться узнавать ее по голосу, скороговорка которого своеобразна и хорошо отличима от песен других солистов."
          : "Arrives after the appearing of leaves of birch. Appears in the Tomsk area in the second half of May.\nPrefers tall thin coniferous forests and mixed forests on undulated terrain. Also inhabits some city parks. Common and region-wide.",
      arrival: 39,
      month: [5],
      area: [1, 3],
      icon: '',
      count: 1,
      source: "",
      author: locale == 'ru' ? "Гашков С.И." : "Gashkov S.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Поет обычно в верхнем ярусе леса.\nСезон пения растягивается практически на все лето.\nЗапись сделана 27.06.2001 в Сибирском ботаническом саду г. Томска."
          : "Sings from arrival until about mid-July.\nRecorded  27 June 2001 near Tomsk at the village of Kislovka (pine forest)"),
  BirdDataModel(
      name: locale == 'ru' ? "Пятнистый конек" : "Olive-backed pipit",
      latin: 'Anthus hodgsoni',
      family: locale == 'ru' ? "Трясогузковые" : "Motacillidae",
      imageUrl: 'anthus_hodgsoni',
      desc: locale == 'ru'
          ? "Перелетный вид.\nНемного меньше воробья.\nМассовый прилет происходит после распускания листьев на деревьях. В окр. Томска повсеместно регистрируется с третьей декады мая.\nЛесной вид. Населяет леса разного типа, полуоткрытые пространства по окраинам полей и опушкам леса, заселяет верховые болота, гари и вырубки. Обычный, местами фоновый вид, распространенный по всей области.\nГнездится на земле.\nИз-за сходства с лесным коньком при определении следует учитывать детали, которые можно рассмотреть только в бинокль. В окраске верх тела имеет в отличие от лесного зеленовато-оливковый оттенок без пестрин в нижней части спины и поясницы, а светлый низ тела с четкими черными пестринами более яркими, чем у лесного конька. Только у пятнистого конька посматривается светлая бровь.\n Песни обоих сравниваемых видов тоже схожи, отличием может служить отсутствие выраженной концовки в песне пятнистого конька и токовый полет проходящий у него без снижения высоты по прямой между присадами, тогда как лесной конек исполняя песню в токовом полете планируя при снижении и растягивает отдельные свистовые строфы песни . Такие «сложности» в определении для многих перестанут возникать после нескольких сравнительных прослушиваний обоих видов."
          : "Migratory species. Size is less than a sparrow. \nNearly all arrive just after the appearing of leaves. Arriving to Tomsk in end of May.\nForest species. Inhabits several types of forest, bogs and burnt forests. Common species, at some places abundant. Nest on ground.",
      arrival: 40,
      month: [5],
      area: [1],
      icon: '',
      count: 1,
      source: "",
      author: locale == 'ru' ? "Гашков С.И." : "Gashkov S.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Сезон пения длится с прилета и, примерно, до середины июля.\nЗапись сделана 21.05.2004 в Окр. Томска, близ п. Кисловка в сосновом бору."
          : "Sings from the date of arrival until about mid-July.\nRecorded 21 May 2005 near Tomsk at the village of Kislovka (pine forest)"),
  BirdDataModel(
      name: locale == 'ru' ? "Зеленая пересмешка" : "Icterine warbler",
      latin: 'Hippolais icterina',
      family: locale == 'ru' ? "Камышовковые" : "Acrocephalidae",
      imageUrl: 'hippolais_icterina',
      desc: locale == 'ru'
          ? "Перелетный вид.\nМеньше воробья почти вполовину.\nПрилетает после распускания листвы на деревьях. В окрестностях Томска появляется во второй половине мая.\nЛесной вид. Тяготеет к мелколиственным лесам, основу которых образует береза. Встречается в травянистых сосновых борах, изредка в садах и парках населенных пунктов. Более обычен на юге области, к северу встречается реже.\nГнездо строит на деревьях, преимущественно лиственных.\nВ самом названии вида уже говорится о его выдающихся вокальных способностях, что, надо сказать, осложняет узнавание песни. Не способствует этому и скромный наряд, свойственный всем нашим славковым. Остается один способ - соотносить её яркие песенные конструкции с уже знакомыми для Вас мелодиями. Тогда свойственное ей пение, с повизгиванием и хрипотцой, будет Вами легко выделяться из общего хора.\nПоет в верхнем ярусе, зачастую постоянно перемещаясь, поэтому увидеть её не всегда удается."
          : "Migratory species. \nSize is less than a sparrow\nArrives after the appearing of leaves. Appears in the Tomsk area in the second half of May.\nBird of forests and woodlands, preferring trees with small leaves, mainly birch. Also seen in grassy pine forest and occasionally in gardens and parks in settlements. More common in the south than in the north of the region.\nNest on trees, mostly deciduous. ",
      arrival: 41,
      month: [5],
      area: [1],
      icon: '',
      count: 1,
      source: "",
      author: locale == 'ru' ? "Гашков С.И." : "Gashkov S.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Сезон пения длится со второй половины мая до середины июля.\nНа втором плане – обыкновенная кукушка, зяблик, рябинник.\nЗапись сделана 26.05.2002 в Томском р-не в окр. станции Межениновка близ пос. Смена среди березового участка смешанного леса."
          : "Sing in upper part of trees with continues movement. Sings from the second half of May until mid-July.\nRecorded 26 May 2002 east of Tomsk near the railway station of Mezjeninovka (deciduous woodland). Background species: Cuculus canorus, Fringilla coelebs, Turdus pilaris."),
  BirdDataModel(
      name: locale == 'ru' ? "Садовая камышовка" : "Blyth's reed warbler",
      latin: 'Acrocephalus dumetorum',
      family: locale == 'ru' ? "Камышовковые" : "Acrocephalidae",
      imageUrl: 'acrocephalus_dumetorum',
      desc: locale == 'ru'
          ? "Перелетный вид.\nМеньше воробья.\nПрилетает после полного распускания листвы и появления травяного яруса. В окрестностях Томска появляется в третьей декаде мая.\nИсходно лесной вид, заселяющий разреженные лиственные леса с густым высокотравьем. Привязанность садовой камышевки к «травяным джунглям» и в особенности к крапиве определяет ее присутствие на пойменных лугах, по краям сельскохозяйственных полей, на огородах, дачных участках, в садах и парках, т.е. везде, где есть островки высокотравья. В подобных биотопах является фоновым видом. Распространен по всей области.\nГнездо строит среди травяного яруса, сплетая стенками гнезда края нескольких ближайших жестких стеблей.\nОпределить птицу по внешнему виду непросто из-за большого внешнего сходства с другими видами славковых. Проще можно научиться узнавать ее по голосу, учитывая привязанность её к травяному ярусу. Несмотря на то, что она относится к птицам-пересмешникам, которые копируют голоса других видов, садовая камышевка делает это в свойственной только ей манере, повторяя заимствованные строфы по нескольку раз и обязательно вставляя между куплетами свой припев из нескольких однообразно связанных чекающих звуков. Именно этот ритм и сходство припевов позволяет без особого труда выделять её среди других вокалистов.\nПоет обычно в травяном и кустарниковом ярусе не только днем, но и ночью."
          : "Migratory species. \n Size is less than a sparrow. \nArrives after the trees are fully in leaf and the grass layer has emerged.\nInhabits thin deciduous woodland with thick tall grass. Also occurs in ` grass jungles` in grasslands of floodplains, borders of arable fields, garden and parks, and any other places with small \"islands\"  of tall grass, where it can be abundant. Distributed over the whole region.\nNest in grass",
      arrival: 42,
      month: [5],
      area: [1, 3],
      icon: '',
      count: 1,
      source: "",
      author: locale == 'ru' ? "Рауш А." : "A. Rausch",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Сезон пения длится до появления в гнездах птенцов в конце июня – начале июля.\nНа втором плане – белобровик, мухоловка-пеструшка.\nЗапись сделана 28.05.2004 в 15 км южнее Томска, в смешанном лесу у дороги."
          : "Sings from the date of arrival until the end of June, early July.\nRecorded 28 May 2004 at 15 km south of Tomsk, near the village of Kolarovo (mixed woodland). Background species: Turdus iliacus, Ficedula hypoleuca."),
  BirdDataModel(
      name: locale == 'ru' ? "Садовая славка" : "Garden warbler",
      latin: 'Sylvia borin',
      family: locale == 'ru' ? "Славковые" : "Sylviidae",
      imageUrl: 'sylvia_borin',
      desc: locale == 'ru'
          ? "Перелетный вид.\nНемного меньше воробья.\nПрилетает после полного распускания листвы. В окрестностях Томска появляется в третьей декаде мая.\nЛесной вид, предпочитающий селиться в осветленных лиственных лесах по зарастающим вырубкам и гарям, закустаренным поймам рек, а также в садах и парках с выраженным подлеском. Обычный, местами многочисленный вид, распространенный по всей области.\nГнездо обычно устраивает в кустарниках.\nПо внешнему виду мало отличается от других славковых, немного выделяясь среди них своими размерами. Однако её мощный и мелодичный говорок сразу выделяется из общего хора и позволяет быстро научиться выделять его в общем хоре.\nОбычно садовую славку можно слышать среди кустарников или в нижних и средних участках древесного яруса."
          : "Migratory species. \n Size is a bit less than a sparrow\nArrives after the trees are fully in leaf. Appears in the Tomsk area mostly in the final third of May.\nPrefers thin deciduous forest and regenerating forest clearings and burnt forest, and also floodplains in the whole region.\n Nest in bushes. Song is special and bird can be distinguished by voice.",
      arrival: 43,
      month: [5],
      area: [1, 3],
      icon: '',
      count: 1,
      source: "",
      author: locale == 'ru' ? "Гашков С.И." : "Gashkov S.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Сезон массового пения длится с конца мая до начала-середины июля.\nНа втором плане – мухоловка-пеструшка, пеночка-весничка.\nЗапись сделана 28.05.2004 в 15 км южнее Томска, в смешанном лесу."
          : "Usually sing in bush or lower part of trees. Sings from mid-May until early or mid-July.\nRecorded 28 May 2004 at 15 km south of Tomsk, near the village of Kolarovo (mixed woodland). Background species: Ficedula hypoleuca, Phylloscopus trochilus."),
  BirdDataModel(
      name: locale == 'ru' ? "Обыкновенная кукушка" : "Common cuckoo",
      latin: 'Cuculus canorus',
      family: locale == 'ru' ? "Кукушковые" : "Cuculidae",
      imageUrl: 'cuculus_canorus',
      desc: locale == 'ru'
          ? "Перелетный вид.\nНемного крупнее скворца, но выглядит больше из-за длинного хвоста.\nПрилетает в период распускания листьев на деревьях. В окрестностях Томска обычно появляется в середине мая.\nЛесо-луговой вид, населяет разнообразные лесные и открытые пойменный ландшафты. Обычный, местами многочисленный вид. Распространен по всей области.\nПодкладывает яйца в гнезда мелких воробьиных. Известно около 150 видов воспитателей кукушки, из которых у нас это несколько десятков видов самыми распространенными из которых являются дубровник, соловей-красношейка, черноголовый чекан, белая трясогузка. Гнездовая жизнь кукушки до сих пор таит много вопросов.\nЛегко узнаваемый вид по характерному кукованию, аналогов которому у нас нет.\nПоет в сидя на древесно-кустарниковой растительности, реже в полете."
          : "Migratory species.\nSize is a bit bigger than starling, but looks heavy due to long tail\n Arrives at the period of foliage expansion. In Tomsk and its suburbs usually appears in mid-May\nSeen in all types of woodland and open floodplain habitats. Common species, in some places very common. Distributed over the whole region.\nFamous by breeding behavior. Cuckoo lays eggs to other species nests, which are about several dozens in Siberia.",
      arrival: 44,
      month: [5],
      area: [2],
      icon: '',
      count: 1,
      source: "",
      author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Сезон кукования продолжается с середины мая и до конца июля.\nНа втором плане – садовая камышевка, северная бормотушка, варакушка, обыкновенный скворец.\nЗапись сделана 9.06.2002 на террасных лугах р. Томи у городского парка Лагерный сад."
          : "Recorded on the 9th of June 2002 in the south of Tomsk (upland meadow). Background species: Acrocephalus dumetorum, Hippolais calligata, Luscinia svesica, Cuculus canorus, Sturnus vulgaris."),
  BirdDataModel(
      name: locale == 'ru' ? "Обыкновенная чечевица" : "Common rosefinch",
      latin: 'Carpodacus erythrinus',
      family: locale == 'ru' ? "Вьюрковые" : "Fringillidae",
      imageUrl: 'carpodacus_erythrinus',
      desc: locale == 'ru'
          ? "Перелетный вид.\nВеличиной с воробья.\nПрилетает обычно в период распускания листвы на березе. В окрестностях Томска появляется примерно с середины мая.\nТяготеет к полуоткрытым пространствам пойм рек, осветленным лесам с выраженным подлеском, заселяет вырубки, гари, сады и парки в черте города, дачные участки. Обычный вид, распространенный по всей области.\nГнездо строит невысоко над землей среди высокотравья, на кустарниках, молодых деревьях хвойных.\nОпределить птицу не составляет труда по её характерному малиновому наряду и незамысловатой свистовой песне, словесное выражение которой удачно отражает вопросительная фраза «ви-тю-ви?-дел?» со всеми её вариантами «ты-ви?-тю-ви?-дел?», «ты-ви?-тю-ви-дел?» и др. облегчающими узнавание данного вида. Непуглива и позволяет себя рассмотреть с 10 и даже 5 метров.\nПоет чаше всего, сидя на одном месте на вершине кустарника, ветке дерева."
          : "Migratory species. \nSparrow size\nUsually arrives during the appearing of leaves of birch. Appears in the Tomsk area about mid-May.\nPrefers bushy floodplains, thin forests with bushy understorey, and also inhabits cut burnt forests, as well as parks, town edges and garden areas. Common and region-wide. \n Nest in tall grass, in bushes, on young trees.",
      arrival: 45,
      month: [5],
      area: [2],
      icon: '',
      count: 1,
      source: "",
      author: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Песню чечевицы можно слышать с середины мая до середины - конца июля.\nНа втором плане – береговушки, северная бормотушка, черноголовый чекан.\nЗапись сделана 29.05.2005 на террасных лугах р. Томи у городского парка Лагерный сад."
          : "Sings from mid-May until mid- or end of July.\nRecorded 29 May 2005 south of Tomsk (dry valley). Background species: Riparia riparia, Hippolais calligata, Saxicola rubicola."),
  BirdDataModel(
      name: locale == 'ru' ? "Северная бормотушка" : "Booted warbler",
      latin: 'Iduna caligata',
      family: locale == 'ru' ? "Камышовковые" : "Acrocephalidae",
      imageUrl: 'iduna_caligata',
      desc: locale == 'ru'
          ? "Перелетный вид.\nМеньше воробья почти вполовину.\nПрилетает, когда распустилась листва на деревьях, а на лугах начинают отрастать многолетние травы. В окрестностях Томска появляется в третьей декаде мая.\nПтица открытых пространств. Тяготеет к открытым пространствам лугов, суходолов, пустырей, низменных болот. Не встречается в сплошных лесных массивах. Обычный вид, чаще встречающийся в южных районах области.\nГнездо устраивает в основании кустистых трав прямо на земле или на небольшом расстоянии от неё, среди стеблей жесткостебельного высокотравья.\nБормотушку достаточно легко узнать по её простенькому говорку-бормотанию, не имеющему аналогов у других наших видов. Её песня никогда не надоедает даже после нескольких часов соседства, если Вы расположились рядом на отдых."
          : "Migratory species. Less than a sparrow. \nArrives when the leaves have appeared and the perennial grasses have started to grow in the grasslands. Appears in the Tomsk area in the end of May.\nPrefers open grasslands with tall grass. Not seen in dense forests. Common species, more common in the south of the region.\nNest on the ground or in the grass. ",
      arrival: 46,
      month: [5],
      area: [2],
      icon: '',
      count: 2,
      source: "",
      author: locale == 'ru' ? "Гашков С.И." : "Gashkov S.",
      authorLink: "",
      author2: locale == 'ru' ? "Рауш А." : "A. Rausch",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Поет, сидя на стебле травы, вершине кустарника, часто меняя присаду.\nСезон пения длится с конца мая до середины июля.\nНа втором плане обыкновенная чечевица, обыкновенная кукушка.\nЗапись сделана 9.06.2002 на террасных лугах р. Томи у городского парка Лагерный сад."
          : "Sings from the end of May until mid-July.\nRecorded 9 June 2002 south of Tomsk (dry valley grassland). Background species: Carpodacus erythrinus, Cuculus canorus."),
  BirdDataModel(
      name: locale == 'ru' ? "Серая славка" : "Common whitethroat",
      latin: 'Sylvia communis',
      family: locale == 'ru' ? "Славковые" : "Sylviidae",
      imageUrl: 'sylvia_communis',
      desc: locale == 'ru'
          ? "Перелетный вид.\nНемного меньше воробья.\nПрилетает, когда распустилась листва на деревьях, а на лугах начинают отрастать многолетние травы. В окрестностях Томска появляется в третьей декаде мая.\nПтица открытых пространств. Тяготеет к луговым пространствам пойм рек, заросших кустарниками и жесткостебельным высокотравьем, заселяет разреженные лиственные леса, гари, вырубки, избегая сплошных лесных массивов. В сельской местности и в окр. дачных участков поселяется среди сорного разнотравья. Обычный вид, распространенный по всей области.\nГнездо устраивает невысоко над землей в траве или низких кустарниках, предпочитая из их числа шиповник.\nСерая славка обычно выделяется среди славковых, обитающих на открытых пространствах, большими размерами, длинным хвостом с белыми опахалами на крайних перьях хвоста, коричневатыми перьями на крыле и способностью немного приподнимать перья на затылке, из-за чего образуется слабое подобие хохолка. Выделяется она и своей песней, которую часто исполняет в токовом полете."
          : "Migratory species. \n Less than a sparrow\nArrives when the leaves have appeared and the perennial grasses have started to grow in the grasslands. Appears in the Tomsk area in the final third of May.\nBird of open terrain. Prefers bushy floodplain grasslands with tall grass, the borders of arable fields and garden areas (dachas). Also lives in thin forest, forest clearings, peat bogs. Avoids dense forests. Common and region-wide.",
      arrival: 47,
      month: [5],
      area: [2],
      icon: '',
      count: 1,
      source: "",
      author: locale == 'ru' ? "Гашков С.И." : "Gashkov S.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Поет, сидя открыто на стеблях трав, кустарниках или верхушках деревьев.\nСезон пения длится с конца мая до середины июля.\nНа втором плане обыкновенная чечевица.\nЗапись сделана 2.06.2002 в южных окр. Томска, на участке разреженного лиственного леса."
          : "Sings from the the end of May until mid-July.\nRecorded 2 June 2003 south of Tomsk (thin deciduous woodland). Background species: Carpodacus erythrinus."),
  BirdDataModel(
      name: locale == 'ru' ? "Глухая кукушка" : "Oriental cuckoo",
      latin: 'Cuculus optatus',
      family: locale == 'ru' ? "Кукушковые" : "Cuculidae",
      imageUrl: 'cuculus_optatus',
      desc: locale == 'ru'
          ? "Перелетный вид.\nНемного крупнее скворца.\nПрилетает после распускания листьев на деревьях. В окр. Томска обычно появляется в третьей декаде мая.\nЛесной вид, предпочитающий высокоствольные хвойные и смешанные леса таежного типа, избегает открытых пространств. Обычный вид, хотя и встречается реже обыкновенной кукушки. Распространен по всей области.\nПодкладывает яйца в гнезда пеночек.\nЛегко узнается по глухому кукованию, а вот по внешнему виду отличить её от своего двойника, обыкновенной кукушки, практически не удается, особенно в биотопах, где они обитают совместно."
          : "Arrives after the foliage expansion. In Tomsk and its suburbs usually appears at the end of May.\nBreeds in taiga and mixed forests with mature conifers, avoids open territories. Common species, although less common than Cuckoo (Cuculis canorus). Distributed over the whole region.\nCalls can be heared from the end of May until the end of July.",
      arrival: 48,
      month: [5],
      area: [1],
      icon: '',
      count: 1,
      source: "",
      author: "",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Поет в верхнем ярусе леса.\nСезон кукования продолжается с конца мая и до конца июля.\nНа втором плане кедровка, серая славка, обыкновенная кукушка, желна, садовая камышевка.\nЗапись сделана 30.05.2004 в окр. Томска, близ с. Корнилово."
          : "Recorded on the 30th of May 2004 near Kornilovo village, in the eastern part of Tomsk outskirts (mixed forest). Background species: Nucifraga caryocatactes, Sylvia communis, Cuculus canorus, Dryocopus martius, Acrocephalus dumetorum."),
  BirdDataModel(
      name: locale == 'ru' ? "Соловей-красношейка" : "Siberian rubythroat",
      latin: 'Luscinia calliope',
      family: locale == 'ru' ? "Мухоловковые" : "Muscicapidae",
      imageUrl: 'luscinia_calliope',
      desc: locale == 'ru'
          ? "Перелетный вид.\nВеличиной с воробья.\nПрилетает после распускания листвы. В окрестностях Томска обычно появляется в третьей декаде мая.\nЛесной вид, населяющий разреженные леса различного типа с выраженным подлеском, кустарниковые пойменные заросли. Тяготеет к захламленным участкам леса. В небольшом числе может гнездиться в парках города, где сохранен подлесок. Обычный вид наших лесов, распространенный по всей области.\nГнездится на земле.\nУзнавать красношейку совсем нетрудно по ярко-алому оперению горла и заметным издали белым бровям и усам. Его громкий голос всегда обращает на себя внимание, однако, чтобы научиться соотносить его с красношейкой, нужна некоторая тренировка, т.к. рисунок песни может существенно разниться у разных особей, хотя свистовые непрерывные трели - постоянная составляющая любого самца."
          : "Migratory species. Size is about a sparrow.\nArrives after the foliage expansion. In Tomsk and its outskirts appears in the final third of May.\nInhabits all types of woodland, with a preference for more open mixed coniferous forest with rich element of birth, willow and undergrowth. Found in soggy upland country with bushes, at times also in well-wooded parks. Common and region-wide.",
      arrival: 49,
      month: [5],
      area: [1, 3],
      icon: '',
      count: 2,
      source: "",
      author: locale == 'ru' ? "Гашков С.И." : "Gashkov S.",
      authorLink: "",
      author2: locale == 'ru' ? "Карачаков Е.М." : "Karachakov E.",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Начинает петь обычно внутри густого кустарника, постепенно передвигаясь к его вершине. Часто, особенно до образования пары, поет по ночам.\nСезон массового пения длится с прилета и до конца июня – середины июля.\nНа втором плане сорока, рябинник, глухая кукушка.\nЗапись сделана 31.05.2004 в северных окр. Томска в сосновом бору с густым подлеском из черемухи."
          : "The main period of singing lasts from arrival until the end of June or mid-July.\nRecorded on the 31st of May 2004 in the north of Tomsk (pine forest with bird cherry growth). Background species: Pica pica, Turdus pilaris, Cuculus saturatus."),
  BirdDataModel(
      name: locale == 'ru' ? "Седоголовая овсянка" : "Black-faced bunting",
      latin: 'Emberiza spodocephala',
      family: locale == 'ru' ? "Овсянковые" : "Emberizidae",
      imageUrl: 'emberiza_spodocephala',
      desc: locale == 'ru'
          ? "Перелетный вид.\nВеличиной несколько меньше воробья.\nПрилетает, когда распустилась листва на деревьях. В окр. Томска появляется во второй половине мая.\nПтица лесо-полевого ландшафта. Заселяет кустарниковые заросли среди пойменных лесов. Редкий вид, у которого в наших местах проходит западная граница ареала. Распространение четко не очерчено, чаще встречается на юге и востоке области.\nГнездо устраивает на земле или невысоко на кустарнике, стеблях трав.\nСедоголовую овсянку нетрудно узнать, если удалось её рассмотреть. Определить данный вид по песне несколько сложнее, но только тем, кто еще недостаточно уверенно выделяет новые звуки, сравнивая их с набором легко узнаваемых песен, принадлежащих фоновым видам."
          : "Migratory species.\nSize is a bit less than a sparrow.\nArrives after the foliage expansion. In Tomsk outskirts appears at the second half of May.\nBird of open woody territories. Inhabits woodland edges and bushy areas among floodplain forests. Rare species in our region. It is more often seen in the south and east of the region.",
      arrival: 50,
      month: [5],
      area: [1],
      icon: '',
      count: 1,
      source: "",
      author: locale == 'ru' ? "Гашков С.И." : "Gashkov S.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Поет, сидя в кронах и на вершинах кустарников, реже деревьев.\nСезон пения длится с конца мая до середины июля.\nНа втором плане пеночка-весничка, серая славка, садовая камышевка, серая ворона, клест-еловик.\nЗапись сделана 2.06.2002 в южных окр. Томска."
          : "Sings from the end of May until mid-July.\nRecorded on the 2d of June 2002 in the southern Tomsk suburbs (thin deciduous woodland). Background species: Phylloscopus trochilus, Sylvia communis, Acrocephalus dumetorum, Corvus cornix, Loxia curvirostra."),
  BirdDataModel(
      name: locale == 'ru' ? "Белопоясный стриж" : "Pacific swift",
      latin: 'Apus pacificus',
      family: locale == 'ru' ? "Стрижиные" : "Apodidae",
      imageUrl: 'apus_pacificus',
      desc: locale == 'ru'
          ? "Перелетный вид.\nВеличиной со скворца, но сравнение не очень наглядно, т.к. птицу видим всегда в полете.\nПрилетает, поздней весной. В окрестностях Томска появляется в третьей декаде мая – начале июня.\nПтица открытых пространств. В естественных условиях выбирает для колонии приречные скалы. Гнездится и в городах, где вместо скал использует многоэтажные дома. Обычный, многочисленный на юге области вид. Севернее Томска и Северска не встречается.\nГнездо устраивает в нишах скал или в городе различные вентиляционные ниши в крышах многожтажных зданий и подобных местах. Отмечено гнездование и в дуплах как у черного стрижа.\nЛегко узнаваем по стремительному полету на крыльях по форме напоминающих натянутый лук. Во время пикирования становиться заметным белый пояс на пояснице птицы, за что она и получила свое название."
          : "Migratory species. \nArrives late in spring. In Tomsk and its suburbs appears in the final third of May or early June.\nA bird of open areas whose natural breeding habitat is in colonies on cliffy river banks. Also breeds in cities under the roofs and in cavities of multistoried buildings. Common species, abundant in the south of the region.",
      arrival: 51,
      month: [6],
      area: [4],
      icon: '',
      count: 1,
      source: "",
      author: locale == 'ru' ? "Гашков С.И." : "Gashkov S.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Голосят стрижи постоянно с прилета и до отлета в конце августа.\nНа втором плане мухоловка-пеструшка, полевой воробей, большая синица.\nЗапись сделана 9.06.2004 возле главного корпуса Томского госуниверситета в вечернее время."
          : "Voice can be heard constantly during period from arrival to August. Sound was recorded on the 9th of June 2004 in the evening at the main building of Tomsk State University. Background species: Ficedula hypoleuca, Passer montanus, Parus major."),
  BirdDataModel(
      name: locale == 'ru' ? "Дубровник" : "Yellow-breasted bunting",
      latin: 'Emberiza aureola',
      family: locale == 'ru' ? "Овсянковые" : "Emberizidae",
      imageUrl: 'emberiza_aureola',
      desc: locale == 'ru'
          ? "Перелетный вид.\nВеличиной с воробья.\nПрилетает, когда распустилась листва на деревьях, а на лугах начинают отрастать многолетние травы. В окрестностях Томска появляется во второй половине мая.\nПтица открытых пространств. Заселяет пойменные луга, пустыри, болота, поросшие кустарником и высокотравьем. Обычный, местами фоновый вид, распространенный по всей области.\nГнездо устраивает на земле.\nЛегко узнаваемая овсянка как по внешнему виду, так и по песне, особенно если учесть приуроченность вида к открытым биотопам."
          : "Migratory species.\nThe size of a sparrow.\nIt arrives when the foliage on the trees has blossomed and perennial grasses begin to grow in the meadows. In the vicinity of Tomsk it appears in the second half of May.\nBird of open spaces. Inhabits floodplain meadows, wastelands, swamps, overgrown with bushes and tall grasses. A common, sometimes background species, distributed throughout the area.\nThe nest is made on the ground.\nThe bunting is easily recognizable both in appearance and in song, especially considering the species’ affinity to open biotopes.",
      arrival: 52,
      month: [6],
      area: [2],
      icon: '',
      count: 2,
      source: "",
      author: locale == 'ru' ? "Гашков С.И." : "Gashkov S.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Поет, сидя на высоком стебле травы или вершине кустарника.\nСезон пения длится с конца мая до середины июля.\nНа втором плане обыкновенная чечевица, садовая камышевка.\nЗапись сделана 12.06.2003 в окр. Томска близ с. Коларово."
          : "Sings while sitting on a tall stem of grass or the top of a bush.\nThe singing season lasts from late May to mid-July.\nIn the background are common lentils and garden warblers.\nRecorded on June 12, 2003 near Tomsk."),
  BirdDataModel(
      name: locale == 'ru' ? "Пятнистый сверчок" : "Lanceolated warbler",
      latin: 'Locustella lanceolata',
      family: locale == 'ru' ? "Сверчковые" : "Locustellidae",
      imageUrl: 'locustella_lanceolata',
      desc: locale == 'ru'
          ? "Перелетный вид.\nВеличиной меньше воробья, примерно вполовину.\nПрилетает, когда лето вступает в свои права. В окр. Томска появляется в начале июня.\nЛесо-луговой вид. Заселяет разреженные лесные и кустарниковые массивы с высокотравьем в поймах рек, на вырубках и гарях. Обычный вид, распространенный по всей области.\nГнездо устраивает на земле.\nНа каком бы фоне не зазвучал этот громкий голос, сразу становится очевидным участие в лесном хоре сверчка. Совсем непросто разобраться, какой из двух близких наших видов сверчков поёт - пятнистый или обыкновенный, однако вполне достаточно знать, что это сверчок - небольшая скромно окрашенная с удлиненным ступенчатым хвостом птичка, метко получившая свое название за сходство издаваемых звуков с одноименными представителями насекомых."
          : "Migratory species.\nSize less than a sparrow\nArrives at the onset of true summer. Appears in the Tomsk area in the beginning of June.\nInhabits thin shrubby woodlands with tall grass in floodplains. Also in cleared or burnt forest. Common and region-wide. \n Nest on ground.",
      arrival: 53,
      month: [6],
      area: [2],
      icon: '',
      count: 1,
      source: "",
      author: locale == 'ru' ? "Самодуров К.В." : "Samodurov K.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Петь начинает в глубине кустарника или в куртине травы, постепенно выдвигаясь наверх. В сумерках и ночью поет даже активнее, чем днем.\nСезон пения длится с начала июня до середины-конца июля.\nНа втором плане желтая трясогузка, обыкновенная чечевица, бурая пеночка, лесной дупель, пеночка-весничка, обыкновенная кукушка./nЗапись сделана 14.06.2001 в окр. Томска близ п. Кисловка на заболоченном участке поймы."
          : "Sings in the dense bushes or in the grass. More active during twilight and night.\nSings from early June until mid- or end of July.\nRecorded on 14 June 2001 near Tomsk at the village of Kislovka (marshy floodplain grassland). Background species: Motacilla flava, Carpodacus erythrinus, Phylloscopus fuscatus, Gallinago megala, Phylloscopus trochilus, Cuculus canorus."),
  BirdDataModel(
      name: locale == 'ru' ? "Бурая пеночка" : "Dusky warbler",
      latin: 'Phylloscopus fuscatus',
      family: locale == 'ru' ? "Пеночковые" : "Phylloscopidae",
      imageUrl: 'phylloscopus_fuscatus',
      desc: locale == 'ru'
          ? "Перелетный вид.\nМеньше воробья почти вполовину.\nПрилетает, когда распустилась листва на деревьях, а на лугах поднимаются травы. В окрестностях Томска появляется в конце мая начале июня.\nПтица открытых пространств. Заселяет пойменные луга, окраины болот, поросших кустарником, ивовые пойменные заросли. Обычный вид в оптимальных биотопах на юге, к северу и западу области становится более редким.\nГнездо устраивает в кустарниках невысоко, либо на земле.\nКак и всех пеночек, узнавать птицу следует по песне с учетом биотопа. На фоне обычных видов ее песня заостряет на себе внимание, т.к. не относится к привычным фоновым звукам луговых пространств."
          : "Migratory species.\nSize is less than a sparrow.\nArrives when the leaves have appeared and the perennial grasses in the grasslands are fully grown. Appears in the Tomsk area at the end of May, early June.\nInhabits floodplain grasslands, shrubby borders of marshes, willow shrubs in floodplains. In optimal habitat in the south a common species; rarer in the north and west of the region.",
      arrival: 54,
      month: [6],
      area: [2],
      icon: '',
      count: 1,
      source: "",
      author: locale == 'ru' ? "Самодуров К.В." : "Samodurov K.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Поет, находясь в кустарнике, реже на его вершине.\nСезон пения длится с конца мая до конца июля.\nНа втором плане серая славка.\nЗапись сделана 28.06.2000 в пойме Томи, близ базы отдыха «Томь»."
          : "Sings from the end of May until the end of July.\nRecorded 28 June 2000 at 30 km south of Tomsk in the floodplain of the river Tom (willow bushes). Background species: Sylvia communis."),
  BirdDataModel(
      name: locale == 'ru' ? "Певчий сверчок" : "Pallas's grasshopper warbler",
      latin: 'Helopsaltes certhiola',
      family: locale == 'ru' ? "Сверчковые" : "Locustellidae",
      imageUrl: 'helopsaltes_certhiola',
      desc: locale == 'ru'
          ? "Перелетный вид.\nВеличиной меньше воробья, примерно вполовину.\nПрилетает, когда лето вступает в свои права. В окрестностях Томска появляется к середине июня.\nПредпочитает открытые пространства сырых лугов, кочкарники осоки по руслам рек и озер после спада весеннего паводка, различные травянистые и тростниковые болота. Обычный вид, распространенный по всей области.\nГнездо устраивает среди густой травы, чаще на кочках осоки."
          : "Migratory species.\nSize is less than a sparrow.\nArrives at the onset of summer. Appears in the Tomsk area mid-June.\nPrefers open terrain consisting of moist grasslands, wet sedge meadows along river gullies and at lake fringes after the spring high waters have receded, and in various grassy and reedy marshes. Common and region-wide.",
      arrival: 55,
      month: [6],
      area: [2],
      icon: '',
      count: 1,
      source: "",
      author: locale == 'ru' ? "Гашков С.И." : "Gashkov S.",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "На втором плане пеночка-весничка, желтая трясогузка, белая трясогузка."
          : "Sings from June until its departure at the end of August, early September.\nRecorded 23 June 2004 south of Tomsk (sedge along the river). Background species: Phylloscopus trochilus, Motacilla flava, Motacilla alba."),
  BirdDataModel(
      name: locale == 'ru' ? "Синий соловей" : "Siberian blue robin",
      latin: 'Luscinia cyane',
      family: locale == 'ru' ? "Мухоловковые" : "Muscicapidae",
      imageUrl: 'luscinia_cyane',
      desc: locale == 'ru'
          ? "Перелетный вид.\nВеличиной немного меньше воробья.\nПрилетает поздно, когда сформировался летний пейзаж. В окрестностях Томска появляется не раньше первой декады июня.\nЛесной вид, населяющий хвойные и смешанные леса с хорошим подлеском. Любит захламленные участки леса и неровности рельефа. Единично и не каждый год гнездится в парках города, где сохранен подлесок. В южных районах области обычен, к северу более редок.\nГнездится на земле.\nУзнать контрастного бело-синего солиста нетрудно, если рассмотреть его в бинокль. По-другому разглядеть эту скрытную птицу, да еще в верхнем ярусе леса, обычно не удается. По голосу сделать это гораздо проще. Несколько чередующихся громких, но коротких куплетов разделены более длинными паузами с характерным негромким поцикиванием, что делает его песню легко узнаваемой."
          : "Migratory species. \nSize is a bit less than a sparrow,\nReturns from wintering late. Does not appear in Tomsk and its suburbs before June. Inhabits coniferous and mixed forests with rich undergrowth, with a preference for denser, older forests and undulated terrain. A few pairs breed irregularly in city parks. Common in the south of the region, less common in the north.",
      arrival: 56,
      month: [6],
      area: [1],
      icon: '',
      count: 2,
      source: "",
      author: locale == 'ru' ? "Самодуров К.В." : "Samodurov K",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Поет обычно в верхнем ярусе, сидя на темнохвойных деревьях.\nСезон пения длится около месяца, с прилета и до конца июня – начала июля.\nНа втором плане пеночка-весничка, сорока, перевозчик, садовая камышевка.\nЗапись сделана 15.06.2002 в окр. Томска, близ п. Кисловка, на кедрово-пихтовом участке пойменного леса."
          : "Sings for about one month from arrival until the end of June - early July.\nRecorded on the 15th of June 2002 Kislovka village near Tomsk (coniferous forest in the river valley). Background species: Phylloscopus trochilus, Pica pica, Actitis hypoleucos, Acrocephalus dumetorum."),
  BirdDataModel(
      name: locale == 'ru' ? "Толстоклювая пеночка" : "Radde's warbler",
      latin: 'Phylloscopus schwarzi',
      family: locale == 'ru' ? "Пеночковые" : "Phylloscopidae",
      imageUrl: 'phylloscopus_schwarzi',
      desc: locale == 'ru'
          ? "Перелетный вид.\nМеньше воробья, примерно вполовину.\nПрилетает, когда полностью распустилась листва на деревьях. В окрестностях Томска появляется в первой декаде июня.\nЛесной вид, предпочитающий селиться в разнообразных осветленных участках леса с подлеском, по просекам, зарастающим вырубкам и гарям. Распространен вид по всей области, но более обычен на правобережье Томи и в среднем течении Чулыма.\nГнездится невысоко над землей, располагая гнездо среди кустарников или в густом высокотравье.\nОпределить птицу по внешнему виду сложно из-за большого внешнего сходства с другими птицами из сем. Славковых. По голосу её нужно отделять от песни синего соловья по преобладанию трелей в песне и от бурой пеночки по громкости и характеру трели."
          : "Migratory species.\nSize is less than a sparrow\nArrives after the full appearance of leaves. Appears in the Tomsk area in the first third of June.\nPrefers various thin forest and woodland areas with bushy understorey, along fire breaks, in overgrown forest clearings and burnt forests. Common and region-wide. Especially common along the eastern border of the river Tom.",
      arrival: 57,
      month: [6],
      area: [1],
      icon: '',
      count: 1,
      source: "",
      author: locale == 'ru' ? "Самодуров К.В." : "Samodurov K",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Поет обычно в верхней части деревьев.\nСезон пения длится с июня и примерно до середины июля.\nНа втором плане обыкновенная овсянка, садовая славка, зеленушка, обыкновенная кукушка, клест-еловик.\nЗапись сделана 30.06.2002 в Томском р-не, в окр. станции Межениновка, близ пос. Смена в смешанном пойменном участке леса."
          : "Sings from June until approximately mid-July.\nRecorded 30 June 2002 east of Tomsk near the railway station of Mezjeninovka (deciduous woodland). Background species: Emberiza citrinella, Sylvia borin, Chloris chloris, Cuculus canorus, Loxia curvirostra."),
  BirdDataModel(
      name: locale == 'ru' ? "Корольковая пеночка" : "Pallas's leaf warbler",
      latin: 'Phylloscopus proregulus',
      family: locale == 'ru' ? "Пеночковые" : "Phylloscopidae",
      imageUrl: 'phylloscopus_proregulus',
      desc: locale == 'ru'
          ? "Перелетный вид.\nНамного меньше воробья, вместе с желтоголовым корольком ее можно считать одной из самых мелких наших птиц (4,7-7 гр.).\nПрилетает, когда полностью распустилась листва на деревьях. В окрестностях Томска появляется в конце мая - начале июня.\nЛесной вид, предпочитающий селиться в темнохвойных смешанных участках леса. Распространен с юга области до Кеть-Тымского междуречья.\nГнездо строит на дереве, часто очень высоко в темнохвойных породах.\nОпределить птицу по внешнему виду можно только с близкого расстояния или в бинокль. Это единственный вид пеночек у которой через голову проходит желтая полоса как у королька. В остальных случаях определение возможно только по голосу."
          : "Migratory species.\nSize is less than a sparrow.\nArrives after the full appearance of leaves. Appears in the Tomsk area at the end of May, early June.\nPrefers dark/shady coniferous plots in mixed forest. It can be distinguished of warblers with yellow line like goldcrest.",
      arrival: 58,
      month: [6],
      area: [1],
      icon: '',
      count: 1,
      source: "",
      author: locale == 'ru' ? "Самодуров К.В." : "Samodurov K",
      authorLink: "",
      author2: "",
      authorLink2: "",
      audioDesc: locale == 'ru'
          ? "Поет обычно в верхней части деревьев.\nСезон пения длится с июня и до отлета в сентябре.\nЗапись сделана 9.07.2001 в окр. Томска, близ п. Аркашово, в пойме Ушайки среди пихтового участка леса."
          : "Sings from June until the departure in September.\nRecorded 9 July 2001 east of Tomsk near the village of Arkashovo (shady coniferous forest).")
];
