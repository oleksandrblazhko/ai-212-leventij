|FR id|TC id|Опис кроків тестового сценарію|Опис очікуваних результатів|
|:-----:|:-----:|:-----|:-----:|
|FR1.1|TC 1.1|Початкові умови: користувач авторизований<br> Кроки сценарію:<br>1) ПІБ = "Matiiko Stanislav Stanislavovich"<br>2) Адреса = “123 Maple Street, Toronto, Ontario, Canada, M5V 2T6”<br>3) Назва обраної метео послуги = “Advanced Climate Prediction and Weather Forecasting Service”|result=1|
|FR1.1|TC 1.2|Початкові умови: користувач авторизований<br> Кроки сценарію:<br>1) ПІБ = "Матійко Stanislav Stanislavovich"<br>2) Адреса = “123 Maple Street, Toronto, Ontario, Canada, M5V 2T6”<br>3) Назва обраної метео послуги = “Advanced Climate Prediction and Weather Forecasting Service”|result=-1|
|FR1.1|TC 1.3|Початкові умови: користувач авторизований<br> Кроки сценарію:<br>1) ПІБ = "Elizabeth Alexandra Mary Windsor Elizabeth Alexandra Mary Windsor Elizabeth Alexandra Mary Windsor Elizabeth Alexandra Mary Windsor Elizabeth"<br>2) Адреса = “123 Maple Street, Toronto, Ontario, Canada, M5V 2T6”<br>3) Назва обраної метео послуги = “Advanced Climate Prediction and Weather Forecasting Service”|result=-1|
|FR1.1|TC 1.4|Початкові умови: користувач авторизований<br> Кроки сценарію:<br>1) ПІБ = ""<br>2) Адреса = “123 Maple Street, Toronto, Ontario, Canada, M5V 2T6”<br>3) Назва обраної метео послуги = “Advanced Climate Prediction and Weather Forecasting Service”|result=-1|
|FR1.1|TC 1.5|Початкові умови: користувач авторизований<br> Кроки сценарію:<br>1) ПІБ = "Matiiko Stanislav Stanislavovich"<br>2) Адреса = “123 Мейпл Стріт, Toronto, Ontario, Canada, M5V 2T6”<br>3) Назва обраної метео послуги = “Advanced Climate Prediction and Weather Forecasting Service”|result=-2|
|FR1.1|TC 1.6|Початкові умови: користувач авторизований<br> Кроки сценарію:<br>1) ПІБ = "Matiiko Stanislav Stanislavovich"<br>2) Адреса = “1234 Long Street Name, Very Big City Name, Extremely Large Province Name, Country With A Very Long Name, Postal Code 12345-6789. This is a second line of the address which includes Building Name, Office Number, Additional Directions for the courier to find the location easily and a third line for any extra information”<br>3) Назва обраної метео послуги = “Advanced Climate Prediction and Weather Forecasting Service”|result=-2|
|FR1.1|TC 1.7|Початкові умови: користувач авторизований<br> Кроки сценарію:<br>1) ПІБ = "Matiiko Stanislav Stanislavovich"<br>2) Адреса = “”<br>3) Назва обраної метео послуги = “Advanced Climate Prediction and Weather Forecasting Service”|result=-2|
|FR1.1|TC 1.8|Початкові умови: користувач авторизований<br> Кроки сценарію:<br>1) ПІБ = "Matiiko Stanislav Stanislavovich"<br>2) Адреса = “123 Maple Street, Toronto, Ontario, Canada, M5V 2T6”<br>3) Назва обраної метео послуги = “Advanced Climate Prediction and Weather Forecasting Service with Specialized Reports for Agriculture and Aviation Industries”|result=-3|
|FR1.1|TC 1.9|Початкові умови: користувач авторизований<br> Кроки сценарію:<br>1) ПІБ = "Matiiko Stanislav Stanislavovich"<br>2) Адреса = “123 Maple Street, Toronto, Ontario, Canada, M5V 2T6”<br>3) Назва обраної метео послуги = “”|result=-3|