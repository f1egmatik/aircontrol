# aircontrol
inspired by:

https://youtu.be/nitpObKHBuw?t=600

https://www.youtube.com/watch?v=u0oQbDNJDG0

https://github.com/Anonym-tsk/smart-domofon

https://esphome.io/components/sensor/mhz19.html

Всем привет! 
Планирую создать схему и написать прошивку для управления вентилятором по датчику CO2 с помощью платы NodeMCU v3. Общая идея простая: пришли люди -- вентилятор включился, ушли -- вентилятор выключился (см. первое видео). 

## Аппаратная часть
Способ регулирования скорости заключается в последовательном подключении к вентилятору конденсатора. Чем больше номинал конденсатора -- тем меньше реактивное сопротивление -- тем выше скорость (см. второе видео). 

Полагаю, достаточно 4 вариантов скорости: 
- выкл., 
- 1 скорость (включён конденсатор C1), 
- 2 скорость (включён конденсатор C2), 
- максимальная скорость (включены оба конденсатора параллельно друг другу). Для этих четырёх вариантов, соответственно, достаточно двух (на схеме) конденсаторов и двух реле. 

Для своего вентилятора Домовент 100С я экспериментально подобрал C1 0,47 мкФ и C2 0,63 мкФ. При 0,36 мкФ вентилятор не запускается, при 0,71 мкФ шумит уже как на полной мощности. 

В итоге получилась такая принципиальная схема:
![Schema](https://github.com/f1egmatik/aircontrol/raw/master/eeschema.png)

Видеообзор первого собранного устройства: https://youtu.be/G8YbCZ9C0GY 

## Программная часть
Алгоритм работы, закладываемый в прошивку (вот тут я пока не специалист), по задумке должен выполнять следующее. 

1. При показании CO2 менее Уставки1 (скажем, 600 PPM) вентилятор выключен. 
2. При показании CO2 от Уставки1 до Уставки2 (1200 PPM) вентилятор крутится на первой скорости. 
3. При показании CO2 от Уставки2 до Уставки3 (1800 PPM) вентилятор крутится на второй скорости. 
4. При концентрации CO2 выше Уставки3 вентилятор переходит на максимальную скорость. 

Вентилятор также снабжён кнопкой вкл/выкл с фиксацей, которую хочется задействовать следующим образом. 

5. При замыкании кнопки вентилятор вне зависимости от концентрации и текущего состояния переходит на максимальную скорость на период T1 (30 мин). В течение этого периода показания датчика игнорируются. 
6. При размыкании кнопки вентилятор выключается на период T0 (пусть те же 30 мин или можно тот же период T1). 
Значит, в шаги 1-4 надо добавлять какой-то таймер, блокирующий их работу. 

Ну и последнее. Поскольку датчик CO2 недешёвое удовольствие (~25 USD), а вентиляторов в доме может быть несколько, было бы здорово предусмотреть, что в случае отсутствия датчика плата берёт показание CO2 из Home Assistant. Возможно, в случае кухонной вытяжки датчик CO2 разумно поменять на более дешёвый датчик температуры и влажности, но тут сложнее поймать нужные комбинации уставок. 

## Интеграция с Home Assistant 
На данный момент прошивка выводит в интерфейс HA два переключателя двух реле. Они сделаны исключительно для проверки схемы. Наверное, в HA можно сделать выпадающий список всех возможных скоростей, но это не является срочной задачей. Думаю, для начала вентилятору достаточно одного программного выключателя, который по своей функциональности будет идентичен аппаратному. 
