//
//  YouTubeService.Methods+Mocks.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import Moya

extension YouTubeService.Methods {
    
    enum MockKey: String, MockKeyType {
        case trends
        case search
        case channels
        case videos
    }
    
    var mockKey: MockKey? {
        switch self {
        case .trends: return .trends
        case .search: return .search
        case .channels: return .channels
        case .videos: return .videos
        }
    }
}

extension YouTubeService.Methods.MockKey : MockSampleData {
    var sampleData: String? {
        switch self {
        case .trends: return
            """
            {
              "etag" : "\"j6xRRd8dTPVVptg711_CSPADRfg\\/GVfi0d_QzF1jlV9hZiawyx24VNM\"",
              "kind" : "youtube#videoListResponse",
              "items" : [
                {
                  "etag" : "\"j6xRRd8dTPVVptg711_CSPADRfg\\/L5EikuoScOkYkazv0nkHFdNIfbI\"",
                  "kind" : "youtube#video",
                  "id" : "M6piR5Y89U0",
                  "statistics" : {
                    "favoriteCount" : "0",
                    "commentCount" : "5327",
                    "likeCount" : "61140",
                    "viewCount" : "411945",
                    "dislikeCount" : "1213"
                  },
                  "contentDetails" : {
                    "dimension" : "2d",
                    "projection" : "rectangular",
                    "caption" : "false",
                    "definition" : "hd",
                    "licensedContent" : true,
                    "duration" : "PT1H4M22S"
                  },
                  "snippet" : {
                    "thumbnails" : {
                      "standard" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/M6piR5Y89U0\\/sddefault.jpg",
                        "width" : 640,
                        "height" : 480
                      },
                      "medium" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/M6piR5Y89U0\\/mqdefault.jpg",
                        "width" : 320,
                        "height" : 180
                      },
                      "default" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/M6piR5Y89U0\\/default.jpg",
                        "width" : 120,
                        "height" : 90
                      },
                      "high" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/M6piR5Y89U0\\/hqdefault.jpg",
                        "width" : 480,
                        "height" : 360
                      },
                      "maxres" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/M6piR5Y89U0\\/maxresdefault.jpg",
                        "width" : 1280,
                        "height" : 720
                      }
                    },
                    "channelId" : "UCkbSaWqttPHTS00K0fjniTQ",
                    "title" : "Работа в магазине Магнит. Худшая работа за всю историю шоу.",
                    "publishedAt" : "2019-11-05T09:56:51.000Z",
                    "categoryId" : "22",
                    "localized" : {
                      "title" : "Работа в магазине Магнит. Худшая работа за всю историю шоу.",
                      "description" : "Бесплатная онлайн-конференция от Skillbox — https:\\/\\/clc.to\\/DJMlnA\n++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\n\nhttps:\\/\\/www.youtube.com\\/channel\\/UC8F1Xkgd3Oh22Ir-J2pYD_Q?sub_confirmation=1\nБратюнь, Джонни поможет открыть тебе свой бизнес, находи деньги у себя в городе и участвуй в розыгрыше iPhone 11 Pro 256гб https:\\/\\/www.instagram.com\\/j_bablovski\n++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\n++++++++++++++++++++++++++++++++++++++++++++++++++++++++\nВстреча в Екатиринбурге на форуме «Образование и карьера на Урале»\nhttps:\\/\\/okural.ru\n++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\n==========================================\nканал Доминика Джокера\nhttps:\\/\\/www.youtube.com\\/user\\/DominickOfficial\n==========================================\nканал Дениса Косякова\nhttps:\\/\\/www.youtube.com\\/channel\\/UClZEtNynvaBxCaq6aQtu6fA\n==========================================\nканал Кузьмы\nhttps:\\/\\/www.youtube.com\\/user\\/KuzyaMeduzya\n==========================================\nканал Юрия Хованского \nhttps:\\/\\/www.youtube.com\\/user\\/russianstandup\n==========================================\nканал группы Градусы\nhttps:\\/\\/www.youtube.com\\/user\\/Gradusy\n==========================================\nканал  группы Anacondaz\nhttps:\\/\\/www.youtube.com\\/user\\/rapanacondaz\n==========================================\nканал Славного Друже\nhttps:\\/\\/www.youtube.com\\/user\\/rukremov\n==========================================\nканал Уютный Подвальчик \nhttps:\\/\\/www.youtube.com\\/user\\/podval4ikshow\n\n==========================================\n\nБратюня! В этом выпуске AsSa расскажет все о работе в магазине магнит. Ты узнаешь все о компании Тандер. Сколько зарабатывают в продавцы в магазине Магнит.  Как тебя обманывают с ценниками. Все о штрафах просрочке и перемаркировке в Магните. Что делают с испорченной продукцией. Стоит ли работать в Магните. Почему Галицкий ушел из Магнита. Все это и многое другое про сеть общепита Бургер Кинг от канала Все работы хороши.\n\n++++++++++++++++++++++++++++++++++++++++++++++++++\nДля Донатов \n\nяндекс деньги\n4100 1712 1972 694\nPayPal\noleg-assa@mail.ru\n++++++++++++++++++++++++++++++++++++++++++++++++++\nМерч \nhttp:\\/\\/pum-pum.com\\/assa\n\n++++++++++++++++++++++++++++++++++++++++++++++++++\nНАША группа в ВК\nhttps:\\/\\/vk.com\\/vrh42\n\nИнстаграм AsSa\nhttps:\\/\\/www.instagram.com\\/olegassa\\/\n++++++++++++++++++++++++++++++++++++++++++++++++++"
                    },
                    "description" : "Бесплатная онлайн-конференция от Skillbox — https:\\/\\/clc.to\\/DJMlnA\n++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\n\nhttps:\\/\\/www.youtube.com\\/channel\\/UC8F1Xkgd3Oh22Ir-J2pYD_Q?sub_confirmation=1\nБратюнь, Джонни поможет открыть тебе свой бизнес, находи деньги у себя в городе и участвуй в розыгрыше iPhone 11 Pro 256гб https:\\/\\/www.instagram.com\\/j_bablovski\n++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\n++++++++++++++++++++++++++++++++++++++++++++++++++++++++\nВстреча в Екатиринбурге на форуме «Образование и карьера на Урале»\nhttps:\\/\\/okural.ru\n++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\n==========================================\nканал Доминика Джокера\nhttps:\\/\\/www.youtube.com\\/user\\/DominickOfficial\n==========================================\nканал Дениса Косякова\nhttps:\\/\\/www.youtube.com\\/channel\\/UClZEtNynvaBxCaq6aQtu6fA\n==========================================\nканал Кузьмы\nhttps:\\/\\/www.youtube.com\\/user\\/KuzyaMeduzya\n==========================================\nканал Юрия Хованского \nhttps:\\/\\/www.youtube.com\\/user\\/russianstandup\n==========================================\nканал группы Градусы\nhttps:\\/\\/www.youtube.com\\/user\\/Gradusy\n==========================================\nканал  группы Anacondaz\nhttps:\\/\\/www.youtube.com\\/user\\/rapanacondaz\n==========================================\nканал Славного Друже\nhttps:\\/\\/www.youtube.com\\/user\\/rukremov\n==========================================\nканал Уютный Подвальчик \nhttps:\\/\\/www.youtube.com\\/user\\/podval4ikshow\n\n==========================================\n\nБратюня! В этом выпуске AsSa расскажет все о работе в магазине магнит. Ты узнаешь все о компании Тандер. Сколько зарабатывают в продавцы в магазине Магнит.  Как тебя обманывают с ценниками. Все о штрафах просрочке и перемаркировке в Магните. Что делают с испорченной продукцией. Стоит ли работать в Магните. Почему Галицкий ушел из Магнита. Все это и многое другое про сеть общепита Бургер Кинг от канала Все работы хороши.\n\n++++++++++++++++++++++++++++++++++++++++++++++++++\nДля Донатов \n\nяндекс деньги\n4100 1712 1972 694\nPayPal\noleg-assa@mail.ru\n++++++++++++++++++++++++++++++++++++++++++++++++++\nМерч \nhttp:\\/\\/pum-pum.com\\/assa\n\n++++++++++++++++++++++++++++++++++++++++++++++++++\nНАША группа в ВК\nhttps:\\/\\/vk.com\\/vrh42\n\nИнстаграм AsSa\nhttps:\\/\\/www.instagram.com\\/olegassa\\/\n++++++++++++++++++++++++++++++++++++++++++++++++++",
                    "liveBroadcastContent" : "none",
                    "tags" : [
                      "магнит",
                      "магазин",
                      "магазин магнит",
                      "сергей галицкий",
                      "галицкий",
                      "продавец",
                      "магнит косметик",
                      "супермаркет магнит",
                      "тандер",
                      "все работы хороши",
                      "работа",
                      "работа в москве",
                      "работа без опыта",
                      "работа для студента",
                      "бизнес",
                      "супермаркет",
                      "assa",
                      "олег асса",
                      "заработок",
                      "втб",
                      "банк втб"
                    ],
                    "channelTitle" : "Все Работы Хороши"
                  }
                },
                {
                  "etag" : "\"j6xRRd8dTPVVptg711_CSPADRfg\\/PT2fIvMbJP72HKbXNMMFYmG7N98\"",
                  "kind" : "youtube#video",
                  "id" : "7ZEp0uOSM0c",
                  "statistics" : {
                    "favoriteCount" : "0",
                    "commentCount" : "8626",
                    "likeCount" : "103362",
                    "viewCount" : "870598",
                    "dislikeCount" : "3819"
                  },
                  "contentDetails" : {
                    "dimension" : "2d",
                    "licensedContent" : false,
                    "projection" : "rectangular",
                    "regionRestriction" : {
                      "blocked" : [
                        "GB"
                      ]
                    },
                    "duration" : "PT25M29S",
                    "caption" : "false",
                    "definition" : "hd"
                  },
                  "snippet" : {
                    "thumbnails" : {
                      "standard" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/7ZEp0uOSM0c\\/sddefault.jpg",
                        "width" : 640,
                        "height" : 480
                      },
                      "medium" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/7ZEp0uOSM0c\\/mqdefault.jpg",
                        "width" : 320,
                        "height" : 180
                      },
                      "default" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/7ZEp0uOSM0c\\/default.jpg",
                        "width" : 120,
                        "height" : 90
                      },
                      "high" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/7ZEp0uOSM0c\\/hqdefault.jpg",
                        "width" : 480,
                        "height" : 360
                      },
                      "maxres" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/7ZEp0uOSM0c\\/maxresdefault.jpg",
                        "width" : 1280,
                        "height" : 720
                      }
                    },
                    "channelId" : "UCjFPu8rOAk1hleLQH6-7_Hg",
                    "title" : "EDWARD BIL НАПАЛ С ОГРОМНОЙ ШАПКОЙ \\/ ПРАНК - реакция прохожих НА МОИ ВЫХОДКИ",
                    "publishedAt" : "2019-11-05T08:19:04.000Z",
                    "categoryId" : "22",
                    "localized" : {
                      "title" : "EDWARD BIL НАПАЛ С ОГРОМНОЙ ШАПКОЙ \\/ ПРАНК - реакция прохожих НА МОИ ВЫХОДКИ",
                      "description" : "✅Хочешь дeнeг? Смотри закреплённый комментарии!\n\nПОДПИШИСЬ НА КАНАЛ: https:\\/\\/www.youtube.com\\/c\\/EdwardBilCrazyPranks?sub_confirmation=1\n____________________________________________________\n🔥Мой официальный МЕРЧ: https:\\/\\/killbilshop.com\\/\n____________________________________________________\n\nПОДПИШИСЬ на СОЦСЕТИ:\nTELEGRAM: https:\\/\\/teleg.one\\/joinchat\\/AAAAAErpUE2JD_l8FpW8Hg\nVK: https:\\/\\/vk.com\\/public168032840\n\nНа благотворительность: 5536 9137 9209 8143 (Тинькофф)\n\nВ этом топовом выпуске: реакция людей на мои выходки, сумасшедший необычный пранк, напал с огромной шапкой, надел гигантскую шляпу на прохожих людей на улице. PRANK над парнем и девушкой, развёл девушку на (ПИКАП ПРАНК). Странные и зашкварные разговоры с людьми на улице. Эдвард Бил пранк с хрюшкой над людьми в необычном образе. Благотворительность, помог автомобилисту на дороге, помог таксисту, сломалась машина - раздал деньги. \n\n\n#edwardbil #пранк #prank"
                    },
                    "description" : "✅Хочешь дeнeг? Смотри закреплённый комментарии!\n\nПОДПИШИСЬ НА КАНАЛ: https:\\/\\/www.youtube.com\\/c\\/EdwardBilCrazyPranks?sub_confirmation=1\n____________________________________________________\n🔥Мой официальный МЕРЧ: https:\\/\\/killbilshop.com\\/\n____________________________________________________\n\nПОДПИШИСЬ на СОЦСЕТИ:\nTELEGRAM: https:\\/\\/teleg.one\\/joinchat\\/AAAAAErpUE2JD_l8FpW8Hg\nVK: https:\\/\\/vk.com\\/public168032840\n\nНа благотворительность: 5536 9137 9209 8143 (Тинькофф)\n\nВ этом топовом выпуске: реакция людей на мои выходки, сумасшедший необычный пранк, напал с огромной шапкой, надел гигантскую шляпу на прохожих людей на улице. PRANK над парнем и девушкой, развёл девушку на (ПИКАП ПРАНК). Странные и зашкварные разговоры с людьми на улице. Эдвард Бил пранк с хрюшкой над людьми в необычном образе. Благотворительность, помог автомобилисту на дороге, помог таксисту, сломалась машина - раздал деньги. \n\n\n#edwardbil #пранк #prank",
                    "liveBroadcastContent" : "none",
                    "tags" : [
                      "edward bil",
                      "эдвард бил",
                      "пранк",
                      "prank",
                      "реакция людей на мои выходки",
                      "напал с огромной шапкой",
                      "реакция прохожих",
                      "пранк над девушкой",
                      "пранк над парнем",
                      "зашкварные разговоры",
                      "благотворительность",
                      "дал денег",
                      "помог бездомному",
                      "раздал деньги",
                      "большая шапка пранк",
                      "гигантская шапка пранк",
                      "необычный розыгрыш",
                      "социальный эксперимент",
                      "пикап пранк",
                      "развёл девушку",
                      "эдвард бил новый пранк"
                    ],
                    "channelTitle" : "Edward Bil"
                  }
                },
                {
                  "etag" : "\"j6xRRd8dTPVVptg711_CSPADRfg\\/ZvC0twtWDviRUu2icFbqYu39Xwg\"",
                  "kind" : "youtube#video",
                  "id" : "x4dzpcfmYt8",
                  "statistics" : {
                    "favoriteCount" : "0",
                    "commentCount" : "15284",
                    "likeCount" : "268518",
                    "viewCount" : "1623158",
                    "dislikeCount" : "3589"
                  },
                  "contentDetails" : {
                    "dimension" : "2d",
                    "projection" : "rectangular",
                    "caption" : "false",
                    "definition" : "hd",
                    "licensedContent" : true,
                    "duration" : "PT26M"
                  },
                  "snippet" : {
                    "thumbnails" : {
                      "standard" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/x4dzpcfmYt8\\/sddefault.jpg",
                        "width" : 640,
                        "height" : 480
                      },
                      "medium" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/x4dzpcfmYt8\\/mqdefault.jpg",
                        "width" : 320,
                        "height" : 180
                      },
                      "default" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/x4dzpcfmYt8\\/default.jpg",
                        "width" : 120,
                        "height" : 90
                      },
                      "high" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/x4dzpcfmYt8\\/hqdefault.jpg",
                        "width" : 480,
                        "height" : 360
                      },
                      "maxres" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/x4dzpcfmYt8\\/maxresdefault.jpg",
                        "width" : 1280,
                        "height" : 720
                      }
                    },
                    "channelId" : "UCwipTluVS2mjuhPtx2WU7eQ",
                    "title" : "САМЫЙ СТРАШНЫЙ день для МАСЛЕННИКОВА и ГАБАРА",
                    "publishedAt" : "2019-11-04T19:03:13.000Z",
                    "categoryId" : "24",
                    "localized" : {
                      "title" : "САМЫЙ СТРАШНЫЙ день для МАСЛЕННИКОВА и ГАБАРА",
                      "description" : "Чтобы выиграть призы и мой Мустанг, вам нужно:\n1) перейти на мою страничку в инстаграм: https:\\/\\/www.instagram.com\\/dima_maslen\\/\n2) нажать на мои подписки и подписаться на всех 84 спонсоров!\n3) подписаться на youtube канал Сергея Косенко: https:\\/\\/www.youtube.com\\/channel\\/UCmZt-c0R9dd-xXoVQHO2vHQ\n4) 8 ноября посмотреть прямой эфир в моем инстаграме и получить приз, если тебе повезет!!! \nя гарантирую честность конкурса! \n\nЭТО БЫЛ САМЫЙ СТРАШНЫЙ ДЕНЬ ДЛЯ МАСЛЕННИКОВА И МОЕГО ЛУЧШЕГО ДРУГА ГАБАРА!  Потому что мы 24 часа провели в лесу. Выживание на максималках. Мы пытались проверить челлендж Как выбраться из болота... Посмотрите, что у нас получилось... реальное выживание!!!\nСпасибо ГАБАРУ за участие: https:\\/\\/www.youtube.com\\/channel\\/UCTUjwDljDdBVAVpJ6H3B7zw\n\nПодпишись на меня в соц. сетях:\nINSTAGRAM - https:\\/\\/www.instagram.com\\/dima_maslen \nГруппа в вк - https:\\/\\/vk.com\\/pognalishow\nVK - http:\\/\\/vk.com\\/dima_maslen\n\nПо коммерческим вопросам пишите сюда: maslennikov@wildjam.ru"
                    },
                    "description" : "Чтобы выиграть призы и мой Мустанг, вам нужно:\n1) перейти на мою страничку в инстаграм: https:\\/\\/www.instagram.com\\/dima_maslen\\/\n2) нажать на мои подписки и подписаться на всех 84 спонсоров!\n3) подписаться на youtube канал Сергея Косенко: https:\\/\\/www.youtube.com\\/channel\\/UCmZt-c0R9dd-xXoVQHO2vHQ\n4) 8 ноября посмотреть прямой эфир в моем инстаграме и получить приз, если тебе повезет!!! \nя гарантирую честность конкурса! \n\nЭТО БЫЛ САМЫЙ СТРАШНЫЙ ДЕНЬ ДЛЯ МАСЛЕННИКОВА И МОЕГО ЛУЧШЕГО ДРУГА ГАБАРА!  Потому что мы 24 часа провели в лесу. Выживание на максималках. Мы пытались проверить челлендж Как выбраться из болота... Посмотрите, что у нас получилось... реальное выживание!!!\nСпасибо ГАБАРУ за участие: https:\\/\\/www.youtube.com\\/channel\\/UCTUjwDljDdBVAVpJ6H3B7zw\n\nПодпишись на меня в соц. сетях:\nINSTAGRAM - https:\\/\\/www.instagram.com\\/dima_maslen \nГруппа в вк - https:\\/\\/vk.com\\/pognalishow\nVK - http:\\/\\/vk.com\\/dima_maslen\n\nПо коммерческим вопросам пишите сюда: maslennikov@wildjam.ru",
                    "liveBroadcastContent" : "none",
                    "tags" : [
                      "смешное видео",
                      "самый страшный день",
                      "день",
                      "один день",
                      "друг",
                      "друга",
                      "челлендж",
                      "испытание",
                      "масленников",
                      "габар",
                      "самый страшный день для масленникова",
                      "выживание",
                      "24 часа в лесу",
                      "как выбраться из",
                      "выбраться из болота",
                      "мамикс",
                      "himan",
                      "химэн",
                      "эксперимент",
                      "в поисках еды",
                      "розыгрыш",
                      "ночь в лесу",
                      "потерялись в лесу",
                      "для масленникова и габара",
                      "ghostbuster",
                      "vanzai"
                    ],
                    "channelTitle" : "Дима Масленников"
                  }
                },
                {
                  "etag" : "\"j6xRRd8dTPVVptg711_CSPADRfg\\/bbpKBijXnxhGB6iujSUsqDZTCtU\"",
                  "kind" : "youtube#video",
                  "id" : "-h9Gl-j39gk",
                  "statistics" : {
                    "favoriteCount" : "0",
                    "commentCount" : "4015",
                    "likeCount" : "34341",
                    "viewCount" : "556613",
                    "dislikeCount" : "14086"
                  },
                  "contentDetails" : {
                    "dimension" : "2d",
                    "projection" : "rectangular",
                    "caption" : "false",
                    "definition" : "hd",
                    "licensedContent" : true,
                    "duration" : "PT26M7S"
                  },
                  "snippet" : {
                    "thumbnails" : {
                      "standard" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/-h9Gl-j39gk\\/sddefault.jpg",
                        "width" : 640,
                        "height" : 480
                      },
                      "medium" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/-h9Gl-j39gk\\/mqdefault.jpg",
                        "width" : 320,
                        "height" : 180
                      },
                      "default" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/-h9Gl-j39gk\\/default.jpg",
                        "width" : 120,
                        "height" : 90
                      },
                      "high" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/-h9Gl-j39gk\\/hqdefault.jpg",
                        "width" : 480,
                        "height" : 360
                      },
                      "maxres" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/-h9Gl-j39gk\\/maxresdefault.jpg",
                        "width" : 1280,
                        "height" : 720
                      }
                    },
                    "channelId" : "UCv2hYhRYO8Fmbs5mUemz2oQ",
                    "defaultAudioLanguage" : "en",
                    "title" : "D3. MERCEDES AMG GT 63 S 4MATIC+",
                    "publishedAt" : "2019-11-04T23:35:16.000Z",
                    "categoryId" : "2",
                    "localized" : {
                      "title" : "D3. MERCEDES AMG GT 63 S 4MATIC+",
                      "description" : "Выражаем Огромную Благодарность в помощи поиска автомобилей в Узбекистане и дальнейшую съёмку!\nОтабеку Умарову \nhttps:\\/\\/www.instagram.com\\/otabek_muhammadalievich\\/\n\nПо вопросу сотрудничества: Моника +79218070123\nНаш ТелеграмКанал https:\\/\\/teleg.one\\/Eric_Davidich_D3\nИнстаграм: https:\\/\\/www.instagram.com\\/eric_davidich\\/\nИнстаграм (лайв): https:\\/\\/www.instagram.com\\/davidich.d3\nВК: https:\\/\\/vk.com\\/davidich1981\nВК (смотра.ру): https:\\/\\/vk.com\\/smotraofficial"
                    },
                    "description" : "Выражаем Огромную Благодарность в помощи поиска автомобилей в Узбекистане и дальнейшую съёмку!\nОтабеку Умарову \nhttps:\\/\\/www.instagram.com\\/otabek_muhammadalievich\\/\n\nПо вопросу сотрудничества: Моника +79218070123\nНаш ТелеграмКанал https:\\/\\/teleg.one\\/Eric_Davidich_D3\nИнстаграм: https:\\/\\/www.instagram.com\\/eric_davidich\\/\nИнстаграм (лайв): https:\\/\\/www.instagram.com\\/davidich.d3\nВК: https:\\/\\/vk.com\\/davidich1981\nВК (смотра.ру): https:\\/\\/vk.com\\/smotraofficial",
                    "liveBroadcastContent" : "none",
                    "tags" : [
                      "давидыч",
                      "смотра",
                      "smotra",
                      "эрик давидыч",
                      "d3",
                      "тест драйв от давидыча",
                      "d3 давидыч",
                      "davidich",
                      "смотра тв",
                      "д3 давидыч",
                      "eric davidich",
                      "смотра ру",
                      "the e.n.d.",
                      "THE END",
                      "д3",
                      "давыдыч",
                      "давидыч тест драйв",
                      "smotra tv",
                      "MERCEDES",
                      "GT",
                      "AMG",
                      "узбекистан",
                      "ташкент",
                      "Отабек Умаров"
                    ],
                    "channelTitle" : "smotraTV"
                  }
                },
                {
                  "etag" : "\"j6xRRd8dTPVVptg711_CSPADRfg\\/6crb9I6-whsFJdyqS5heMD3Umo0\"",
                  "kind" : "youtube#video",
                  "id" : "TQ8i_rvRVO4",
                  "statistics" : {
                    "favoriteCount" : "0",
                    "commentCount" : "1905",
                    "likeCount" : "37981",
                    "viewCount" : "322282",
                    "dislikeCount" : "354"
                  },
                  "contentDetails" : {
                    "dimension" : "2d",
                    "projection" : "rectangular",
                    "caption" : "false",
                    "definition" : "hd",
                    "licensedContent" : true,
                    "duration" : "PT15M50S"
                  },
                  "snippet" : {
                    "thumbnails" : {
                      "standard" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/TQ8i_rvRVO4\\/sddefault.jpg",
                        "width" : 640,
                        "height" : 480
                      },
                      "medium" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/TQ8i_rvRVO4\\/mqdefault.jpg",
                        "width" : 320,
                        "height" : 180
                      },
                      "default" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/TQ8i_rvRVO4\\/default.jpg",
                        "width" : 120,
                        "height" : 90
                      },
                      "high" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/TQ8i_rvRVO4\\/hqdefault.jpg",
                        "width" : 480,
                        "height" : 360
                      },
                      "maxres" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/TQ8i_rvRVO4\\/maxresdefault.jpg",
                        "width" : 1280,
                        "height" : 720
                      }
                    },
                    "channelId" : "UCpbgBi44JsOwluXPHzegIcg",
                    "defaultAudioLanguage" : "ru",
                    "title" : "ПОЗОРИМСЯ С ВАСИЛИСОЙ \\/\\/ 24 ЧАСА В НАДУВНЫХ КОСТЮМАХ",
                    "publishedAt" : "2019-11-05T11:00:06.000Z",
                    "categoryId" : "24",
                    "localized" : {
                      "title" : "ПОЗОРИМСЯ С ВАСИЛИСОЙ \\/\\/ 24 ЧАСА В НАДУВНЫХ КОСТЮМАХ",
                      "description" : "Видео на канале Василисы: https:\\/\\/youtu.be\\/TQ8i_rvRVO4\n\nОЧЕНЬ ХОЧУ ВАС ВИДЕТЬ У СЕБЯ В:\nTIKTOK - http:\\/\\/vm.tiktok.com\\/55Exdk\\/\nINSTAGRAM- https:\\/\\/www.instagram.com\\/maevamasha\\/ \n------------------------------------------------------------— \nСАМОЕ ГЛАВНОЕ!\nЯ ПОСПОРИЛА со своим БОСОМ-Яровлавом Андреевым ,что до 26 ДЕКАБРЯ я на своем ютьюб канале наберу 3.000.000 подписчиков!\nЕсли я смогу, то мне Ярослав отдает миллион, который отложу на кваартиру! \nВсе подробности в этом видео: https:\\/\\/youtu.be\\/GsIne6PQctw\n------------------------------------------------------------— \nПо вопросам сотрудничества - maeva@wildjam.ru\n------------------------------------------------------------—\n\n#ВПЕРВЫЕ #МашаМаева #ВпрорубьКМаевой\nПОЗОРИМСЯ С ВАСИЛИСОЙ \\/\\/ 24 ЧАСА В НАДУВНЫХ КОСТЮМАХ"
                    },
                    "description" : "Видео на канале Василисы: https:\\/\\/youtu.be\\/TQ8i_rvRVO4\n\nОЧЕНЬ ХОЧУ ВАС ВИДЕТЬ У СЕБЯ В:\nTIKTOK - http:\\/\\/vm.tiktok.com\\/55Exdk\\/\nINSTAGRAM- https:\\/\\/www.instagram.com\\/maevamasha\\/ \n------------------------------------------------------------— \nСАМОЕ ГЛАВНОЕ!\nЯ ПОСПОРИЛА со своим БОСОМ-Яровлавом Андреевым ,что до 26 ДЕКАБРЯ я на своем ютьюб канале наберу 3.000.000 подписчиков!\nЕсли я смогу, то мне Ярослав отдает миллион, который отложу на кваартиру! \nВсе подробности в этом видео: https:\\/\\/youtu.be\\/GsIne6PQctw\n------------------------------------------------------------— \nПо вопросам сотрудничества - maeva@wildjam.ru\n------------------------------------------------------------—\n\n#ВПЕРВЫЕ #МашаМаева #ВпрорубьКМаевой\nПОЗОРИМСЯ С ВАСИЛИСОЙ \\/\\/ 24 ЧАСА В НАДУВНЫХ КОСТЮМАХ",
                    "liveBroadcastContent" : "none",
                    "tags" : [
                      "Маша Маева",
                      "маева",
                      "маша",
                      "моржиха",
                      "ПОЗОРИМСЯ С ВАСИЛИСОЙ",
                      "24 ЧАСА",
                      "24 ЧАСА В НАДУВНЫХ КОСТЮМАХ",
                      "24 часа челлендж",
                      "маша маева 24 часа",
                      "василиса",
                      "василиса даванкова",
                      "василиса даванкова слоу мо",
                      "василиса и маева",
                      "маева и василиса",
                      "маева и василиса даванкова",
                      "даванкова слоу мо",
                      "даванкова маева",
                      "даванкова отвечай или страдай",
                      "отвечай или страдай",
                      "видео",
                      "канал",
                      "смотреть",
                      "надувные костюмы",
                      "костюмы"
                    ],
                    "channelTitle" : "Маша Маева"
                  }
                },
                {
                  "etag" : "\"j6xRRd8dTPVVptg711_CSPADRfg\\/5afWaN3efCi8qCXMM4EQa6_1Dr4\"",
                  "kind" : "youtube#video",
                  "id" : "sorAA3lYgSA",
                  "statistics" : {
                    "favoriteCount" : "0",
                    "commentCount" : "4981",
                    "likeCount" : "59225",
                    "viewCount" : "1801447",
                    "dislikeCount" : "4665"
                  },
                  "contentDetails" : {
                    "dimension" : "2d",
                    "projection" : "rectangular",
                    "caption" : "false",
                    "definition" : "hd",
                    "licensedContent" : true,
                    "duration" : "PT1H12M24S"
                  },
                  "snippet" : {
                    "thumbnails" : {
                      "standard" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/sorAA3lYgSA\\/sddefault.jpg",
                        "width" : 640,
                        "height" : 480
                      },
                      "medium" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/sorAA3lYgSA\\/mqdefault.jpg",
                        "width" : 320,
                        "height" : 180
                      },
                      "default" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/sorAA3lYgSA\\/default.jpg",
                        "width" : 120,
                        "height" : 90
                      },
                      "high" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/sorAA3lYgSA\\/hqdefault.jpg",
                        "width" : 480,
                        "height" : 360
                      },
                      "maxres" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/sorAA3lYgSA\\/maxresdefault.jpg",
                        "width" : 1280,
                        "height" : 720
                      }
                    },
                    "channelId" : "UCrkrnnWWPgS6Ws7dQWkVPLg",
                    "title" : "\"Прожарка\" Семёна Слепакова. Специальные гости - Артур Джанибекян, Гарик Мартиросян",
                    "publishedAt" : "2019-11-04T07:00:05.000Z",
                    "categoryId" : "23",
                    "localized" : {
                      "title" : "\"Прожарка\" Семёна Слепакова. Специальные гости - Артур Джанибекян, Гарик Мартиросян",
                      "description" : "Семён Слепаков, как бард-десятник «прожаривает» в своих песнях и стихах коррупционеров, чиновников, сборную России, Сергея Шнурова и Харви Вайнштейна. Возможно ли прожарить самого Семёна? Узнаем в нашем новом выпуске хейт-шоу \"Прожарка\" на ТНТ4!\n\n➤\"Прожариваемый\" - Семён Слепаков!\n➤Секретный гость \"Прожарки\" - Артур Джанибекян!\n➤Специальный гость \"Прожарки\" - Гарик Мартиросян!\n➤Прожарщики - Алексей Щербаков, Ирина Приходько, Иван Усович, Филипп Воронин, Дима Гаврилов и Сергей Матросов.\n➤Ставь лайк! Подписывайся на канал! Делись с друзьями!\n\nА ещё мы завезли в эфир кое-что новенькое с хорошим переводом и в озвучке Евгения Рыбова, просто включи телик)\n➤\"Прожарка\" Алека Болдуина - прям сегодня будет, 4 ноября, в 23:00. Это зарубежный контент, который мы не сможем выложить на ютуб, поэтому ловите в эфире.\n➤Сериал \"Офис\" с понедельника по четверг в 21:00 на ТНТ4. \n\n➤Мерч \"Прожарки\" - https:\\/\\/shop.tnt-club.com\\/man-product\\/hudi-progharka-chernaya-2520533\n\n-------------------\nСсылки на соц. сети: \n\n➤YouTube-канал ведущего \"Прожарки\" Ильи Соболева - https:\\/\\/www.youtube.com\\/user\\/SobolevTUT \n➤Официальная группа \"Прожарки\" ВКонтакте - https:\\/\\/vk.com\\/prozharka \n➤Официальная группа телеканала ТНТ4 ВКонтакте - https:\\/\\/vk.com\\/tnt4 \n\nСсылки на Instagram участников: \n➤Телеканал ТНТ4 - https:\\/\\/instagram.com\\/tnt4ru\\/\n➤Семён Слепаков - https:\\/\\/www.instagram.com\\/slepakovsemyon\\/\n➤Гарик Мартиросян - https:\\/\\/www.instagram.com\\/martirosian_official\\/\n➤Алексей Щербаков - https:\\/\\/www.instagram.com\\/shcherbakov_alexei\\/\n➤Ирина Приходько - https:\\/\\/www.instagram.com\\/irinozavr\\/\n➤Филипп Воронин - https:\\/\\/www.instagram.com\\/f1lipp\\/\n➤Ваня Усович - https:\\/\\/instagram.com\\/vanya.usovich\\/\n➤Сергей Матросов - https:\\/\\/www.instagram.com\\/matrosov_serg\\/\n➤Дима Гаврилов - https:\\/\\/www.instagram.com\\/dima.gavr\\/\n\n#ТНТ4#Прожарка#Слепаков"
                    },
                    "description" : "Семён Слепаков, как бард-десятник «прожаривает» в своих песнях и стихах коррупционеров, чиновников, сборную России, Сергея Шнурова и Харви Вайнштейна. Возможно ли прожарить самого Семёна? Узнаем в нашем новом выпуске хейт-шоу \"Прожарка\" на ТНТ4!\n\n➤\"Прожариваемый\" - Семён Слепаков!\n➤Секретный гость \"Прожарки\" - Артур Джанибекян!\n➤Специальный гость \"Прожарки\" - Гарик Мартиросян!\n➤Прожарщики - Алексей Щербаков, Ирина Приходько, Иван Усович, Филипп Воронин, Дима Гаврилов и Сергей Матросов.\n➤Ставь лайк! Подписывайся на канал! Делись с друзьями!\n\nА ещё мы завезли в эфир кое-что новенькое с хорошим переводом и в озвучке Евгения Рыбова, просто включи телик)\n➤\"Прожарка\" Алека Болдуина - прям сегодня будет, 4 ноября, в 23:00. Это зарубежный контент, который мы не сможем выложить на ютуб, поэтому ловите в эфире.\n➤Сериал \"Офис\" с понедельника по четверг в 21:00 на ТНТ4. \n\n➤Мерч \"Прожарки\" - https:\\/\\/shop.tnt-club.com\\/man-product\\/hudi-progharka-chernaya-2520533\n\n-------------------\nСсылки на соц. сети: \n\n➤YouTube-канал ведущего \"Прожарки\" Ильи Соболева - https:\\/\\/www.youtube.com\\/user\\/SobolevTUT \n➤Официальная группа \"Прожарки\" ВКонтакте - https:\\/\\/vk.com\\/prozharka \n➤Официальная группа телеканала ТНТ4 ВКонтакте - https:\\/\\/vk.com\\/tnt4 \n\nСсылки на Instagram участников: \n➤Телеканал ТНТ4 - https:\\/\\/instagram.com\\/tnt4ru\\/\n➤Семён Слепаков - https:\\/\\/www.instagram.com\\/slepakovsemyon\\/\n➤Гарик Мартиросян - https:\\/\\/www.instagram.com\\/martirosian_official\\/\n➤Алексей Щербаков - https:\\/\\/www.instagram.com\\/shcherbakov_alexei\\/\n➤Ирина Приходько - https:\\/\\/www.instagram.com\\/irinozavr\\/\n➤Филипп Воронин - https:\\/\\/www.instagram.com\\/f1lipp\\/\n➤Ваня Усович - https:\\/\\/instagram.com\\/vanya.usovich\\/\n➤Сергей Матросов - https:\\/\\/www.instagram.com\\/matrosov_serg\\/\n➤Дима Гаврилов - https:\\/\\/www.instagram.com\\/dima.gavr\\/\n\n#ТНТ4#Прожарка#Слепаков",
                    "liveBroadcastContent" : "none",
                    "tags" : [
                      "ТНТ4",
                      "Прожарка",
                      "прожарка слепакова",
                      "прожарка тнт4",
                      "семён слепаков",
                      "артур джанибекян",
                      "гарик мартиросян",
                      "ТНТ",
                      "Новый сезон",
                      "Премьера",
                      "Haters",
                      "Roast",
                      "Television Program",
                      "Humour",
                      "Performing Arts",
                      "Entertainment",
                      "прожарка выпуск целиком",
                      "юмористическое шоу",
                      "комедийное шоу",
                      "Стендап",
                      "Standup",
                      "Илья Соболев",
                      "Соболев",
                      "камеди",
                      "комедия",
                      "шутки",
                      "юмор",
                      "алексей щербаков",
                      "ирина приходько",
                      "иван усович",
                      "филипп воронин",
                      "сергей матросов",
                      "дима гаврилов"
                    ],
                    "channelTitle" : "ТНТ4 Телеканал"
                  }
                },
                {
                  "etag" : "\"j6xRRd8dTPVVptg711_CSPADRfg\\/qnWIHOrT-78XkjeR9QbvPExcvXc\"",
                  "kind" : "youtube#video",
                  "id" : "yRAZvjT7SPQ",
                  "statistics" : {
                    "favoriteCount" : "0",
                    "commentCount" : "8635",
                    "likeCount" : "63898",
                    "viewCount" : "468354",
                    "dislikeCount" : "492"
                  },
                  "contentDetails" : {
                    "dimension" : "2d",
                    "projection" : "rectangular",
                    "caption" : "false",
                    "definition" : "hd",
                    "licensedContent" : true,
                    "duration" : "PT4M14S"
                  },
                  "snippet" : {
                    "thumbnails" : {
                      "standard" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/yRAZvjT7SPQ\\/sddefault.jpg",
                        "width" : 640,
                        "height" : 480
                      },
                      "medium" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/yRAZvjT7SPQ\\/mqdefault.jpg",
                        "width" : 320,
                        "height" : 180
                      },
                      "default" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/yRAZvjT7SPQ\\/default.jpg",
                        "width" : 120,
                        "height" : 90
                      },
                      "high" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/yRAZvjT7SPQ\\/hqdefault.jpg",
                        "width" : 480,
                        "height" : 360
                      },
                      "maxres" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/yRAZvjT7SPQ\\/maxresdefault.jpg",
                        "width" : 1280,
                        "height" : 720
                      }
                    },
                    "channelId" : "UCLaqlgkDM3dkDh4WSbULMEA",
                    "defaultAudioLanguage" : "ru",
                    "title" : "ЮТУБ vs. ИНСТАГРАМ",
                    "publishedAt" : "2019-11-05T13:40:01.000Z",
                    "categoryId" : "23",
                    "localized" : {
                      "title" : "ЮТУБ vs. ИНСТАГРАМ",
                      "description" : "ЮТУБ vs. ИНСТАГРАМ\nСмотри так же видео \"СОН vs. РЕАЛЬНОСТЬ\" ► https:\\/\\/youtu.be\\/_GJa4N5vbXE\n\nМы ВКонтакте: \nСергей ► https:\\/\\/vk.com\\/sega_onetwo \nРома ► https:\\/\\/vk.com\\/romanchastin \nПаблик OneTwo ► https:\\/\\/vk.com\\/onetwo_pub \n\nСотрудничество ► onetwo@zorka.mobi\n\nМы в Инстаграме: \nСергей ► https:\\/\\/www.instagram.com\\/sega_onetwo\\/ \nРома ► https:\\/\\/www.instagram.com\\/romanchastin\\/ \nИнстаграм OneTwo ► https:\\/\\/www.instagram.com\\/onetwo_ofinst\\/\n\n#vs #onetwo #скетч"
                    },
                    "description" : "ЮТУБ vs. ИНСТАГРАМ\nСмотри так же видео \"СОН vs. РЕАЛЬНОСТЬ\" ► https:\\/\\/youtu.be\\/_GJa4N5vbXE\n\nМы ВКонтакте: \nСергей ► https:\\/\\/vk.com\\/sega_onetwo \nРома ► https:\\/\\/vk.com\\/romanchastin \nПаблик OneTwo ► https:\\/\\/vk.com\\/onetwo_pub \n\nСотрудничество ► onetwo@zorka.mobi\n\nМы в Инстаграме: \nСергей ► https:\\/\\/www.instagram.com\\/sega_onetwo\\/ \nРома ► https:\\/\\/www.instagram.com\\/romanchastin\\/ \nИнстаграм OneTwo ► https:\\/\\/www.instagram.com\\/onetwo_ofinst\\/\n\n#vs #onetwo #скетч",
                    "liveBroadcastContent" : "none",
                    "tags" : [
                      "ютуб",
                      "инстаграм",
                      "ютуб против инстаграма",
                      "инстаграм против ютуба",
                      "ЮТУБ vs. ИНСТАГРАМ",
                      "ютьюб",
                      "instagram",
                      "insta",
                      "инстаграм против вк",
                      "вк против инстаграм",
                      "инста",
                      "инставайны",
                      "youtube",
                      "ютуб инстаграм",
                      "инстаграм ютуб",
                      "ютубер",
                      "ютуберы",
                      "инстаблогеры",
                      "блогеры",
                      "блогер",
                      "видео",
                      "скетч",
                      "юмор",
                      "версус",
                      "против",
                      "ютуб против",
                      "versus",
                      "короче говоря",
                      "ванту",
                      "ван ту",
                      "onetwo",
                      "one two",
                      "уан ту",
                      "ванту версус",
                      "ван ту версус",
                      "ванту ютуб",
                      "ванту инстаграм",
                      "ванту короче говоря",
                      "короче говоря инстаграм",
                      "короче говоря ютуб"
                    ],
                    "channelTitle" : "OneTwo"
                  }
                },
                {
                  "etag" : "\"j6xRRd8dTPVVptg711_CSPADRfg\\/-qogXN_c7ZqU1S9LZlONcGIiVx4\"",
                  "kind" : "youtube#video",
                  "id" : "yAN6-2g7k4Q",
                  "statistics" : {
                    "favoriteCount" : "0",
                    "commentCount" : "953",
                    "likeCount" : "25943",
                    "viewCount" : "207809",
                    "dislikeCount" : "481"
                  },
                  "contentDetails" : {
                    "dimension" : "2d",
                    "projection" : "rectangular",
                    "caption" : "false",
                    "definition" : "hd",
                    "licensedContent" : true,
                    "duration" : "PT13M32S"
                  },
                  "snippet" : {
                    "thumbnails" : {
                      "standard" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/yAN6-2g7k4Q\\/sddefault.jpg",
                        "width" : 640,
                        "height" : 480
                      },
                      "medium" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/yAN6-2g7k4Q\\/mqdefault.jpg",
                        "width" : 320,
                        "height" : 180
                      },
                      "default" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/yAN6-2g7k4Q\\/default.jpg",
                        "width" : 120,
                        "height" : 90
                      },
                      "high" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/yAN6-2g7k4Q\\/hqdefault.jpg",
                        "width" : 480,
                        "height" : 360
                      },
                      "maxres" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/yAN6-2g7k4Q\\/maxresdefault.jpg",
                        "width" : 1280,
                        "height" : 720
                      }
                    },
                    "channelId" : "UCmk4zr_j-vXRba57P8TxKRA",
                    "defaultAudioLanguage" : "ru",
                    "title" : "ДАВАНКОВА ИЛИ МАЕВА, КТО УТОНЕТ НА ОТВЕЧАЙ ИЛИ СТРАДАЙ?!",
                    "publishedAt" : "2019-11-05T11:00:08.000Z",
                    "categoryId" : "22",
                    "localized" : {
                      "title" : "ДАВАНКОВА ИЛИ МАЕВА, КТО УТОНЕТ НА ОТВЕЧАЙ ИЛИ СТРАДАЙ?!",
                      "description" : "Привет! \n♡ Меня зовут Василиса и я рада приветствовать тебя на своём канале! \n\nИ в этом видео мы с Машей померяемся мозгами.. Победителем выйдет только один.. Приятного просмотра!😈🔥\n\nВидео на канале Маши 👇🏼\n\nhttps:\\/\\/youtu.be\\/TQ8i_rvRVO4\n\nКанал Маши - https:\\/\\/www.youtube.com\\/channel\\/UCpbgBi44JsOwluXPHzegIcg\nИнстаграм Маши - https:\\/\\/www.instagram.com\\/maevamasha\\/\n\n\n‼ Почта для сотрудничества - vasilisa@wildjam.ru\n\n❤МОИ СОЦ.СЕТИ❤: \n\n\n❤INSTAGRAM http:\\/\\/instagram.com\\/vdavankova \n❤VKONTAKTE https:\\/\\/vk.com\\/vdavankova \n❤FACEBOOK https:\\/\\/m.facebook.com\\/vasilisa.davan\n❤MUSICAL.LY: @vasilisa_d\n❤LIKE: @Vasilisa_dav\n\n#ВасилисаДаванкова #МашаМаева #Отвечайилистрадай\nДАВАНКОВА ИЛИ МАЕВА, КТО УТОНЕТ НА ОТВЕЧАЙ ИЛИ СТРАДАЙ?!"
                    },
                    "description" : "Привет! \n♡ Меня зовут Василиса и я рада приветствовать тебя на своём канале! \n\nИ в этом видео мы с Машей померяемся мозгами.. Победителем выйдет только один.. Приятного просмотра!😈🔥\n\nВидео на канале Маши 👇🏼\n\nhttps:\\/\\/youtu.be\\/TQ8i_rvRVO4\n\nКанал Маши - https:\\/\\/www.youtube.com\\/channel\\/UCpbgBi44JsOwluXPHzegIcg\nИнстаграм Маши - https:\\/\\/www.instagram.com\\/maevamasha\\/\n\n\n‼ Почта для сотрудничества - vasilisa@wildjam.ru\n\n❤МОИ СОЦ.СЕТИ❤: \n\n\n❤INSTAGRAM http:\\/\\/instagram.com\\/vdavankova \n❤VKONTAKTE https:\\/\\/vk.com\\/vdavankova \n❤FACEBOOK https:\\/\\/m.facebook.com\\/vasilisa.davan\n❤MUSICAL.LY: @vasilisa_d\n❤LIKE: @Vasilisa_dav\n\n#ВасилисаДаванкова #МашаМаева #Отвечайилистрадай\nДАВАНКОВА ИЛИ МАЕВА, КТО УТОНЕТ НА ОТВЕЧАЙ ИЛИ СТРАДАЙ?!",
                    "liveBroadcastContent" : "none",
                    "tags" : [
                      "vasilisa",
                      "василиса",
                      "vasilisa davankova",
                      "василиса даванкова",
                      "отвечай или страдай",
                      "василиса даванкова отвечай или страдай",
                      "василиса и маша маева",
                      "василиса даванкова бассейн",
                      "отвечай или страдай маева",
                      "маша маева отвечай или страдай",
                      "маша маева ответ вопрос",
                      "отвечай или сасай маша маева",
                      "маша маева впервые",
                      "маша маева впервые на отвечай или страдай",
                      "ДАВАНКОВА ИЛИ МАЕВА",
                      "КТО УТОНЕТ НА ОТВЕЧАЙ ИЛИ СТРАДАЙ?!"
                    ],
                    "channelTitle" : "Василиса Даванкова"
                  }
                },
                {
                  "etag" : "\"j6xRRd8dTPVVptg711_CSPADRfg\\/mULLFhzYpxVk8ptOwpZPZgPFhUs\"",
                  "kind" : "youtube#video",
                  "id" : "DCJ-EmtdIK8",
                  "statistics" : {
                    "favoriteCount" : "0",
                    "commentCount" : "3099",
                    "likeCount" : "34833",
                    "viewCount" : "267330",
                    "dislikeCount" : "571"
                  },
                  "contentDetails" : {
                    "dimension" : "2d",
                    "projection" : "rectangular",
                    "caption" : "false",
                    "definition" : "hd",
                    "licensedContent" : true,
                    "duration" : "PT43M57S"
                  },
                  "snippet" : {
                    "description" : "Кузьма - https:\\/\\/www.youtube.com\\/user\\/KuzyaMeduzya\nhttps:\\/\\/vsrap.ru\\/juliusspeak - Мерч Юлика (СЕКСУАЛЬНОЕ ДАВЛЕНИЕ, Конч за 500, Топ бабец)\nСмотрим ЛЕДИ БАГ И СУПЕР-КОТ(miraculous) - мультик про супергероиню ЛЕДИБАГ(Маринетт Дюпен-Чен) и ее товарища СУПЕР КОТА(Адриан Агрест или кот нуар)! Все друг друга любят и дерутся в латексе - исчерпывающее описание для этого мультфильма.\nИнстаграм https:\\/\\/www.instagram.com\\/juliusspeak\\/\nСтать спонсором - https:\\/\\/www.youtube.com\\/channel\\/UC6S1hSjVMFbB9WKv-qZKwuw\\/join\nЮлик - http:\\/\\/vk.com\\/oneshko\nГруппа - http:\\/\\/vk.com\\/juliusspeak\nЛайв канал - https:\\/\\/www.youtube.com\\/channel\\/UCvnVq3ay_VTc6NuwwfUzVJQ?sub_confirmation=1",
                    "channelId" : "UC6S1hSjVMFbB9WKv-qZKwuw",
                    "publishedAt" : "2019-11-05T11:00:04.000Z",
                    "tags" : [
                      "юмор",
                      "juliusspeak",
                      "julius speak",
                      "джулиус спик",
                      "юлик",
                      "реакция",
                      "ЛЕДИ БАГ И СУПЕР-КОТ",
                      "ЛЕДИ БАГ",
                      "ЛЕДИБАГ",
                      "СУПЕР-КОТ",
                      "СУПЕР КОТ",
                      "ЛЕДИ БАГ И СУПЕР КОТ",
                      "мультики",
                      "мультфильмы",
                      "мультик",
                      "Маринетт Дюпен-Чен",
                      "Маринетт",
                      "Адриан Агрест",
                      "Адриан",
                      "маринетт и адриан",
                      "кот нуар",
                      "miraculous"
                    ],
                    "title" : "ЛЕДИ БАГ И СУПЕР-КОТ #2",
                    "liveBroadcastContent" : "none",
                    "defaultLanguage" : "ru",
                    "defaultAudioLanguage" : "ru",
                    "channelTitle" : "Юлик",
                    "thumbnails" : {
                      "standard" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/DCJ-EmtdIK8\\/sddefault.jpg",
                        "width" : 640,
                        "height" : 480
                      },
                      "medium" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/DCJ-EmtdIK8\\/mqdefault.jpg",
                        "width" : 320,
                        "height" : 180
                      },
                      "default" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/DCJ-EmtdIK8\\/default.jpg",
                        "width" : 120,
                        "height" : 90
                      },
                      "high" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/DCJ-EmtdIK8\\/hqdefault.jpg",
                        "width" : 480,
                        "height" : 360
                      },
                      "maxres" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/DCJ-EmtdIK8\\/maxresdefault.jpg",
                        "width" : 1280,
                        "height" : 720
                      }
                    },
                    "localized" : {
                      "title" : "ЛЕДИ БАГ И СУПЕР-КОТ #2",
                      "description" : "Кузьма - https:\\/\\/www.youtube.com\\/user\\/KuzyaMeduzya\nhttps:\\/\\/vsrap.ru\\/juliusspeak - Мерч Юлика (СЕКСУАЛЬНОЕ ДАВЛЕНИЕ, Конч за 500, Топ бабец)\nСмотрим ЛЕДИ БАГ И СУПЕР-КОТ(miraculous) - мультик про супергероиню ЛЕДИБАГ(Маринетт Дюпен-Чен) и ее товарища СУПЕР КОТА(Адриан Агрест или кот нуар)! Все друг друга любят и дерутся в латексе - исчерпывающее описание для этого мультфильма.\nИнстаграм https:\\/\\/www.instagram.com\\/juliusspeak\\/\nСтать спонсором - https:\\/\\/www.youtube.com\\/channel\\/UC6S1hSjVMFbB9WKv-qZKwuw\\/join\nЮлик - http:\\/\\/vk.com\\/oneshko\nГруппа - http:\\/\\/vk.com\\/juliusspeak\nЛайв канал - https:\\/\\/www.youtube.com\\/channel\\/UCvnVq3ay_VTc6NuwwfUzVJQ?sub_confirmation=1"
                    },
                    "categoryId" : "24"
                  }
                },
                {
                  "etag" : "\"j6xRRd8dTPVVptg711_CSPADRfg\\/FhVM4AE9XghkY3KJtYBkNrFQMyU\"",
                  "kind" : "youtube#video",
                  "id" : "jGfPm4mqI5w",
                  "statistics" : {
                    "favoriteCount" : "0",
                    "commentCount" : "1450",
                    "likeCount" : "36476",
                    "viewCount" : "374939",
                    "dislikeCount" : "817"
                  },
                  "contentDetails" : {
                    "dimension" : "2d",
                    "projection" : "rectangular",
                    "caption" : "false",
                    "definition" : "hd",
                    "licensedContent" : true,
                    "duration" : "PT15M23S"
                  },
                  "snippet" : {
                    "description" : "Нереальная распродажа 11.11 на AliExpress https:\\/\\/aliclick.ru\\/ONkzL\\/\nПромокод “ALISALE10”\nСкидка 10$ на покупки от 100$\nПромокод действует с 11 по 12 ноября\n\nПодпишись на канал: http:\\/\\/goo.gl\\/2nBwD2\nПо рекламе писать: tuchina@wildjam.ru\nПо личным вопросам: brandt@wildjam.ru\nМоя партнерка: https:\\/\\/goo.gl\\/T61zMh\n\n#Фудблогер #МаксБрандт #ОбзорЕды\n\nhttp:\\/\\/vk.com\\/max_brandt - ВК\nhttp:\\/\\/instagram.com\\/kozheed - инста\nhttp:\\/\\/instagram.com\\/nekozheed - второй акк\nhttp:\\/\\/youtube.com\\/maxmakesvideo - личный ют\nhttp:\\/\\/www.youtube.com\\/BrandtIgraet - лайв ют\n\nВсем фуд-привет, меня зовут Макс Брандт и я фудблогер. На этом канале я выкладываю обзоры необычной еды со всего мира, выясняю в каких ресторанах и кафе вкуснее и выгоднее, какие доставки стоит заказывать и многое другое.\nЗапасайтесь едой, приятного просмотра и аппетита.",
                    "channelId" : "UCxF6ylvxiQV5m-7Rawr3W7g",
                    "publishedAt" : "2019-11-05T11:00:07.000Z",
                    "tags" : [
                      "макс брандт",
                      "макс",
                      "брандт",
                      "food",
                      "фудхантер",
                      "фудблогер",
                      "ведущий фудблогер",
                      "шаурма",
                      "шаверма",
                      "шава",
                      "дима масленников",
                      "масленников",
                      "шаурма масленникова",
                      "шаурма димы масленникова",
                      "здесь кто нибудь ест",
                      "честный обзор",
                      "масленников шаурма",
                      "обзор шаурмы",
                      "брандт шаурма",
                      "вкусная шаурма",
                      "шаурма в москве",
                      "вкусно",
                      "шавуха",
                      "дешевая шаурма",
                      "вкусно и дешево",
                      "тайный покупатель",
                      "диман сорян",
                      "здесь кто нибудь есть",
                      "где купить шаурму",
                      "битиэс",
                      "фалафель",
                      "с ананасами",
                      "шаурма в хлебе"
                    ],
                    "title" : "Честный обзор на шаурму Димы Масленникова \\/ Диман, сорян \\/ Здесь кто-нибудь ест?",
                    "liveBroadcastContent" : "none",
                    "defaultLanguage" : "en",
                    "defaultAudioLanguage" : "ru",
                    "channelTitle" : "Макс Брандт",
                    "thumbnails" : {
                      "standard" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/jGfPm4mqI5w\\/sddefault.jpg",
                        "width" : 640,
                        "height" : 480
                      },
                      "medium" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/jGfPm4mqI5w\\/mqdefault.jpg",
                        "width" : 320,
                        "height" : 180
                      },
                      "default" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/jGfPm4mqI5w\\/default.jpg",
                        "width" : 120,
                        "height" : 90
                      },
                      "high" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/jGfPm4mqI5w\\/hqdefault.jpg",
                        "width" : 480,
                        "height" : 360
                      },
                      "maxres" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/jGfPm4mqI5w\\/maxresdefault.jpg",
                        "width" : 1280,
                        "height" : 720
                      }
                    },
                    "localized" : {
                      "title" : "Честный обзор на шаурму Димы Масленникова \\/ Диман, сорян \\/ Здесь кто-нибудь ест?",
                      "description" : "Нереальная распродажа 11.11 на AliExpress https:\\/\\/aliclick.ru\\/ONkzL\\/\nПромокод “ALISALE10”\nСкидка 10$ на покупки от 100$\nПромокод действует с 11 по 12 ноября\n\nПодпишись на канал: http:\\/\\/goo.gl\\/2nBwD2\nПо рекламе писать: tuchina@wildjam.ru\nПо личным вопросам: brandt@wildjam.ru\nМоя партнерка: https:\\/\\/goo.gl\\/T61zMh\n\n#Фудблогер #МаксБрандт #ОбзорЕды\n\nhttp:\\/\\/vk.com\\/max_brandt - ВК\nhttp:\\/\\/instagram.com\\/kozheed - инста\nhttp:\\/\\/instagram.com\\/nekozheed - второй акк\nhttp:\\/\\/youtube.com\\/maxmakesvideo - личный ют\nhttp:\\/\\/www.youtube.com\\/BrandtIgraet - лайв ют\n\nВсем фуд-привет, меня зовут Макс Брандт и я фудблогер. На этом канале я выкладываю обзоры необычной еды со всего мира, выясняю в каких ресторанах и кафе вкуснее и выгоднее, какие доставки стоит заказывать и многое другое.\nЗапасайтесь едой, приятного просмотра и аппетита."
                    },
                    "categoryId" : "24"
                  }
                },
                {
                  "etag" : "\"j6xRRd8dTPVVptg711_CSPADRfg\\/CS4iKNVuGhwg7yy5k8lcQ3JgaEc\"",
                  "kind" : "youtube#video",
                  "id" : "OOe74uTO1Kg",
                  "statistics" : {
                    "favoriteCount" : "0",
                    "commentCount" : "1896",
                    "likeCount" : "10691",
                    "viewCount" : "76258",
                    "dislikeCount" : "209"
                  },
                  "contentDetails" : {
                    "dimension" : "2d",
                    "projection" : "rectangular",
                    "caption" : "false",
                    "definition" : "hd",
                    "licensedContent" : true,
                    "duration" : "PT22M18S"
                  },
                  "snippet" : {
                    "thumbnails" : {
                      "standard" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/OOe74uTO1Kg\\/sddefault.jpg",
                        "width" : 640,
                        "height" : 480
                      },
                      "medium" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/OOe74uTO1Kg\\/mqdefault.jpg",
                        "width" : 320,
                        "height" : 180
                      },
                      "default" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/OOe74uTO1Kg\\/default.jpg",
                        "width" : 120,
                        "height" : 90
                      },
                      "high" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/OOe74uTO1Kg\\/hqdefault.jpg",
                        "width" : 480,
                        "height" : 360
                      },
                      "maxres" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/OOe74uTO1Kg\\/maxresdefault.jpg",
                        "width" : 1280,
                        "height" : 720
                      }
                    },
                    "channelId" : "UCigoz5z4eB-yGZCZhzvdRFw",
                    "defaultAudioLanguage" : "ru",
                    "title" : "1000 спиннеров челлендж! КТО ПОСЛЕДНИЙ ПОЛУЧАЕТ ПРИЗ! ВОЛШЕБНЫЕ ПИТОМЦЫ СОРЕВНУЮТСЯ В СПИННЕРСТВЕ",
                    "publishedAt" : "2019-11-05T13:00:06.000Z",
                    "categoryId" : "24",
                    "localized" : {
                      "title" : "1000 спиннеров челлендж! КТО ПОСЛЕДНИЙ ПОЛУЧАЕТ ПРИЗ! ВОЛШЕБНЫЕ ПИТОМЦЫ СОРЕВНУЮТСЯ В СПИННЕРСТВЕ",
                      "description" : "Банный День для питомцев! Купаемся и моемся: https:\\/\\/youtu.be\\/WkYuAWc8OdA\nМеджик-Встреча с Сибири! 9 ноября, Зоомир, Красноярск, ул. Авиаторов, 19, МВДЦ Сибирь! Аня будет вас там ждать с 12 до 17 ▼ЖМИ ЕЩЕ▼\n\nПОДПИШИСЬ на Magic Pets - https:\\/\\/goo.gl\\/WBQw1j  - А в этом видео 1000 СПИННЕРОВ ЧЕЛЛЕНДЖ! КТО ПОСЛЕДНИЙ ПОЛУЧАЕТ ПРИЗ! ЧЕЙ СПИННЕР ЧЕМПИОН: ЮМИ, АЛИСА, МИША, СОФИ, ЭЙВАН? - волшебные питомцы Софи Сан, Эйван Бро, Миша Лайк, покемон Юми Чу и Киса Алиса решили устроить соревнования по спиннерству - супер спиннер #челлендж в котором будет 1000 самых разных спиннеров: стандартные, пластиковые и металлические, разноцветные и однотонные, с украшениями и светящиеся, необычные спиннеры, целая коллекция иноплатненых спиннеров и другие! Они разделят их на команды по своим цветам: розовый, сиреневый, желтый, голубой, салатовый, а другие цвета будут командами - соперниками, а еще будет команда супер спиннеров! И #ктопоследний остановится, тот и получит #подарок, который подготовила для них Аня! Получится ли у питомцев выбрать чемпионов из своих команд для соревнования и выиграет ли кто-нибудь из них в этом сложном челлендже? \n\nСОТРУДНИЧЕСТВО: adv@magic-family.ru\nНАШ ИНСТАГРАМ: https:\\/\\/goo.gl\\/NxGuKp\nАНИН ИНСТАГРАМ: https:\\/\\/goo.gl\\/RjeFZ5\nКанал Magic Family: https:\\/\\/goo.gl\\/OZtOql \nКанал Anny Magic: https:\\/\\/goo.gl\\/AECAZS\nAnny Magic Live: https:\\/\\/goo.gl\\/8FZUAK\nНАШ КОРМ Platinum: https:\\/\\/myplatinum.ru\nАня Вконтакте: http:\\/\\/vk.com\\/ilvreke\nАдрес: 249930, Калужская обл, Мосальск, Ленина, 49, а\\/я 238\n\nМы волшебные питомцы Anny Magic! Софи Сан, Эйван Бро, Миша Лайк, покемон Юми Чу, Киса Алиса и другие животные! Подпишись на приключения Меджик Петс и нажми колокольчик! Ставь Меджик лайк и пиши волшебный коммент! И загляни на наш общий семейный канал Мэджик Фэмили и личный канал хозяйки Энни Мэджик!"
                    },
                    "description" : "Банный День для питомцев! Купаемся и моемся: https:\\/\\/youtu.be\\/WkYuAWc8OdA\nМеджик-Встреча с Сибири! 9 ноября, Зоомир, Красноярск, ул. Авиаторов, 19, МВДЦ Сибирь! Аня будет вас там ждать с 12 до 17 ▼ЖМИ ЕЩЕ▼\n\nПОДПИШИСЬ на Magic Pets - https:\\/\\/goo.gl\\/WBQw1j  - А в этом видео 1000 СПИННЕРОВ ЧЕЛЛЕНДЖ! КТО ПОСЛЕДНИЙ ПОЛУЧАЕТ ПРИЗ! ЧЕЙ СПИННЕР ЧЕМПИОН: ЮМИ, АЛИСА, МИША, СОФИ, ЭЙВАН? - волшебные питомцы Софи Сан, Эйван Бро, Миша Лайк, покемон Юми Чу и Киса Алиса решили устроить соревнования по спиннерству - супер спиннер #челлендж в котором будет 1000 самых разных спиннеров: стандартные, пластиковые и металлические, разноцветные и однотонные, с украшениями и светящиеся, необычные спиннеры, целая коллекция иноплатненых спиннеров и другие! Они разделят их на команды по своим цветам: розовый, сиреневый, желтый, голубой, салатовый, а другие цвета будут командами - соперниками, а еще будет команда супер спиннеров! И #ктопоследний остановится, тот и получит #подарок, который подготовила для них Аня! Получится ли у питомцев выбрать чемпионов из своих команд для соревнования и выиграет ли кто-нибудь из них в этом сложном челлендже? \n\nСОТРУДНИЧЕСТВО: adv@magic-family.ru\nНАШ ИНСТАГРАМ: https:\\/\\/goo.gl\\/NxGuKp\nАНИН ИНСТАГРАМ: https:\\/\\/goo.gl\\/RjeFZ5\nКанал Magic Family: https:\\/\\/goo.gl\\/OZtOql \nКанал Anny Magic: https:\\/\\/goo.gl\\/AECAZS\nAnny Magic Live: https:\\/\\/goo.gl\\/8FZUAK\nНАШ КОРМ Platinum: https:\\/\\/myplatinum.ru\nАня Вконтакте: http:\\/\\/vk.com\\/ilvreke\nАдрес: 249930, Калужская обл, Мосальск, Ленина, 49, а\\/я 238\n\nМы волшебные питомцы Anny Magic! Софи Сан, Эйван Бро, Миша Лайк, покемон Юми Чу, Киса Алиса и другие животные! Подпишись на приключения Меджик Петс и нажми колокольчик! Ставь Меджик лайк и пиши волшебный коммент! И загляни на наш общий семейный канал Мэджик Фэмили и личный канал хозяйки Энни Мэджик!",
                    "liveBroadcastContent" : "none",
                    "tags" : [
                      "новый челлендж",
                      "челлендж",
                      "24 часа",
                      "эксперемент",
                      "смешные кошки",
                      "смешные розыгрыши",
                      "что делать если скучно",
                      "кошка",
                      "кот",
                      "настоящие животные",
                      "против животных",
                      "кто последний"
                    ],
                    "channelTitle" : "Magic Pets"
                  }
                },
                {
                  "etag" : "\"j6xRRd8dTPVVptg711_CSPADRfg\\/CczAu8WLPJ3zKu_5YDvhtBp5Jzg\"",
                  "kind" : "youtube#video",
                  "id" : "jHr2do5dZYg",
                  "statistics" : {
                    "favoriteCount" : "0",
                    "commentCount" : "14104",
                    "likeCount" : "61594",
                    "viewCount" : "329120",
                    "dislikeCount" : "332"
                  },
                  "contentDetails" : {
                    "dimension" : "2d",
                    "projection" : "rectangular",
                    "caption" : "false",
                    "definition" : "hd",
                    "licensedContent" : true,
                    "duration" : "PT16M8S"
                  },
                  "snippet" : {
                    "description" : "Друзья! Все недовольство нашей жесткой критикой и принципиальной позицией в отношении руководства Саратовской областной думы выплескивается в конкретные шаги.\n\nНа протяжение всего периода моего депутатства они всячески закручивают гайки и, в частности, уверенно урезают наши права как депутатов.\n\nВы можете помнить, как некоторое время назад после пенсионной реформы и «макарошек», они пытались запретить проносить видеокамеру в думу и т.д., но обожглись и поняли, что поступать нужно тоньше...\n\nТеперь предлагается устанавливать временный регламент перед каждой думой, по которому мне, как депутату, будет фактически запрещено выражать своё мнение!\n\nВ несколько раз сокращено время,  которое мне дается на внесение изменений в повестку дня, а также время, выделенное на обсуждение важнейших тем. Все наши предложения теперь должны подаваться только в письменном виде и за несколько дней до заседания. Депутат навязаны новые бюрократические процедуры. \n\nИ, самое главное, за любое неповиновение тебя лишают слова,  немедленно выключают микрофон и удаляют из зала...\n\nКороче, как говорил бывший председатель госдумы видный единоросс Борис Грызлов: «Парламент не место для дискуссий»!\n\nОднако все эти тухлые попытки заткнуть нам рты, конечно, не будут иметь никакого результата, а только ещё больше разозлят нас!\n\nЕсли они планируют выключать мне микрофон, я вполне могу себе позволить приходить со своим. В конце концов я депутат, который отстаивает интересы людей, а это, как практика показывает, иной раз приходиться делать в бою!\n\nА как вы считаете, приходить в думу с мегафоном (если меня фактически бегают слова) для того, чтобы озвучивать проблемы людей и требовать от чиновников их решения, это правильная позиция или перебор?\n\n★ КАРТА СБЕР 4817 7601 1280 6017 Николай Николаевич Б.\n★ ДОНАТЫ https:\\/\\/donatepay.ru\\/don\\/224115\n\nСТАНЬ ДОБРОВОЛЬЦЕМ: http:\\/\\/sar.chazki.ru (только для жителей Саратовской области)\n\n​★ ВТОРОЙ КАНАЛ https:\\/\\/www.youtube.com\\/channel\\/UCpE6y3La9cUl5h_MZiecisg\n★ САЙТ: ​https:\\/\\/bondarenkoblog.ru\\/\n★ vk.com ► https:\\/\\/goo.gl\\/lRRd9Q \n★ Instagram.com ► https:\\/\\/www.instagram.com\\/bondarenko_blog\\/\n★ facebook.com ► https:\\/\\/goo.gl\\/Iswljm \n★ Группа vk.com ► https:\\/\\/vk.com\\/nikolaibondarenko64\n★ Telegram https:\\/\\/t.me\\/nbondarenko_blog\n\n★ comrad@bondarenkoblog.ru если не связались по заявке на вступление",
                    "channelId" : "UCwLTi_1yOgDNf9i3bhBibCA",
                    "publishedAt" : "2019-11-05T07:20:03.000Z",
                    "tags" : [
                      "дневник депутата",
                      "дневник",
                      "депутат",
                      "николай бондаренко",
                      "бондаренко",
                      "дума",
                      "кпрф",
                      "москва",
                      "коммунист",
                      "коммунизм",
                      "сталин",
                      "ссср",
                      "зюганов",
                      "протест",
                      "митинг",
                      "забастовка",
                      "пикет",
                      "оппозиция",
                      "власть",
                      "президент",
                      "путин",
                      "putin",
                      "министр",
                      "правительство",
                      "чиновник",
                      "коррупция",
                      "медведев",
                      "суд",
                      "полиция",
                      "росгвардия",
                      "омон",
                      "задержания",
                      "аресты",
                      "олигархи",
                      "сечин",
                      "миллер",
                      "усманов",
                      "навальный",
                      "соболь",
                      "новости",
                      "россия",
                      "60 минут",
                      "мегафон",
                      "лишение слова",
                      "заседание",
                      "регламент",
                      "обсуждение",
                      "задержание",
                      "наручники",
                      "мусора",
                      "полицаи",
                      "копы",
                      "политзаключенные",
                      "давление",
                      "репрессии"
                    ],
                    "title" : "Полиция пришла за мной в думу! Трусы лишили слова",
                    "liveBroadcastContent" : "none",
                    "defaultLanguage" : "ru",
                    "defaultAudioLanguage" : "ru",
                    "channelTitle" : "Дневник Депутата",
                    "thumbnails" : {
                      "standard" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/jHr2do5dZYg\\/sddefault.jpg",
                        "width" : 640,
                        "height" : 480
                      },
                      "medium" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/jHr2do5dZYg\\/mqdefault.jpg",
                        "width" : 320,
                        "height" : 180
                      },
                      "default" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/jHr2do5dZYg\\/default.jpg",
                        "width" : 120,
                        "height" : 90
                      },
                      "high" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/jHr2do5dZYg\\/hqdefault.jpg",
                        "width" : 480,
                        "height" : 360
                      },
                      "maxres" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/jHr2do5dZYg\\/maxresdefault.jpg",
                        "width" : 1280,
                        "height" : 720
                      }
                    },
                    "localized" : {
                      "title" : "Полиция пришла за мной в думу! Трусы лишили слова",
                      "description" : "Друзья! Все недовольство нашей жесткой критикой и принципиальной позицией в отношении руководства Саратовской областной думы выплескивается в конкретные шаги.\n\nНа протяжение всего периода моего депутатства они всячески закручивают гайки и, в частности, уверенно урезают наши права как депутатов.\n\nВы можете помнить, как некоторое время назад после пенсионной реформы и «макарошек», они пытались запретить проносить видеокамеру в думу и т.д., но обожглись и поняли, что поступать нужно тоньше...\n\nТеперь предлагается устанавливать временный регламент перед каждой думой, по которому мне, как депутату, будет фактически запрещено выражать своё мнение!\n\nВ несколько раз сокращено время,  которое мне дается на внесение изменений в повестку дня, а также время, выделенное на обсуждение важнейших тем. Все наши предложения теперь должны подаваться только в письменном виде и за несколько дней до заседания. Депутат навязаны новые бюрократические процедуры. \n\nИ, самое главное, за любое неповиновение тебя лишают слова,  немедленно выключают микрофон и удаляют из зала...\n\nКороче, как говорил бывший председатель госдумы видный единоросс Борис Грызлов: «Парламент не место для дискуссий»!\n\nОднако все эти тухлые попытки заткнуть нам рты, конечно, не будут иметь никакого результата, а только ещё больше разозлят нас!\n\nЕсли они планируют выключать мне микрофон, я вполне могу себе позволить приходить со своим. В конце концов я депутат, который отстаивает интересы людей, а это, как практика показывает, иной раз приходиться делать в бою!\n\nА как вы считаете, приходить в думу с мегафоном (если меня фактически бегают слова) для того, чтобы озвучивать проблемы людей и требовать от чиновников их решения, это правильная позиция или перебор?\n\n★ КАРТА СБЕР 4817 7601 1280 6017 Николай Николаевич Б.\n★ ДОНАТЫ https:\\/\\/donatepay.ru\\/don\\/224115\n\nСТАНЬ ДОБРОВОЛЬЦЕМ: http:\\/\\/sar.chazki.ru (только для жителей Саратовской области)\n\n​★ ВТОРОЙ КАНАЛ https:\\/\\/www.youtube.com\\/channel\\/UCpE6y3La9cUl5h_MZiecisg\n★ САЙТ: ​https:\\/\\/bondarenkoblog.ru\\/\n★ vk.com ► https:\\/\\/goo.gl\\/lRRd9Q \n★ Instagram.com ► https:\\/\\/www.instagram.com\\/bondarenko_blog\\/\n★ facebook.com ► https:\\/\\/goo.gl\\/Iswljm \n★ Группа vk.com ► https:\\/\\/vk.com\\/nikolaibondarenko64\n★ Telegram https:\\/\\/t.me\\/nbondarenko_blog\n\n★ comrad@bondarenkoblog.ru если не связались по заявке на вступление"
                    },
                    "categoryId" : "25"
                  }
                },
                {
                  "etag" : "\"j6xRRd8dTPVVptg711_CSPADRfg\\/cabJEcoAfoezUrNjAsdeqz4VTrw\"",
                  "kind" : "youtube#video",
                  "id" : "6ooOI3xV5rA",
                  "statistics" : {
                    "favoriteCount" : "0",
                    "commentCount" : "4",
                    "likeCount" : "1137",
                    "viewCount" : "123677",
                    "dislikeCount" : "756"
                  },
                  "contentDetails" : {
                    "dimension" : "2d",
                    "projection" : "rectangular",
                    "caption" : "false",
                    "definition" : "hd",
                    "licensedContent" : true,
                    "duration" : "PT48M30S"
                  },
                  "snippet" : {
                    "thumbnails" : {
                      "standard" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/6ooOI3xV5rA\\/sddefault.jpg",
                        "width" : 640,
                        "height" : 480
                      },
                      "medium" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/6ooOI3xV5rA\\/mqdefault.jpg",
                        "width" : 320,
                        "height" : 180
                      },
                      "default" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/6ooOI3xV5rA\\/default.jpg",
                        "width" : 120,
                        "height" : 90
                      },
                      "high" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/6ooOI3xV5rA\\/hqdefault.jpg",
                        "width" : 480,
                        "height" : 360
                      }
                    },
                    "channelId" : "UC_KOX3XH2_M21ssdZ4httKA",
                    "defaultAudioLanguage" : "ru",
                    "title" : "Машинки - Сборник Лидеры просмотров  | Новый мультсериал для мальчиков",
                    "publishedAt" : "2019-11-05T10:00:02.000Z",
                    "categoryId" : "1",
                    "localized" : {
                      "title" : "Машинки - Сборник Лидеры просмотров  | Новый мультсериал для мальчиков",
                      "description" : "Любимые серии Машинок в большом сборнике!\n \nВстречайте новую большую яркую коллекцию деревянных машинок из нашего мультсериала «Машинки (сериал для мальчиков)» на сайте https:\\/\\/derevyasher.ru\\/category\\/mashinki-letayushih-zverej\\/\n \nНаш номер для sms-пожертвований! Если вам нравятся наши мультфильмы, и вы хотите поддержать благотворительный фонд AdVita, отправьте sms со словом Fly (пробел) сумма (цифрой) на номер 3434. Все собранные средства идут на оплату лекарств и лечение подопечных фонда! Помогать легко!\n \n«Летающие звери» — первый благотворительный сериал: прибыль от товаров с изображениями персонажей этого мультфильма идет на лечение детей. Покупая любую вещь с летающими зверями бренда \"Помогать легко\", вы делаете доброе дело, помогаете спасти жизнь.\nБольше, чем лайк! Каждый ваш лайк — это помощь проекту.\n \nПожалуйста, подпишитесь на наш канал: http:\\/\\/www.youtube.com\\/user\\/FlyingAni...\nFB: http:\\/\\/facebook.com\\/flyinganimals\nВК: http:\\/\\/vk.com\\/flying_animals\nОК: https:\\/\\/ok.ru\\/flyinganimals\nINSTM: https:\\/\\/www.instagram.com\\/flying_animals\\/"
                    },
                    "description" : "Любимые серии Машинок в большом сборнике!\n \nВстречайте новую большую яркую коллекцию деревянных машинок из нашего мультсериала «Машинки (сериал для мальчиков)» на сайте https:\\/\\/derevyasher.ru\\/category\\/mashinki-letayushih-zverej\\/\n \nНаш номер для sms-пожертвований! Если вам нравятся наши мультфильмы, и вы хотите поддержать благотворительный фонд AdVita, отправьте sms со словом Fly (пробел) сумма (цифрой) на номер 3434. Все собранные средства идут на оплату лекарств и лечение подопечных фонда! Помогать легко!\n \n«Летающие звери» — первый благотворительный сериал: прибыль от товаров с изображениями персонажей этого мультфильма идет на лечение детей. Покупая любую вещь с летающими зверями бренда \"Помогать легко\", вы делаете доброе дело, помогаете спасти жизнь.\nБольше, чем лайк! Каждый ваш лайк — это помощь проекту.\n \nПожалуйста, подпишитесь на наш канал: http:\\/\\/www.youtube.com\\/user\\/FlyingAni...\nFB: http:\\/\\/facebook.com\\/flyinganimals\nВК: http:\\/\\/vk.com\\/flying_animals\nОК: https:\\/\\/ok.ru\\/flyinganimals\nINSTM: https:\\/\\/www.instagram.com\\/flying_animals\\/",
                    "liveBroadcastContent" : "none",
                    "tags" : [
                      "мультфильм про машинки",
                      "познавательный мультфильм",
                      "развивающий мультик",
                      "мультфильм для мальчиков",
                      "детский мультфильм",
                      "мультфильм для детей",
                      "мультфильм",
                      "машинки",
                      "про машинки",
                      "для детей",
                      "обучающий мультфильм",
                      "деревянные машинки",
                      "правила дорожного движения",
                      "мультики про машинки",
                      "сборник машинок",
                      "машинки ютуб",
                      "funny animation",
                      "мультики для мальчиков",
                      "полицейская",
                      "в атопрокате",
                      "на парковке",
                      "пожарная",
                      "снегоуборочная",
                      "почтовый фургон",
                      "минивэн",
                      "лимузин",
                      "погрузчик",
                      "на переезде"
                    ],
                    "channelTitle" : "Летающие Звери"
                  }
                },
                {
                  "etag" : "\"j6xRRd8dTPVVptg711_CSPADRfg\\/orHYXzAwij6__Ukx9fPNOugrL-w\"",
                  "kind" : "youtube#video",
                  "id" : "40eZkcQt-7I",
                  "statistics" : {
                    "favoriteCount" : "0",
                    "commentCount" : "2670",
                    "likeCount" : "32019",
                    "viewCount" : "476752",
                    "dislikeCount" : "1218"
                  },
                  "contentDetails" : {
                    "dimension" : "2d",
                    "projection" : "rectangular",
                    "caption" : "false",
                    "definition" : "hd",
                    "licensedContent" : true,
                    "duration" : "PT10M5S"
                  },
                  "snippet" : {
                    "description" : "прomокoд -  GARAG54\nХочешь Camaro? Тебе сюда http:\\/\\/garage54.ru\\/garage_camaro\n\nМы в Instagram https:\\/\\/www.instagram.com\\/garage__54\\/\nНаш LIFE канал (приколы со съемок и не только) https:\\/\\/goo.gl\\/Emk1ZC\nПоддержи канал - купи наклейку https:\\/\\/garage54.ru\\/\nНаша группа ВКонтакте https:\\/\\/vk.com\\/garage__54\n\nДля коммерческих запросов:\nпочта: promo@garage54.ru\nВК: https:\\/\\/vk.com\\/alex_spz",
                    "channelId" : "UCBByzLy3MGJT8UMVLYLScNg",
                    "publishedAt" : "2019-11-05T09:00:00.000Z",
                    "tags" : [
                      "гараж54",
                      "garage54",
                      "гараж",
                      "54",
                      "воссены",
                      "vossen",
                      "своими руками",
                      "самодельный диск",
                      "литьё",
                      "самодельный литой диск",
                      "воссены своими руками"
                    ],
                    "title" : "Как сделать ВОССЕНЫ из ШТАМПОВКИ СВОИМИ РУКАМИ?",
                    "liveBroadcastContent" : "none",
                    "defaultLanguage" : "ru",
                    "defaultAudioLanguage" : "ru",
                    "channelTitle" : "Гараж 54",
                    "thumbnails" : {
                      "standard" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/40eZkcQt-7I\\/sddefault.jpg",
                        "width" : 640,
                        "height" : 480
                      },
                      "medium" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/40eZkcQt-7I\\/mqdefault.jpg",
                        "width" : 320,
                        "height" : 180
                      },
                      "default" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/40eZkcQt-7I\\/default.jpg",
                        "width" : 120,
                        "height" : 90
                      },
                      "high" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/40eZkcQt-7I\\/hqdefault.jpg",
                        "width" : 480,
                        "height" : 360
                      },
                      "maxres" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/40eZkcQt-7I\\/maxresdefault.jpg",
                        "width" : 1280,
                        "height" : 720
                      }
                    },
                    "localized" : {
                      "title" : "Как сделать ВОССЕНЫ из ШТАМПОВКИ СВОИМИ РУКАМИ?",
                      "description" : "прomокoд -  GARAG54\nХочешь Camaro? Тебе сюда http:\\/\\/garage54.ru\\/garage_camaro\n\nМы в Instagram https:\\/\\/www.instagram.com\\/garage__54\\/\nНаш LIFE канал (приколы со съемок и не только) https:\\/\\/goo.gl\\/Emk1ZC\nПоддержи канал - купи наклейку https:\\/\\/garage54.ru\\/\nНаша группа ВКонтакте https:\\/\\/vk.com\\/garage__54\n\nДля коммерческих запросов:\nпочта: promo@garage54.ru\nВК: https:\\/\\/vk.com\\/alex_spz"
                    },
                    "categoryId" : "2"
                  }
                },
                {
                  "etag" : "\"j6xRRd8dTPVVptg711_CSPADRfg\\/NF2TlA3RQ3h-ThnZofhY34EPqGI\"",
                  "kind" : "youtube#video",
                  "id" : "E2TFjoaBWY4",
                  "statistics" : {
                    "favoriteCount" : "0",
                    "commentCount" : "34825",
                    "likeCount" : "757570",
                    "viewCount" : "3206565",
                    "dislikeCount" : "12290"
                  },
                  "contentDetails" : {
                    "dimension" : "2d",
                    "projection" : "rectangular",
                    "caption" : "true",
                    "definition" : "hd",
                    "licensedContent" : true,
                    "duration" : "PT37M22S"
                  },
                  "snippet" : {
                    "description" : "11 Ноября начинается грандиозная распродажа только на AliExpress: \nhttps:\\/\\/aliclick.ru\\/zdVoX\\/\nПромокод ALISALE10\nСкидка 10$ на покупки от 100$ \nПромокод действует с 11 по 12 ноября!\n\nУчаствуй в распродаже 11.11 AliExpress — http:\\/\\/bit.ly\\/2oP64SA скидки до 70% и кэшбэк до 5%!\nУстанавливай расширение LetyShops — http:\\/\\/bit.ly\\/2Ndv675 и покупай у честных продавцов с настоящими скидками.\n\nМастхэв товары для холостяка:\nФутболки на каждый день - https:\\/\\/ali.ski\\/uNbkr\nПовседневные носки - https:\\/\\/ali.ski\\/-fqij\nФитнес-браслет Mi Band 4 - https:\\/\\/ali.ski\\/KkCJPB\nПортативная колонка Marshall - https:\\/\\/ali.ski\\/YUnfc\n\n--------------------\n\nПодпишитесь на канал Эдварда Била: https:\\/\\/www.youtube.com\\/channel\\/UCjFPu8rOAk1hleLQH6-7_Hg\n\n--------------------\n\nВпервые под куполом цирка шоу «Каменные лица». \nЛещи по правилам «русской рулетки».\nКто рискнёт выйти против Папы и Пельменя?\nСупермен из Екатеринбурга против земляка Амирана. \n500 тысяч лайков и Бил выйдет против Пельменя.\n\n--------------------\n\nСсылки на соц сети: \nИнста: http:\\/\\/instagram.com\\/amiran495\n Моя страница: https:\\/\\/vk.com\\/amirans \nГруппа: https:\\/\\/vk.com\\/dnevnikxacha\n\nБИТВА ЗА ХАЙП в ВК: http:\\/\\/bit.ly\\/2WpkpRV\n\n--------------------\n\nProduction Music courtesy of Epidemic Sound\n#АмиранСардаров #ДневникХача #КаменныеЛица #БитваЗаХайп #EdwardBil #ЭдвардБил\n\nTrack: Lukasoprom - Say My Name\nProvided By: Magic Records\nStream\\/Download: fanlink.to\\/Jhaw\n\nTrack: Julius Dreisig - In My Head\nProvided By: Magic Records\nStream\\/ Download: fanlink.to\\/TsE\n\nTrack: MOHA X FALCO - WRCKD\nProvided By: Magic Records\nStream\\/Download: fanlink.to\\/wrckd\n\nTrack: SDMS - Revenge [Magic Release]\nMusic Provided By: Magic Records\nListen To The Original: bit.ly\\/2F4lNCX\nFanlink: fanlink.to\\/rvgn\n\nOnur Ormen x BIOJECT - Pursuit (No Copyright)\n✔ Stream\\/Download: fanlink.to\\/sas\n\n⚡Artist Fanlink: fanlink.to\\/FZ6 Deafmind - Trvp or Die [VIP]",
                    "channelId" : "UCnbxcA3kZ_uUYIBHNvxpDQw",
                    "publishedAt" : "2019-11-04T16:25:08.000Z",
                    "tags" : [
                      "дневник хача",
                      "амиран сардаров",
                      "каменные лица",
                      "stone faces",
                      "slap competition",
                      "slap contest",
                      "эдвард бил",
                      "цирк братьев запашных",
                      "пощёчины",
                      "шапалак",
                      "зомбибой",
                      "зомби бой"
                    ],
                    "title" : "Папа 220кг и Пельмень вырубают Зомбибоев. Каменные лица в Цирке",
                    "liveBroadcastContent" : "none",
                    "defaultLanguage" : "ru",
                    "defaultAudioLanguage" : "ru",
                    "channelTitle" : "ДНЕВНИК ХАЧА",
                    "thumbnails" : {
                      "standard" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/E2TFjoaBWY4\\/sddefault.jpg",
                        "width" : 640,
                        "height" : 480
                      },
                      "medium" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/E2TFjoaBWY4\\/mqdefault.jpg",
                        "width" : 320,
                        "height" : 180
                      },
                      "default" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/E2TFjoaBWY4\\/default.jpg",
                        "width" : 120,
                        "height" : 90
                      },
                      "high" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/E2TFjoaBWY4\\/hqdefault.jpg",
                        "width" : 480,
                        "height" : 360
                      },
                      "maxres" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/E2TFjoaBWY4\\/maxresdefault.jpg",
                        "width" : 1280,
                        "height" : 720
                      }
                    },
                    "localized" : {
                      "title" : "Папа 220кг и Пельмень вырубают Зомбибоев. Каменные лица в Цирке",
                      "description" : "11 Ноября начинается грандиозная распродажа только на AliExpress: \nhttps:\\/\\/aliclick.ru\\/zdVoX\\/\nПромокод ALISALE10\nСкидка 10$ на покупки от 100$ \nПромокод действует с 11 по 12 ноября!\n\nУчаствуй в распродаже 11.11 AliExpress — http:\\/\\/bit.ly\\/2oP64SA скидки до 70% и кэшбэк до 5%!\nУстанавливай расширение LetyShops — http:\\/\\/bit.ly\\/2Ndv675 и покупай у честных продавцов с настоящими скидками.\n\nМастхэв товары для холостяка:\nФутболки на каждый день - https:\\/\\/ali.ski\\/uNbkr\nПовседневные носки - https:\\/\\/ali.ski\\/-fqij\nФитнес-браслет Mi Band 4 - https:\\/\\/ali.ski\\/KkCJPB\nПортативная колонка Marshall - https:\\/\\/ali.ski\\/YUnfc\n\n--------------------\n\nПодпишитесь на канал Эдварда Била: https:\\/\\/www.youtube.com\\/channel\\/UCjFPu8rOAk1hleLQH6-7_Hg\n\n--------------------\n\nВпервые под куполом цирка шоу «Каменные лица». \nЛещи по правилам «русской рулетки».\nКто рискнёт выйти против Папы и Пельменя?\nСупермен из Екатеринбурга против земляка Амирана. \n500 тысяч лайков и Бил выйдет против Пельменя.\n\n--------------------\n\nСсылки на соц сети: \nИнста: http:\\/\\/instagram.com\\/amiran495\n Моя страница: https:\\/\\/vk.com\\/amirans \nГруппа: https:\\/\\/vk.com\\/dnevnikxacha\n\nБИТВА ЗА ХАЙП в ВК: http:\\/\\/bit.ly\\/2WpkpRV\n\n--------------------\n\nProduction Music courtesy of Epidemic Sound\n#АмиранСардаров #ДневникХача #КаменныеЛица #БитваЗаХайп #EdwardBil #ЭдвардБил\n\nTrack: Lukasoprom - Say My Name\nProvided By: Magic Records\nStream\\/Download: fanlink.to\\/Jhaw\n\nTrack: Julius Dreisig - In My Head\nProvided By: Magic Records\nStream\\/ Download: fanlink.to\\/TsE\n\nTrack: MOHA X FALCO - WRCKD\nProvided By: Magic Records\nStream\\/Download: fanlink.to\\/wrckd\n\nTrack: SDMS - Revenge [Magic Release]\nMusic Provided By: Magic Records\nListen To The Original: bit.ly\\/2F4lNCX\nFanlink: fanlink.to\\/rvgn\n\nOnur Ormen x BIOJECT - Pursuit (No Copyright)\n✔ Stream\\/Download: fanlink.to\\/sas\n\n⚡Artist Fanlink: fanlink.to\\/FZ6 Deafmind - Trvp or Die [VIP]"
                    },
                    "categoryId" : "22"
                  }
                },
                {
                  "etag" : "\"j6xRRd8dTPVVptg711_CSPADRfg\\/S4rJMtoO-X47mpGSSQoYosaUWIk\"",
                  "kind" : "youtube#video",
                  "id" : "J4DXrXPkgMw",
                  "statistics" : {
                    "favoriteCount" : "0",
                    "commentCount" : "1262",
                    "likeCount" : "17620",
                    "viewCount" : "143168",
                    "dislikeCount" : "283"
                  },
                  "contentDetails" : {
                    "dimension" : "2d",
                    "projection" : "rectangular",
                    "caption" : "false",
                    "definition" : "hd",
                    "licensedContent" : true,
                    "duration" : "PT12M32S"
                  },
                  "snippet" : {
                    "thumbnails" : {
                      "standard" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/J4DXrXPkgMw\\/sddefault.jpg",
                        "width" : 640,
                        "height" : 480
                      },
                      "medium" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/J4DXrXPkgMw\\/mqdefault.jpg",
                        "width" : 320,
                        "height" : 180
                      },
                      "default" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/J4DXrXPkgMw\\/default.jpg",
                        "width" : 120,
                        "height" : 90
                      },
                      "high" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/J4DXrXPkgMw\\/hqdefault.jpg",
                        "width" : 480,
                        "height" : 360
                      },
                      "maxres" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/J4DXrXPkgMw\\/maxresdefault.jpg",
                        "width" : 1280,
                        "height" : 720
                      }
                    },
                    "channelId" : "UCuZeiI5pdpgqDojXZujoYgg",
                    "defaultAudioLanguage" : "ru",
                    "title" : "САМЫЕ СТРАННЫЕ ЛАЙФХАКИ С ЕДОЙ",
                    "publishedAt" : "2019-11-05T13:05:25.000Z",
                    "categoryId" : "24",
                    "localized" : {
                      "title" : "САМЫЕ СТРАННЫЕ ЛАЙФХАКИ С ЕДОЙ",
                      "description" : "●ОЧЕНЬ СТРАННЫЕ ЛАЙФХАКИ С ЕДОЙ С КАНАЛА 5-Minute Crafts!\n\n●https:\\/\\/instagram.com\\/pozzifir\\/ - Моя Инста\n●https:\\/\\/vk.com\\/pozzitifonshow - Моя страничка ВК\n●http:\\/\\/vk.com\\/pozzitifshow - Группа ВК"
                    },
                    "description" : "●ОЧЕНЬ СТРАННЫЕ ЛАЙФХАКИ С ЕДОЙ С КАНАЛА 5-Minute Crafts!\n\n●https:\\/\\/instagram.com\\/pozzifir\\/ - Моя Инста\n●https:\\/\\/vk.com\\/pozzitifonshow - Моя страничка ВК\n●http:\\/\\/vk.com\\/pozzitifshow - Группа ВК",
                    "liveBroadcastContent" : "none",
                    "tags" : [
                      "Поззи",
                      "Лайфхаки",
                      "Лайфхаки с едой",
                      "5 минут крафт",
                      "5-Minute Crafts"
                    ],
                    "channelTitle" : "Поззи"
                  }
                },
                {
                  "etag" : "\"j6xRRd8dTPVVptg711_CSPADRfg\\/xlrIuJZblnTh10lqnKXOOVUyA48\"",
                  "kind" : "youtube#video",
                  "id" : "X1UU07zY_OQ",
                  "statistics" : {
                    "favoriteCount" : "0",
                    "commentCount" : "119",
                    "likeCount" : "1534",
                    "viewCount" : "38880",
                    "dislikeCount" : "33"
                  },
                  "contentDetails" : {
                    "dimension" : "2d",
                    "projection" : "rectangular",
                    "caption" : "false",
                    "definition" : "hd",
                    "licensedContent" : true,
                    "duration" : "PT23M14S"
                  },
                  "snippet" : {
                    "thumbnails" : {
                      "standard" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/X1UU07zY_OQ\\/sddefault.jpg",
                        "width" : 640,
                        "height" : 480
                      },
                      "medium" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/X1UU07zY_OQ\\/mqdefault.jpg",
                        "width" : 320,
                        "height" : 180
                      },
                      "default" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/X1UU07zY_OQ\\/default.jpg",
                        "width" : 120,
                        "height" : 90
                      },
                      "high" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/X1UU07zY_OQ\\/hqdefault.jpg",
                        "width" : 480,
                        "height" : 360
                      },
                      "maxres" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/X1UU07zY_OQ\\/maxresdefault.jpg",
                        "width" : 1280,
                        "height" : 720
                      }
                    },
                    "channelId" : "UCHtvgXPPVX5X5BXP8cu7riQ",
                    "defaultAudioLanguage" : "ru",
                    "title" : "Сериал ИП Пирогова 2 сезон 2 серия",
                    "publishedAt" : "2019-11-05T09:30:01.000Z",
                    "categoryId" : "24",
                    "localized" : {
                      "title" : "Сериал ИП Пирогова 2 сезон 2 серия",
                      "description" : "Вкусный сериал «ИП Пирогова» на телеканале Супер с понедельника по четверг в 21:00, а сразу после эфира бесплатно на сайте канала: https:\\/\\/superkanal.ru\\/tvseries\\/pirogova\\/\n\nПодписывайся на телеканал Супер в социальных сетях, чтобы следить за новостями о сериале:\nВКонтакте: https:\\/\\/vk.com\\/superkanal\nFacebook: https:\\/\\/www.facebook.com\\/tvsuper\\/\nInstagram: https:\\/\\/www.instagram.com\\/super_kanal\\/\nОдноклассники: https:\\/\\/www.ok.ru\\/superkanal"
                    },
                    "description" : "Вкусный сериал «ИП Пирогова» на телеканале Супер с понедельника по четверг в 21:00, а сразу после эфира бесплатно на сайте канала: https:\\/\\/superkanal.ru\\/tvseries\\/pirogova\\/\n\nПодписывайся на телеканал Супер в социальных сетях, чтобы следить за новостями о сериале:\nВКонтакте: https:\\/\\/vk.com\\/superkanal\nFacebook: https:\\/\\/www.facebook.com\\/tvsuper\\/\nInstagram: https:\\/\\/www.instagram.com\\/super_kanal\\/\nОдноклассники: https:\\/\\/www.ok.ru\\/superkanal",
                    "liveBroadcastContent" : "none",
                    "tags" : [
                      "ИП Пирогова",
                      "второй сезон",
                      "новые серии",
                      "серия полностью",
                      "бесмплатьно",
                      "комедия",
                      "комедийный сериал",
                      "подкаминская",
                      "кухня",
                      "отель элеон",
                      "канал супер",
                      "телеканал супер",
                      "супер канал",
                      "юсковец",
                      "сериал",
                      "про поваров",
                      "про кондитеров",
                      "новый сезон пироговой",
                      "2 сезон",
                      "новый сезон",
                      "премьера"
                    ],
                    "channelTitle" : "Супер Сериал"
                  }
                },
                {
                  "etag" : "\"j6xRRd8dTPVVptg711_CSPADRfg\\/Gs-QkgX9wonOsGhUvcpbMUcHwwU\"",
                  "kind" : "youtube#video",
                  "id" : "2Cye3kepjTo",
                  "statistics" : {
                    "favoriteCount" : "0",
                    "commentCount" : "4832",
                    "likeCount" : "40867",
                    "viewCount" : "189263",
                    "dislikeCount" : "233"
                  },
                  "contentDetails" : {
                    "dimension" : "2d",
                    "projection" : "rectangular",
                    "caption" : "false",
                    "definition" : "hd",
                    "licensedContent" : true,
                    "duration" : "PT18M39S"
                  },
                  "snippet" : {
                    "thumbnails" : {
                      "standard" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/2Cye3kepjTo\\/sddefault.jpg",
                        "width" : 640,
                        "height" : 480
                      },
                      "medium" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/2Cye3kepjTo\\/mqdefault.jpg",
                        "width" : 320,
                        "height" : 180
                      },
                      "default" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/2Cye3kepjTo\\/default.jpg",
                        "width" : 120,
                        "height" : 90
                      },
                      "high" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/2Cye3kepjTo\\/hqdefault.jpg",
                        "width" : 480,
                        "height" : 360
                      },
                      "maxres" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/2Cye3kepjTo\\/maxresdefault.jpg",
                        "width" : 1280,
                        "height" : 720
                      }
                    },
                    "channelId" : "UCNx-3_1rpE-UN8tfIZAs5yg",
                    "defaultAudioLanguage" : "ru",
                    "title" : "САМАЯ ЖУТКАЯ НОЧЬ С КЛОУНОМ! ОН ПОЙМАЛ НАС",
                    "publishedAt" : "2019-11-05T13:45:12.000Z",
                    "categoryId" : "22",
                    "localized" : {
                      "title" : "САМАЯ ЖУТКАЯ НОЧЬ С КЛОУНОМ! ОН ПОЙМАЛ НАС",
                      "description" : "САМАЯ ЖУТКАЯ НОЧЬ С КЛОУНОМ! ОН ПОЙМАЛ НАС\n\nЖЕСТЬ ИНСТАГРАМ : https:\\/\\/www.instagram.com\\/anayporter\nМОЙ ПАРЕНЬ https:\\/\\/www.instagram.com\\/youungeer\\/\n\nВКОНТАКТЕ : https:\\/\\/vk.com\\/anna_porter\nТВИТТЕР : https:\\/\\/twitter.com\\/anayporterlife?la...\nОФ.ГРУППА : https:\\/\\/vk.com\\/porter_anna\nНИК В TIK TOK : anayporter\n\nДля сотрудничества\\/пиара : ms.anna.porter@mail.ru\n\nЯ Аня Портер и я очень жду тебя на своем канале.Тут ты можешь увидеть видео на разную тематику : страшные и стремные истории из моей жизни, челлендж,покупки,бьюти видео и многое другое. Оставляй комментарий под каждым видео и ставь палец вверх, подписывайся на меня в соц сетях, а если ты уже это сделал, ТО СПАСИБО ТЕБЕ ОГРОМНОЕ, ЧТО ТЫ РЯДОМ СО МНОЙ"
                    },
                    "description" : "САМАЯ ЖУТКАЯ НОЧЬ С КЛОУНОМ! ОН ПОЙМАЛ НАС\n\nЖЕСТЬ ИНСТАГРАМ : https:\\/\\/www.instagram.com\\/anayporter\nМОЙ ПАРЕНЬ https:\\/\\/www.instagram.com\\/youungeer\\/\n\nВКОНТАКТЕ : https:\\/\\/vk.com\\/anna_porter\nТВИТТЕР : https:\\/\\/twitter.com\\/anayporterlife?la...\nОФ.ГРУППА : https:\\/\\/vk.com\\/porter_anna\nНИК В TIK TOK : anayporter\n\nДля сотрудничества\\/пиара : ms.anna.porter@mail.ru\n\nЯ Аня Портер и я очень жду тебя на своем канале.Тут ты можешь увидеть видео на разную тематику : страшные и стремные истории из моей жизни, челлендж,покупки,бьюти видео и многое другое. Оставляй комментарий под каждым видео и ставь палец вверх, подписывайся на меня в соц сетях, а если ты уже это сделал, ТО СПАСИБО ТЕБЕ ОГРОМНОЕ, ЧТО ТЫ РЯДОМ СО МНОЙ",
                    "liveBroadcastContent" : "none",
                    "tags" : [
                      "аня",
                      "аня портер",
                      "портер",
                      "аня портер клоун",
                      "клоун",
                      "охота на клоуна",
                      "сделали заказ на номер 666",
                      "не делай заказ на номер 666",
                      "заказ на 666",
                      "самая жуткая ночь",
                      "самая жуткая ночь с клоуном",
                      "клоун ночью",
                      "осталась с клоуном",
                      "ночь с клоуном",
                      "клоун знает наш адрес",
                      "переезжаем из за клоуна",
                      "видео от клоуна",
                      "сообщения от клоуна",
                      "клоун довёл до истерики",
                      "клоун сошел с ума",
                      "клоун подкинул записки",
                      "клоун мстит"
                    ],
                    "channelTitle" : "Anna Porter"
                  }
                },
                {
                  "etag" : "\"j6xRRd8dTPVVptg711_CSPADRfg\\/7wbTymUGK4Pxgg9okXrlao4zS5U\"",
                  "kind" : "youtube#video",
                  "id" : "wdIrbDLaCp4",
                  "statistics" : {
                    "favoriteCount" : "0",
                    "commentCount" : "2431",
                    "likeCount" : "11491",
                    "viewCount" : "83538",
                    "dislikeCount" : "447"
                  },
                  "contentDetails" : {
                    "dimension" : "2d",
                    "projection" : "rectangular",
                    "caption" : "false",
                    "definition" : "hd",
                    "licensedContent" : true,
                    "duration" : "PT21M32S"
                  },
                  "snippet" : {
                    "description" : "ПОДПИСАТЬСЯ НА КАНАЛ ▶  https:\\/\\/www.youtube.com\\/channel\\/UCL4J...\nИНСТАГРАМ МАШИ - https:\\/\\/www.instagram.com\\/mzzoom\\/ \nИНСТАГРАМ ДЕНИСА - https:\\/\\/www.instagram.com\\/denis_zzoom\\/\n\nПо поводу рекламы и предложений писать только сюда: \nmzzoomwork@mail.ru\n\nПривет! Ты на канале Маша Зум ! а это новый эксперимент который я для вас подготовила ! 100 слоев защитных стекол на айфон 11 про макс ! сломается ли телефон? будет ли реагировать сенсор? все узнаешь в этом видео !\n\nМОЕ ПРЕДЫДУЩЕЕ ВИДЕО - https:\\/\\/youtu.be\\/RL-w1CS4Yto\n\n#100слоев #челлендж #iphone11pro #машазум #iphone #challenge #100layers",
                    "channelId" : "UCL4JRO-eW2JtTxo-XVzxtQg",
                    "publishedAt" : "2019-11-05T11:30:03.000Z",
                    "tags" : [
                      "100 слоёв челлендж",
                      "100 слоев стекол",
                      "100 слоев стекол на айфон",
                      "айфон 11",
                      "iphone 11",
                      "iphone 11 pro max",
                      "100 layers",
                      "challenge",
                      "челлендж"
                    ],
                    "title" : "100 СЛОЕВ СТЕКОЛ НА IPHONE 11 PRO MAX !",
                    "liveBroadcastContent" : "none",
                    "defaultLanguage" : "ru",
                    "defaultAudioLanguage" : "ru",
                    "channelTitle" : "Masha Zoom",
                    "thumbnails" : {
                      "standard" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/wdIrbDLaCp4\\/sddefault.jpg",
                        "width" : 640,
                        "height" : 480
                      },
                      "medium" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/wdIrbDLaCp4\\/mqdefault.jpg",
                        "width" : 320,
                        "height" : 180
                      },
                      "default" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/wdIrbDLaCp4\\/default.jpg",
                        "width" : 120,
                        "height" : 90
                      },
                      "high" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/wdIrbDLaCp4\\/hqdefault.jpg",
                        "width" : 480,
                        "height" : 360
                      },
                      "maxres" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/wdIrbDLaCp4\\/maxresdefault.jpg",
                        "width" : 1280,
                        "height" : 720
                      }
                    },
                    "localized" : {
                      "title" : "100 СЛОЕВ СТЕКОЛ НА IPHONE 11 PRO MAX !",
                      "description" : "ПОДПИСАТЬСЯ НА КАНАЛ ▶  https:\\/\\/www.youtube.com\\/channel\\/UCL4J...\nИНСТАГРАМ МАШИ - https:\\/\\/www.instagram.com\\/mzzoom\\/ \nИНСТАГРАМ ДЕНИСА - https:\\/\\/www.instagram.com\\/denis_zzoom\\/\n\nПо поводу рекламы и предложений писать только сюда: \nmzzoomwork@mail.ru\n\nПривет! Ты на канале Маша Зум ! а это новый эксперимент который я для вас подготовила ! 100 слоев защитных стекол на айфон 11 про макс ! сломается ли телефон? будет ли реагировать сенсор? все узнаешь в этом видео !\n\nМОЕ ПРЕДЫДУЩЕЕ ВИДЕО - https:\\/\\/youtu.be\\/RL-w1CS4Yto\n\n#100слоев #челлендж #iphone11pro #машазум #iphone #challenge #100layers"
                    },
                    "categoryId" : "24"
                  }
                },
                {
                  "etag" : "\"j6xRRd8dTPVVptg711_CSPADRfg\\/_30myfy_VQB-mT229wsHn4urUGU\"",
                  "kind" : "youtube#video",
                  "id" : "WkYuAWc8OdA",
                  "statistics" : {
                    "favoriteCount" : "0",
                    "commentCount" : "4161",
                    "likeCount" : "12887",
                    "viewCount" : "104176",
                    "dislikeCount" : "139"
                  },
                  "contentDetails" : {
                    "dimension" : "2d",
                    "projection" : "rectangular",
                    "caption" : "false",
                    "definition" : "hd",
                    "licensedContent" : true,
                    "duration" : "PT18M58S"
                  },
                  "snippet" : {
                    "thumbnails" : {
                      "standard" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/WkYuAWc8OdA\\/sddefault.jpg",
                        "width" : 640,
                        "height" : 480
                      },
                      "medium" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/WkYuAWc8OdA\\/mqdefault.jpg",
                        "width" : 320,
                        "height" : 180
                      },
                      "default" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/WkYuAWc8OdA\\/default.jpg",
                        "width" : 120,
                        "height" : 90
                      },
                      "high" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/WkYuAWc8OdA\\/hqdefault.jpg",
                        "width" : 480,
                        "height" : 360
                      },
                      "maxres" : {
                        "url" : "https:\\/\\/i.ytimg.com\\/vi\\/WkYuAWc8OdA\\/maxresdefault.jpg",
                        "width" : 1280,
                        "height" : 720
                      }
                    },
                    "channelId" : "UC3PNW3_vmoG6E-37_MDeBMg",
                    "defaultAudioLanguage" : "ru",
                    "title" : "Собаки купаются! Банный День для питомцев! Что натворила Юми? Чем отличается Эйван от девочек?!",
                    "publishedAt" : "2019-11-05T12:00:08.000Z",
                    "categoryId" : "15",
                    "localized" : {
                      "title" : "Собаки купаются! Банный День для питомцев! Что натворила Юми? Чем отличается Эйван от девочек?!",
                      "description" : "Меджик-Встреча! 9 ноября, Зоомир, Красноярск, ул. Авиаторов, 19, МВДЦ Сибирь! Я буду там с 12 до 17! Наш корм Platinum: https:\\/\\/myplatinum.ru\n1000 спиннеров челлендж для питомцев: https:\\/\\/goo.gl\\/WBQw1j ▼ЖМИ▼\n\nПОДПИШИСЬ на Magic Family - https:\\/\\/goo.gl\\/OZtOql - А в новом видео Собаки купаются в раковине! Банный День для питомцев! Юми на скрытой камере! Чем отличается Эйван от девочек?!  - я буду мыть всех собак в раковине! В доме ремонт и наша #ванна, которую строили специально для мытья животных стала гостевой, потому что, #купание питомцев в ней оказалось менее удобным. Хотя собаки плавали в ванне, а в раковине они этого делать не могут, но в будущем я собираюсь построить животным #бассейн во дворе для плавания, поэтому мыть я их буду теперь тут. Сегодня у нас банный день! Пока питомцы купаются и моются, я буду давать советы, покажу кое-какие их вещи, расскажу истории, факты о моих собаках! А ещё сделаю проверку на скрытой камере, как самая младшая собачка Юми научилась ждать, а не выпрыгивать из ванны! Посмотрим, будет ли она сидеть на месте или напроказничает? Покажу и расскажу, чем так отличается единственный парень Эйван от остальных девочек? И много всего другого в этом видео!\n\nСОТРУДНИЧЕСТВО: adv@magic-family.ru\nМОЙ ИНСТАГРАМ: https:\\/\\/goo.gl\\/RjeFZ5\nPETS ИНСТАГРАМ: https:\\/\\/goo.gl\\/NxGuKp\nКанал Magic Pets: https:\\/\\/goo.gl\\/WBQw1j\nКанал Anny Magic: https:\\/\\/goo.gl\\/AECAZS\nAnny Magic Live: https:\\/\\/goo.gl\\/8FZUAK\nЯ Вконтакте: http:\\/\\/vk.com\\/ilvreke\nАдрес: 249930, Калужская обл, Мосальск, Ленина, 49, а\\/я 238\n\nЕЩЁ ВИДЕО О КУПАНИИ ПИТОМЦЕВ:\nСрочно мою кошку: https:\\/\\/youtu.be\\/DjvQlV8zQR4\nКупаю собак в новой ванне: https:\\/\\/youtu.be\\/YAqRAGR1blM\nМою грязных собак: https:\\/\\/youtu.be\\/Xj3x2k967lo\nСобаки на речке: https:\\/\\/youtu.be\\/f6eaavbZW1Q\nКупаю кошку: https:\\/\\/youtu.be\\/cH9FCujo7TA\nУчу собак плавать: https:\\/\\/youtu.be\\/iHR-7VMQSmc\nВпервые на речке: https:\\/\\/youtu.be\\/LhURuLY89z8\nСобаки одни в ванне: https:\\/\\/youtu.be\\/4P4mvfDGLD0\nКупаю всех вместе: https:\\/\\/youtu.be\\/e8nDbMuEtfQ\nСредства для ухода: https:\\/\\/youtu.be\\/BsbCuGFJTqU\nУход за шерстью: https:\\/\\/youtu.be\\/1Z36JJrdq1o\nКак помыть собаку: https:\\/\\/youtu.be\\/fv4xlTzceRY\n\nПривет, я Anny Magic и у меня есть кошка Киса Алиса, собаки Софи и Эйван, Миша и Юми Чу другие домашние животные: хомяки, муравьи, улитки и тд. На моем канале не только питомцы и жизнь с ними, но и путешествия, а ещё лайфхаки и проверки, обзоры товаров из зоомагазинов, покупки, конечно же, распаковки и другие рубрики о животных!"
                    },
                    "description" : "Меджик-Встреча! 9 ноября, Зоомир, Красноярск, ул. Авиаторов, 19, МВДЦ Сибирь! Я буду там с 12 до 17! Наш корм Platinum: https:\\/\\/myplatinum.ru\n1000 спиннеров челлендж для питомцев: https:\\/\\/goo.gl\\/WBQw1j ▼ЖМИ▼\n\nПОДПИШИСЬ на Magic Family - https:\\/\\/goo.gl\\/OZtOql - А в новом видео Собаки купаются в раковине! Банный День для питомцев! Юми на скрытой камере! Чем отличается Эйван от девочек?!  - я буду мыть всех собак в раковине! В доме ремонт и наша #ванна, которую строили специально для мытья животных стала гостевой, потому что, #купание питомцев в ней оказалось менее удобным. Хотя собаки плавали в ванне, а в раковине они этого делать не могут, но в будущем я собираюсь построить животным #бассейн во дворе для плавания, поэтому мыть я их буду теперь тут. Сегодня у нас банный день! Пока питомцы купаются и моются, я буду давать советы, покажу кое-какие их вещи, расскажу истории, факты о моих собаках! А ещё сделаю проверку на скрытой камере, как самая младшая собачка Юми научилась ждать, а не выпрыгивать из ванны! Посмотрим, будет ли она сидеть на месте или напроказничает? Покажу и расскажу, чем так отличается единственный парень Эйван от остальных девочек? И много всего другого в этом видео!\n\nСОТРУДНИЧЕСТВО: adv@magic-family.ru\nМОЙ ИНСТАГРАМ: https:\\/\\/goo.gl\\/RjeFZ5\nPETS ИНСТАГРАМ: https:\\/\\/goo.gl\\/NxGuKp\nКанал Magic Pets: https:\\/\\/goo.gl\\/WBQw1j\nКанал Anny Magic: https:\\/\\/goo.gl\\/AECAZS\nAnny Magic Live: https:\\/\\/goo.gl\\/8FZUAK\nЯ Вконтакте: http:\\/\\/vk.com\\/ilvreke\nАдрес: 249930, Калужская обл, Мосальск, Ленина, 49, а\\/я 238\n\nЕЩЁ ВИДЕО О КУПАНИИ ПИТОМЦЕВ:\nСрочно мою кошку: https:\\/\\/youtu.be\\/DjvQlV8zQR4\nКупаю собак в новой ванне: https:\\/\\/youtu.be\\/YAqRAGR1blM\nМою грязных собак: https:\\/\\/youtu.be\\/Xj3x2k967lo\nСобаки на речке: https:\\/\\/youtu.be\\/f6eaavbZW1Q\nКупаю кошку: https:\\/\\/youtu.be\\/cH9FCujo7TA\nУчу собак плавать: https:\\/\\/youtu.be\\/iHR-7VMQSmc\nВпервые на речке: https:\\/\\/youtu.be\\/LhURuLY89z8\nСобаки одни в ванне: https:\\/\\/youtu.be\\/4P4mvfDGLD0\nКупаю всех вместе: https:\\/\\/youtu.be\\/e8nDbMuEtfQ\nСредства для ухода: https:\\/\\/youtu.be\\/BsbCuGFJTqU\nУход за шерстью: https:\\/\\/youtu.be\\/1Z36JJrdq1o\nКак помыть собаку: https:\\/\\/youtu.be\\/fv4xlTzceRY\n\nПривет, я Anny Magic и у меня есть кошка Киса Алиса, собаки Софи и Эйван, Миша и Юми Чу другие домашние животные: хомяки, муравьи, улитки и тд. На моем канале не только питомцы и жизнь с ними, но и путешествия, а ещё лайфхаки и проверки, обзоры товаров из зоомагазинов, покупки, конечно же, распаковки и другие рубрики о животных!",
                    "liveBroadcastContent" : "none",
                    "tags" : [
                      "купание кота",
                      "мою своего кота",
                      "мою собаку",
                      "собаки купаются",
                      "собаки в воде",
                      "собаки в ванной",
                      "ванна",
                      "ванная",
                      "купание",
                      "бассейн",
                      "аквапарк",
                      "Семья",
                      "щенок",
                      "питомец",
                      "мой питомец",
                      "смешные животные",
                      "мой день",
                      "собачка",
                      "Собака",
                      "Блогер",
                      "развлечения",
                      "животное",
                      "кот",
                      "домашние животные",
                      "Питомец",
                      "популярный канал",
                      "смешное видео",
                      "В реальной жизни",
                      "блогер",
                      "Щенок",
                      "семейный канал",
                      "юмор",
                      "популярный блогер",
                      "дружная семья",
                      "банный день"
                    ],
                    "channelTitle" : "Magic Family"
                  }
                }
              ],
              "nextPageToken" : "CBQQAA",
              "pageInfo" : {
                "resultsPerPage" : 20,
                "totalResults" : 200
              }
            }
            """
            
        default: return ""
        }
    }
}
