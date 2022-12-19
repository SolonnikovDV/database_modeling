# **Task 1: Спроектировать базу данных**

## [**1. Структура базы данных**](#1-структура-базы-данных)
## [**2. Определена кардинальность полей**](#2-определена-кардинальность-полей)
## [**3. Добавлены индексы**](#3-добавлены-индексы)
## [**4. Логичские ограничения**](#4-логические-ограничения)
## [**5. Ссылка на скрипт**](#5-ссылка-на-скрипт)
<br>


# **1. Структура базы данных**

[Модель БД](https://github.com/SolonnikovDV/database_modeling/blob/main/task_2/db_model_screen.png) представляет собой 24 связанные таблицы:
| N   | Table name                    |
|-----|-------------------------------|
| 1.  | `container_properties`        |
| 2.  | `stock`                       |
| 3.  | `price`                       |
| 4.  | `customer_loyality_breakdown` |
| 5.  | `brand`                       |
| 6.  | `bonus_rubles`                |
| 7.  | `rating`                      |
| 8.  | `location`                    |
| 9.  | `breakdown`                   |
| 10. | `containers_on_pick_point`    |
| 11. | `status`                      |
| 12. | `product_spec`                |
| 13. | `category`                    |
| 14. | `pick_point`                  |
| 15. | `agent_type`                    |
| 16. | `product`                       |
| 17. | `customer`                      |
| 18. | `individual_attribute`          |
| 19. | `unit_properties`               |
| 20. | `product_properties`            |
| 21. | `company_attribute`             |
| 22. | `vendor`                        |
| 23. | `delivery`                      |
| 24. | `supply_order`                  |
   1. [Таблица `categories`:](#таблица-categories)
   2. [Таблица `price`:](#таблица-price)
   3. [Таблица `providers`:](#таблица-providers)
   4. [Таблица `deliveries`:](#таблица-deliveries)
   5. [Таблица `purchases`:](#таблица-purchases)
   6. [Таблица `purchase_item`:](#таблица-purchase_item)
   7. [Таблица `customers`:](#таблица-customers)
   8. [Таблица `goods`:](#таблица-goods)
<br>
<br>
Визуализация модели БД:
![Визуализация модели БД](https://github.com/SolonnikovDV/database_modeling/blob/main/task_1/db_model_screen.png?raw=true)
<br>
<br>


## 2. Определена кардинальность полей 
<br>

### Определены поля ключевые / уникальные поля:
Таким полями выступают:

|Type   |Dectription  |Code       |
|-------|-------------|-----------|
|первичный ключ|натуральное число, последующее значение всегда больше предыдущего, отвечает требования уникальности| `PRIMARY KEY()`| 
|уникальное поле|определяет ограничение поля по признаку уникальности, работает со всеми типами данных|`CONSTRAINT <set_name> UNIQUE(<your_field>)`|
|внешний ключ|ссылка на поле внешней таблицы, типы данных для `<your_field>` и `<field_of_external_table>` должны совпадать|`FOREIGN KEY (<your_field>) REFERENCES <external_table_name> (<field_of_external_table>)`|
<br>

## 3. Добавлены индексы
<br>

### Добавлены простые и композитные индексы с описанием. Перечень таблиц с индексами:
<br>

| N   | Table name                    |Lint to SQL script|
|-----|-------------------------------|------------------|
| 1.  |                               |                  |
<br>
<br>

## 4. Логичские ограничения
<br>
### Добавлены ограничения слудующего вида
<br>

|Type    |Descritption   |Code    |
|--------|---------------|--------|
|количество|ограничивает параметры вводимых значений, значение может находиться в диапазоне больше, либо равно нулю;<br>ограничение распространаятеся на количественные показатели в том числе цену|`CONSTRAINT "enter_your_check_procedure_name" CHECK(<field_for_check> >= 0)`|
|дата|отсекает значение поля в формате `timestamp` , если оно хронологически ниже текущей даты|`CONSTRAINT "enter_your_check_procedure_name" CHECK(<field_for_check> >= NOW()::timestamp)`|

<br>

# **5. Ссылка на скрипт**
[Скрипт сценария создания таблиц](https://github.com/SolonnikovDV/database_modeling/blob/main/task_1/script_table_creation.sql)