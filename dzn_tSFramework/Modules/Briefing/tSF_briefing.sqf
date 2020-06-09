//     tSF Briefing
// Do not modify this part
#define BRIEFING		_briefing = [];
#define TOPIC(NAME) 	_briefing pushBack ["Diary", [ NAME,
#define END			]];
#define ADD_TOPICS	for "_i" from (count _briefing) to 0 step -1 do {player createDiaryRecord (_briefing select _i);};
#define TAGS(X) tSF_MissionTags = X ;
//
//
// Mission tags
TAGS(["SPECOPS"])

// Briefing goes here

BRIEFING

TOPIC("I. Обстановка:")
"1999 год, Косово. После инцидента в Приштине в июне этого года российские войска начали перебрасывать всё больше частей в Косово. В ответ Task Force Falcon, объединяющий поздразделения США в регионе, начал развёртывание новых сил. В дополнение к уже действующей в Косово разведке СПН 75-го полка рейнджеров прибыли остальные батальоны. Неделю назад российские войска начали наступление. Части KFOR понесли большие потери, однако смогли восстановить силы и начать контратаку.<br /><br />Сегодня вашему взводу из состава роты Альфа 1-го батальона рейнджеров предстоит провести операцию по отвлечению сил противника от основного наступления на н.п. Гришино. Вам необходимо уничтожить батарею РСЗО и по возможности совершить диверсию на FARP противника. "
END

TOPIC("А. Враждебные силы:")
"ВС РФ - Регулярные силы:<br /><br />Около 1-го взвода пехоты.<br />1 БТР-80.<br />Батарея РСЗО Град.<br />Артиллерийские наводчики.<br /><br />В настоящее время противник занят отражением наступления на н.п. Гришино, поэтому на фланге и в тылу осталась лишь пехота без тяжелого вооружения. Вражеские наблюдатели расположились на одной из башен старинного замка к востоку от нас, откуда открывается отличный вид на наши позиции. Основные силы противника патрулируют позиции вокруг батареи РСЗО и деревни Гвоздно, где располагается FARP. Сам FARP охраняет БТР-80 и несколько отделений пехоты. <br /><br />Разведка располагает данными о возможном пути подхода вражеских подкреплений (маркер ENEMY QRF), однако их количество остаётся неизвестным."
END

TOPIC("Б. Дружественные силы:")
"1-й взвод роты Альфа 1-го батальона 75-го полка рейнджеров:<br /><br />1'1 - 9 человек.<br />1'2 - 9 человек.<br />1'3 - 8 человек, отделение поддержки (два пулемёта M240 и два снайпера)<br />1'6 - 2 человека."
END

TOPIC("II. Задание:")
"1. Найти и уничтожить батарею РСЗО.<br />2. Эвакуироваться в район <marker name='marker_18'>EXTRACTION POINT.</marker> <br />3. (опционально) Захватить вражеский <marker name='marker_8'>FARP.</marker><br />4. (опционально) Найти и уничтожить <marker name='marker_1'>артиллерийских наблюдателей.</marker>"
END

TOPIC("III. Выполнение:")
"В настоящее время вражеская артиллерия, используя своих наблюдателей в замке, довольно сильно подавляет наши миномёты. После уничтожения наблюдателей эффективность контрбатарейной борьбы снизится и Steel rain-1-1 сможет оказать вам поддержку. <br /><br />Порядок выполнения задач любой, однако стоит уничтожить РСЗО как можно скорее. Предполагаемое местонахождение батареи отмечено на карте маркероми MLRS. FARP не обязательно уничтожать физически, достаточно уничтожить противника вокруг."
END

TOPIC("IV. Поддержка:")
"Транспорт:<br />5x HMMWV <br />2x HMMWV (вооружённый М2)<br /><br />FARP<br />CCP<br /><br />Артиллерия:<br />1x батарея 82мм миномётов Steelrain-1-1 (доступна после уничтожения наблюдателей)<br /><br />Доукомплекты и редеплои:<br />3 доукомплекта после запроса и 2 редеплоя после выполения задачи."
END

TOPIC("V. Сигналы:")
"PL NET 50 Mhz<br />SUP NET 51 Mhz<br /><br />1'1 - SR CH 1<br />1'2 - SR CH 2<br />1'3 - SR CH 3"
END

TOPIC("VI. Замечания:")
"Взрывчатка находится у гренадёров и стрелков. В ночное время выдается ночной прицел AN/PVS-4. Также командирам команд выдаётся тепловизионный прицел AN/PAS-13."
END

if ((serverCommandAvailable '#logout') || !(isMultiplayer) || isServer) then {
TOPIC("VII. Замечания для GSO:")
"Активное участие не требуется, однако можно среагировать патрулями на северо-востоке (в н.п. Гвоздно). Следует также проследить за подкреплениями, двигающимися с востока. Миссия заканчивается после того, как все игроки окажутся в зоне эвакуации. Задача по уничтожению наблюдателей не отслеживается и на результате миссии не сказывается."
END
};

ADD_TOPICS