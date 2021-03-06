//
//  DataManager.swift
//  BoardGamesShop
//
//  Created by Ivan on 25.03.2022.
//

import Foundation

class DataManager {
    static let shared = [
        DataBase(name: .party,
                 products: [
                    Product(
                        id: 1,
                        name: "Манчкин: Гравити Фолз",
                            tagline: "Чуть западнее странного",
                            description: "Что ж, манчкины, после всех ваших приключений вы, наконец, достигли самого странного места во вселенной. Здесь творятся очень и очень странные дела! То и дело соприкасаются вселенные и измерения, по лесам бегают мутанты, волшебные гномы и доисторические существа, спецагенты ФБР расследуют магические происшествия и перестреливаются с зомби... Короче говоря, добро пожаловать в Гравити Фолз! Ведь именно здесь пройдут ваши летние каникулы.",
                            image: "MunchkinGravityFalls",
                            price: 1490,
                            manufacturer: .hobbyWorld,
                            equipmens: [
                                Equipment(name: "168 карт"),
                                Equipment(name: "10 планшетов"),
                                Equipment(name: "Кубик"),
                                Equipment(name: "Правила игры"),
                                Equipment(name: "Размер коробки: 235x157x47 мм"),
                                Equipment(name: "Размер карт: 56x87 мм (рекомендуются протекторы из данного раздела, 168 шт.)"),
                                Equipment(name: "Вес: 0.4 кг")
                                
                            ],
                            feedbacks: [],
                        category: .party,
                            playerAge: 12,
                            roundTime: 30,
                            playerCountMin: 3,
                            playerCountMax: 6,
                            releaseYear: 2022
                           ),
                    Product(id: 2,
                            name: "Неудержимые единорожки 18+",
                            tagline: "Взрослый ржач",
                            description: "Если вы решили приобрести одну из самых популярных настольных игр, чтобы поиграть в неё в кругу семьи, рекомендуем ознакомиться с оригинальной версией Неудержимых единорожек для игроков от 12 лет. Данное же издание изобилует смелыми, откровенными, а порой и непотребными иллюстрациями и шутками и предназначено только для взрослой и, желательно, морально закалённой аудитории! ",
                            image: "NeuderzhimyeEdinorozhki",
                            price: 990,
                            manufacturer: .hobbyWorld,
                            equipmens: [
                                Equipment(name: "135 карт"),
                                Equipment(name: "Правила игры"),
                                Equipment(name: "Размер коробки: 165x114x41 мм"),
                                Equipment(name: "Размер карт: 63x88 мм (рекомендуются протекторы из данного раздела, 135 шт.)"),
                                Equipment(name: "Вес: 0.34 кг"),
                                
                            ],
                            feedbacks: [],
                            category: .party,
                            playerAge: 18,
                            roundTime: 30,
                            playerCountMin: 2,
                            playerCountMax: 8,
                            releaseYear: 2021
                           ),
                    Product(id: 3,
                            name: "Бункер",
                            tagline: "Докажите свою полезность, чтобы выжить",
                            description: "Случилось страшное: глобальная катастрофа, конец света, апокалипсис – кому как больше нравится. Чтобы выжить, вам срочно нужно попасть в бункер, но в вашей группе слишком много людей, на всех внутри не хватит ни провизии, ни места. А значит кому-то придётся остаться снаружи и пытаться выжить там. Вы же не хотите скитаться по отравленным пустошам в поисках глотка воды, которая ещё и может оказаться отравленной или радиоактивной? Тогда постарайтесь убедить остальных, что без вас им никак не выжить! Внутрь попадут только самые полезные члены группы. Вы получаете случайный набор карт, который определяет ваш пол, возраст, состояние здоровья, профессию и другие черты, а ваша задача – убедить остальных, что этот набор характеристик весьма и весьма эффективен. Как убедить остальных, что ваше гомеопатическое хобби принесёт им пользу? Попробуйте и узнаете, а заодно и прокачаете навык ораторского мастерства!",
                            image: "Bunker",
                            price: 2990,
                            manufacturer: .economicus,
                            equipmens: [
                                Equipment(name: "50 карт профессии"),
                                Equipment(name: "30 карт биологии"),
                                Equipment(name: "30 карт здоровья"),
                                Equipment(name: "30 карт хобби"),
                                Equipment(name: "30 карт багажа"),
                                Equipment(name: "50 карт фактов"),
                                Equipment(name: "30 карт особых условий"),
                                Equipment(name: "20 карт катастроф"),
                                Equipment(name: "11 карт угроз"),
                                Equipment(name: "30 карт бункера"),
                                Equipment(name: "120 бланков голосования"),
                                Equipment(name: "Размер коробки: 210x160x60 мм"),
                                Equipment(name: "Вес: 0.73 кг"),
                            ],
                            feedbacks: [],
                            category: .party,
                            playerAge: 18,
                            roundTime: 60,
                            playerCountMin: 4,
                            playerCountMax: 16,
                            releaseYear: 2020
                           ),
                    Product(id: 4,
                            name: "Бэнг!",
                            tagline: "Настольная перестрелка на Диком Западе",
                            description: "Это карточная игра, которая с лёгкостью перенесёт Вас в классический спагетти-вестерн, с салунами, индейцами и обязательными перестрелками!",
                            image: "Bang",
                            price: 990,
                            manufacturer: .hobbyWorld,
                            equipmens: [
                            Equipment(name: "7 карт ролей"),
                            Equipment(name: "16 карт персонажей"),
                            Equipment(name: "80 игровых карт"),
                            Equipment(name: "7 памяток"),
                            Equipment(name: "7 планшетов"),
                            Equipment(name: "30 жетонов патронов"),
                            Equipment(name: "Правила игры")
                            ],
                            feedbacks: [],
                            category: .party,
                            playerAge: 12,
                            roundTime: 40,
                            playerCountMin: 4,
                            playerCountMax: 7,
                            releaseYear: 2012),
                    Product(id: 5,
                            name: "Маскарад сказок",
                            tagline: "Праздника ждал я давно такого...",
                            description: "В настольной игре \"Маскарад сказок\" вы будете играть за обитателей Леса сказок, которым посчастливилось оказаться в числе приглашённых на бал-маскарад в замке Чудовища. Хозяин замка вырастил по случаю торжества прекрасные розы – именно они станут призами в игре, придуманной Чудовищем специально, чтобы развлечь вас.           В каждом из раундов игры вы должны будете догадаться, кто остальные участники, и при этом не позволить угадать, кем являетесь вы. В этом вам помогут карты предметов: передавайте их другим игрокам, чтобы заставить их дать вам подсказку, или оставляйте у себя, чтобы собрать выигрышную комбинацию. За каждого разоблачённого соперника вы будете получать жетон розы, а если вы останетесь единственным неузнанным гостем, то получите жетон награды текущего раунда. Победителем игры становится игрок, собравший наибольшее количество жетонов роз.",
                            image: "Maskarad_Skazok",
                            price: 1990,
                            manufacturer: .hobbyWorld,
                            equipmens: [
                            Equipment(name: "")
                            ],
                            feedbacks: [],
                            category: .party,
                            playerAge: 8,
                            roundTime: 40,
                            playerCountMin: 2,
                            playerCountMax: 5,
                            releaseYear: 2020)
                 ]),
        DataBase(name: .qizzes,
                 products: [
                    Product(id: 6,
                            name: "Что? Где? Когда?",
                            tagline: "Добро пожаловать в клуб!",
                            description: "Сегодня замечательный вечер – за игровым столом собралась отличная компания, готовая проявить себя в мозговом штурме в борьбе за победу, а значит, мы начинаем очередную игру серии 'Что? Где? Когда?' текущего года!",
                            image: "ChtoGdeKogda",
                            price: 1990,
                            manufacturer: .zvezda,
                            equipmens: [
                                Equipment(name: "Игровое поле"),
                                Equipment(name: "110 карточек с вопросами"),
                                Equipment(name: "Волчок"),
                                Equipment(name: "Песочные часы"),
                                Equipment(name: "Маркер"),
                                Equipment(name: "Кубик D6"),
                                Equipment(name: "Правила игры"),
                                Equipment(name: "Размер коробки: 330x300x60 мм"),
                                Equipment(name: "Вес: 0.925 кг"),
                            ],
                            feedbacks: [],
                            category: .qizzes,
                            playerAge: 12,
                            roundTime: 60,
                            playerCountMin: 3,
                            playerCountMax: 7,
                            releaseYear: 2019
                           ),
                    Product(id: 7,
                            name: "Виктроллина",
                            tagline: "Вопросы с подвохом!",
                            description: "Уважаемые знатоки, добро пожаловать на первую в мире виктроллину! Не сомневаемся, вы эксперты по всему на свете, от географии и истории до нюансов поп-культуры. Поэтому отвечать вам придется с полным ртом воды! Или слушать вопрос, который ведущий будет кричать из другой комнаты. Или пропевать его голосом Лепса. Вариантов много! Справитесь? Ну-ну... Впрочем, не всё так грустно, ведь вы тоже сможете побыть в роли троллей и помешать команде соперников блеснуть эрудицией.",
                            image: "Viktrollina",
                            price: 990,
                            manufacturer: .magellan,
                            equipmens: [
                                Equipment(name: "Игровое поле"),
                                Equipment(name: "2 фишки команд"),
                                Equipment(name: "5 памяток для игроков"),
                                Equipment(name: "52 карты действий"),
                                Equipment(name: "70 карт вопросов"),
                                Equipment(name: "Правила игры"),
                                Equipment(name: "Размер коробки: 204х204х47 мм"),
                                Equipment(name: "Размер карт: 56х87 мм (рекомендуются протекторы из данной категории, 127 шт.)"),
                                Equipment(name: "Вес: 0.3 кг"),
                            ],
                            feedbacks: [],
                            category: .qizzes,
                            playerAge: 14,
                            roundTime: 45,
                            playerCountMin: 4,
                            playerCountMax: 16,
                            releaseYear: 2021
                           ),
                    Product(id: 8,
                            name: "Это Факт! Регионы России",
                            tagline: "Узнайте больше интересного о Родине",
                            description: "Третья игра из серии азартных карточных викторин 'Это Факт!'. Насколько хорошо вы разбираетесь в субъектах Российской Федерации? 'Это Факт! Регионы России' знакомит вас и ваших детей с регионами нашей необъятной родины. Численность населения, удалённость от Москвы, символы, среднегодовая температура и многое другое. Узнайте больше о матушке России!",
                            image: "EtoFakt",
                            price: 490,
                            manufacturer: .gaga,
                            equipmens: [
                                Equipment(name: "85 карт с вопросами (и ответами)"),
                                Equipment(name: "Правила игры"),
                                Equipment(name: "Размер коробки: 90х60х45 мм"),
                                Equipment(name: "Вес: 0.14 кг"),
                            ],
                            feedbacks: [],
                            category: .qizzes,
                            playerAge: 7,
                            roundTime: 10,
                            playerCountMin: 2,
                            playerCountMax: 6,
                            releaseYear: 2018
                           ),
                    Product(id: 9,
                            name: "Это нелогично! Суеверные голуби и сила благодарности",
                            tagline: "Сидят на ветке, размышляя о бытии",
                            description: "\"Это нелогично!\" – это локализация настольной игры Дэна Ариели, известного психолога и экономиста, а также научно-популярного лектора. Игра отлично подойдёт как для весёлой вечеринки (особенно вечеринки фанатов науки), так и для семейного досуга. Никакой конкуренции – игроки сообща решают, какой ответ правильный, а какой нет, делясь своими мыслями и достигая истины в дискуссии. Выберете три неправильных ответа – проиграете, а пятый правильный вариант приносит победу. Итак, какая таблетка плацебо лучше обезболивает, дешёвая или дорогая?",
                            image: "Eto_Nelogichno",
                            price: 790,
                            manufacturer: .magellan,
                            equipmens: [
                            Equipment(name: "63 двухсторонние карты"),
                            Equipment(name: "Правила игры"),
                            ],
                            feedbacks: [],
                            category: .qizzes,
                            playerAge: 12,
                            roundTime: 20,
                            playerCountMin: 2,
                            playerCountMax: 8,
                            releaseYear: 2021),
                    Product(id: 10,
                            name: "Электровикторина \"Россия\"",
                            tagline: "Как называется эта страна?",
                            description: "Испытайте свой интеллект! Электровикторина Educa – это невероятная забава прошлого века, которая прошла испытание временем и продолжает радовать и обучать людей по всему миру уже в двадцать первом веке. Она позволяет проверить ваши знания в различных областях и обучить детей новому. Принцип игры прост – выбираете вопрос и пытаетесь найти на него ответ. После того, как ответ найден, поднесите индикаторы к вопросу и ответу и, если ответ верный, то благодаря электронной схеме загорается лампочка. Играя всей семьёй, вы получите незабываемый опыт и улучшите познания в той или иной сфере.",
                            image: "Conector_Russia",
                            price: 1300,
                            manufacturer: .educa,
                            equipmens: [
                            Equipment(name: "8 больших карт с вопросами"),
                            Equipment(name: "Электронная схема для самопроверки")
                            ],
                            feedbacks: [],
                            category: .qizzes,
                            playerAge: 7,
                            roundTime: 10,
                            playerCountMin: 1,
                            playerCountMax: 99,
                            releaseYear: 2019)
                 ]),
        DataBase(name: .detective,
                 products: [
                    Product(id: 11,
                            name: "Ужас Аркхэма. Карточная игра",
                            tagline: "Столкнитесь с потаёнными страхами!",
                            description: "Нечто безумное и страшное пробуждается в небольшом городке Аркхэм. Лишь вам, в лице отважного сыщика, под силу остановить те древние и немыслимые кошмары, что в любой момент могут выплеснуться на временно тихие и спокойные улочки Аркхэма...",
                            image: "UjasArkhama",
                            price: 3490,
                            manufacturer: .hobbyWorld,
                            equipmens: [
                                Equipment(name: "Справочник"),
                                Equipment(name: "Книга сценариев"),
                                Equipment(name: "5 карт сыщиков"),
                                Equipment(name: "5 мини-карт сыщиков"),
                                Equipment(name: "110 карт сценариев"),
                                Equipment(name: "119 карт игроков"),
                                Equipment(name: "30 жетонов ресурсов"),
                                Equipment(name: "44 жетона хаоса"),
                                Equipment(name: "18 жетонов ужаса"),
                                Equipment(name: "27 жетонов ран"),
                                Equipment(name: "30 жетонов улик/безысходности"),
                                Equipment(name: "Правила игры"),
                                Equipment(name: "Размер коробки: 255х255х62 мм"),
                                Equipment(name: "Размер карт: 63x89 мм (рекомендуются протекторы из данного раздела, 234 шт.)"),
                                Equipment(name: "Размер карт: 41х63 мм (рекомендуются протекторы из данного раздела, 5 шт.)"),
                                Equipment(name: "Вес: 0.915 кг"),
                            ],
                            feedbacks: [],
                            category: .detective,
                            playerAge: 14,
                            roundTime: 120,
                            playerCountMin: 1,
                            playerCountMax: 2,
                            releaseYear: 2018
                           ),
                    Product(id: 12,
                            name: "Древний Ужас",
                            tagline: "Конец света близок!",
                            description: "Разработчики, вдохновившись атмосферой и величием 'Ужаса Аркхэма', создали настольную игру 'Древний Ужас', действие которой происходит в той же вселенной. 'Древний Ужас' – это уникальная, захватывающая настольная игра в жанре приключений, созданная специально для бесстрашных авантюристов, которые готовы бросить вызов судьбе и богам.",
                            image: "AncientHorror",
                            price: 5990,
                            manufacturer: .hobbyWorld,
                            equipmens: [
                                Equipment(name: "Игровое поле"),
                                Equipment(name: "Справочник"),
                                Equipment(name: "4 кубика"),
                                Equipment(name: "12 подставок"),
                                Equipment(name: "12 листов сыщиков"),
                                Equipment(name: "12 фишек сыщиков"),
                                Equipment(name: "4 листа Древних"),
                                Equipment(name: "303 карт"),
                                Equipment(name: "Жетоны"),
                                Equipment(name: "Правила игры"),
                                Equipment(name: "Размер коробки: 296х296х67 мм"),
                                Equipment(name: "Вес: 2.015 кг"),
                            ],
                            feedbacks: [],
                            category: .detective,
                            playerAge: 13,
                            roundTime: 280,
                            playerCountMin: 1,
                            playerCountMax: 8,
                            releaseYear: 2014
                           ),
                    Product(id: 13,
                            name: "Место преступления",
                            tagline: "Станьте величайшим детективом в мире!",
                            description: "Лондон, наши дни. Вы только что вышли из кабинета комиссара. Вам поручено расследование гибели бедолаги в Гайд-парке. Вы не новичок, но когда речь идёт о смерти, всегда становится не по себе, а в данном случае подробности преступления, откровенно настораживают...",
                            image: "MestoPrestupleniya",
                            price: 2990,
                            manufacturer: .hobbyWorld,
                            equipmens: [
                                Equipment(name: "55 карт персонажей"),
                                Equipment(name: "52 карты улик и особых предметов"),
                                Equipment(name: "4 планшета экспертов"),
                                Equipment(name: "17 планшетов районов"),
                                Equipment(name: "Поле для улик"),
                                Equipment(name: "Правила игры"),
                                Equipment(name: "Размер коробки: 298х298х71 мм"),
                                Equipment(name: "Размер карт: 63х89, 44х67 мм"),
                                Equipment(name: "Вес: 0.945 кг"),
                            ],
                            feedbacks: [],
                            category: .detective,
                            playerAge: 12,
                            roundTime: 90,
                            playerCountMin: 1,
                            playerCountMax: 4,
                            releaseYear: 2018
                           ),
                    Product(id: 14,
                            name: "Паранормальный детектив",
                            tagline: "Начинаем спиритический сеанс",
                            description: "Перед вами настольная игра для весёлой и изобретательной компании, которая не прочь пораскинуть мозгами. Участникам предстоит стать детективами и постараться не ударить в грязь лицом, распутывая дело. Произошло таинственное преступление, и что самое досадное – для его раскрытия нет практически никаких зацепок. Ни улик, ни подозреваемых – ровным счётом ничего! Остаётся лишь один метод, хоть и довольно безумный. Нужно устроить спиритический сеанс и расспросить умершего об обстоятельствах произошедшего. С помощью своих экстрасенсорных способностей и необычных приспособлений детективы будут расспрашивать призрака и пытаться разузнать как можно больше деталей его смерти. Призрак заинтересован в том, чтобы хотя бы один детектив раскрыл дело о его смерти: только так он сможет победить в игре. Победителем также станет и тот детектив, который сумеет верно ответить на 5 ключевых вопросов, касающихся смерти призрака.",
                            image: "Paranormal",
                            price: 3490,
                            manufacturer: .hobbyWorld,
                            equipmens: [
                            Equipment(name: "Игровое поле"),
                            Equipment(name: "35 карт контактов"),
                            Equipment(name: "17 карт Таро"),
                            Equipment(name: "3 призрачные карты контактов"),
                            Equipment(name: "28 карт историй"),
                            Equipment(name: "5 ширм детективов"),
                            Equipment(name: "5 планшетов детективов"),
                            Equipment(name: "Планшет призрака"),
                            Equipment(name: "Планшет призрачной бумаги"),
                            Equipment(name: "6 стираемых маркеров"),
                            Equipment(name: "2 проволочных веревки"),
                            Equipment(name: "5 указателей для спиритической доски"),
                            Equipment(name: "10 жетонов повреждений"),
                            Equipment(name: "3 жетона для приракометра"),
                            Equipment(name: "Правила игры")
                            ],
                            feedbacks: [],
                            category: .detective,
                            playerAge: 18,
                            roundTime: 45,
                            playerCountMin: 2,
                            playerCountMax: 6,
                            releaseYear: 2020),
                    Product(id: 15,
                            name: "Нуар",
                            tagline: "Погрузитесь в атмосферу криминальных драм",
                            description: "В этой игре на дедукцию и логику вам предстоит погрузиться в атмосферу криминальных драм. Бандиты располагают возможностью творить свои злодеяния, а полицейские и сыщики – выслеживать и останавливать их. Карточки ролей, определяющие способности, распределяются между персонажами случайным образом перед каждой партией, так что помните – внешность может быть обманчива.         Прячьтесь, маскируйтесь, допрашивайте, выдвигайте обвинения, и истина откроется вам. Какой бы неожиданной и горькой она ни была...",
                            image: "Nuar",
                            price: 1190,
                            manufacturer: .gaga,
                            equipmens: [
                            Equipment(name: "50 карт подозреваемых"),
                            Equipment(name: "50 карт доказательств"),
                            Equipment(name: "35 карт принадлежности"),
                            Equipment(name: "30 жетонов"),
                            Equipment(name: "Правила игры")
                            ],
                            feedbacks: [],
                            category: .detective,
                            playerAge: 13,
                            roundTime: 60,
                            playerCountMin: 2,
                            playerCountMax: 9,
                            releaseYear: 2016)
                 ]),
        DataBase(name: .children,
                 products: [
                    Product(id: 16,
                            name: "Jumanji",
                            tagline: "Испытание для смельчаков!",
                            description: "Настольная игра 'Джуманджи' создана на основе одноименного фильма 1995-го года. В нём героям попадает в руки магическая игра, которая стирает грань между реальностью и полным опасностей миром 'Джуманджи'. Свирепые львы, разъяренные носороги, зубастые крокодилы и другие хищные животные встретятся на пути всякого, кто осмелится начать игру.",
                            image: "Jumanji",
                            price: 2990,
                            manufacturer: .spinMaster,
                            equipmens: [
                                Equipment(name: "Игровое поле"),
                                Equipment(name: "Декодер"),
                                Equipment(name: "100 карт испытаний"),
                                Equipment(name: "4 фигурки носорога"),
                                Equipment(name: "12 жетонов жизни"),
                                Equipment(name: "2 кубика"),
                                Equipment(name: "4 кубика спасения"),
                                Equipment(name: "Песочные часы"),
                                Equipment(name: "Правила игры"),
                                Equipment(name: "Вес: 0.9 кг"),
                            ],
                            feedbacks: [],
                            category: .children,
                            playerAge: 8,
                            roundTime: 60,
                            playerCountMin: 2,
                            playerCountMax: 4,
                            releaseYear: 2022
                           ),
                    Product(id: 17,
                            name: "Утиные истории: Улётное приключение",
                            tagline: "Не давайте рулить Дональду!",
                            description: "Неугомонный миллиардер Скрудж МакДак снова ввязался в приключенческую авантюру! Шутка ли – на горизонте маячит реальный шанс заполучить редчайший артефакт! И, конечно же, богатенький селезень не может всё сделать в одиночку – всё утиное семейство, прекрасно знакомое всем нам ещё с детства, – в сборе и готово отправляться в полёт! Правда, не всем по душе истинная цель экспедиции, так что придётся как-то договариваться между собой, а иначе, как известно, 'когда в товарищах согласья нет, на лад их дело не пойдёт'.",
                            image: "UtinyeIstorii",
                            price: 490,
                            manufacturer: .hobbyWorld,
                            equipmens: [
                                Equipment(name: "56 карт приключений"),
                                Equipment(name: "8 карт тайных целей"),
                                Equipment(name: "8 карт чистого неба"),
                                Equipment(name: "Карта штурвала"),
                                Equipment(name: "Правила игры"),
                                Equipment(name: "Размер коробки: 150x105x37 мм"),
                                Equipment(name: "Размер карт: 63x89 мм (рекомендуются протекторы из данного раздела, 73 шт.)"),
                                Equipment(name: "Вес: 0.16 кг"),
                            ],
                            feedbacks: [],
                            category: .children,
                            playerAge: 8,
                            roundTime: 20,
                            playerCountMin: 3,
                            playerCountMax: 7,
                            releaseYear: 2020
                           ),
                    Product(id: 18,
                            name: "Аладдин",
                            tagline: "Здесь чары и месть, отвага и честь!",
                            description: "Араааабская ноооочь! Помните, как там дальше, добрые путники? Что-то про волшебный Восток, да? А пока вы про себя напеваете знакомый мотив, мы приветствуем вас в славном городе Аграбе, полном несметных сокровищ и чудовищных опасностей! И песка, песка тут тоже очень много...",
                            image: "Aladdin",
                            price: 690,
                            manufacturer: .hobbyWorld,
                            equipmens: [
                                Equipment(name: "36 карт"),
                                Equipment(name: "6 фишек игроков"),
                                Equipment(name: "90 жетонов сокровищ"),
                                Equipment(name: "2 игровых поля"),
                                Equipment(name: "Правила игры"),
                                Equipment(name: "Размер коробки: 204x204x47 мм"),
                                Equipment(name: "Размер карт: 63x89 мм"),
                                Equipment(name: "Вес: 0.314 кг"),
                            ],
                            feedbacks: [],
                            category: .children,
                            playerAge: 6,
                            roundTime: 20,
                            playerCountMin: 2,
                            playerCountMax: 6,
                            releaseYear: 2019
                           ),
                    Product(id: 19,
                            name: "Мандалорец: Грогу и лягушачьи бега",
                            tagline: "Догонялки по кочкам",
                            description: "Корабль Мандалорца прибыл на планету Сорган. Она со своим лесным ландшафтом могла бы стать прекрасным местом для отдыха, если бы не постоянные нападения рейдеров на поселение местных жителей. Чтобы исправить ситуацию, Мандалорец начинает обучать жителей деревни защищать свои дома. Малыш Грогу тоже не теряет время зря – он отдыхает на ферме, играет с местными детьми и бегает за лягушками. И вы тоже можете присоединиться к его развлечениям! Устройте лягушачьи бега, гоняйтесь вместе с Грогу вокруг пруда и постарайтесь угадать, какие лягушки станут победителями этих гонок!",
                            image: "Grogu",
                            price: 990,
                            manufacturer: .hobbyWorld,
                            equipmens: [
                            Equipment(name: "Игровое поле"),
                            Equipment(name: "Фишка Грогу"),
                            Equipment(name: "12 фишек лягушек"),
                            Equipment(name: "8 карт целей"),
                            Equipment(name: "34 карты прыжков"),
                            Equipment(name: "Правила игры")
                            ],
                            feedbacks: [],
                            category: .children,
                            playerAge: 6,
                            roundTime: 15,
                            playerCountMin: 2,
                            playerCountMax: 4,
                            releaseYear: 2022),
                    Product(id: 20,
                            name: "Шакал: Архипелаг",
                            tagline: "Лучшее место для клада - необитаемый остров",
                            description: "Великолепная стратегия подойдёт также для самых юных игроков – правила игры весьма просты, так что вы сможете отправиться за кладом всей семьёй!",
                            image: "Shakal",
                            price: 2490,
                            manufacturer: .magellan,
                            equipmens: [
                            Equipment(name: "66 клеток с приключениями"),
                            Equipment(name: "4 квадратные клетки кораблей"),
                            Equipment(name: "4 пиратские команды"),
                            Equipment(name: "19 монет"),
                            Equipment(name: "12 карт способностей"),
                            Equipment(name: "5 бутылок с посланиями"),
                            Equipment(name: "10 карт с задачами для одиночной игры"),
                            Equipment(name: "Наклейки для обозначения способностей пиратов"),
                            Equipment(name: "Фишка миссионера"),
                            Equipment(name: "Шестигранный кубик"),
                            Equipment(name: "Правила игры")
                            ],
                            feedbacks: [],
                            category: .children,
                            playerAge: 6,
                            roundTime: 120,
                            playerCountMin: 1,
                            playerCountMax: 4,
                            releaseYear: 2018)
                 ])
    ]
    
    private init() {}
}
