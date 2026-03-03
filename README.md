# SQL-Examples

Проект с примерами SQL-запросов для формы бронирования (имя, email, телефон, кнопка «Забронировать»).

## Таблица `bookings`

| Поле          | Тип         | Описание                              |
|---------------|-------------|---------------------------------------|
| id            | INT         | Уникальный идентификатор (автоинкремент) |
| name          | VARCHAR(100)| Имя клиента                           |
| email         | VARCHAR(100)| Email клиента                         |
| phone         | VARCHAR(20) | Телефон                               |
| booking_date  | TIMESTAMP   | Дата и время создания заявки (по умолчанию сейчас) |
| status        | VARCHAR(20) | Статус: pending / confirmed (по умолчанию pending) |

## Список запросов

| Файл                    | Описание                                   |
|-------------------------|--------------------------------------------|
| 01_create_table.sql     | Создание таблицы                           |
| 02_insert_example.sql   | Вставка тестовой записи                    |
| 03_select_user.sql      | Выборка броней по email с сортировкой      |
| 04_update_phone.sql     | Обновление телефона в конкретной записи    |
| 05_delete_booking.sql   | Удаление записи по id                      |
| 06_daily_stats.sql      | Количество бронирований по дням            |
| 07_search_by_name.sql   | Поиск по части имени (LIKE)                |
| 08_last_5_bookings.sql  | Последние 5 заявок (LIMIT)                 |

  Для проверки можно импортировать `sample_data.sql` после создания таблицы.

После создания таблицы `bookings`и заполнения тестовыми данными (`sample_data.sql`) вы можете выполнить следующие запросы:

```sql
SELECT * FROM bookings;
SELECT name, email FROM bookings;
SELECT * FROM bookings WHERE name = 'Анна Иванова';
SELECT name, status FROM bookings WHERE status = 'pending';
SELECT COUNT(*) AS total FROM bookings;
SELECT name, booking_date FROM bookings ORDER BY booking_date DESC;
SELECT name, booking_date FROM bookings ORDER BY booking_date DESC LIMIT 2;
UPDATE bookings SET status = 'confirmed' WHERE name = 'Петр Сидоров';
INSERT INTO bookings (name, email, phone, status) VALUES ('Тестовый Клиент', 'test@mail.com', '+7-900-000-00-00', 'pending');
DELETE FROM bookings WHERE name = 'Тестовый Клиент';