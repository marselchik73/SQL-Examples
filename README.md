 
  SQL-Examples 

 Проект с примерами SQL-запросов для формы бронирования (имя, email, телефон, кнопка "Забронировать").

 Список запросов: 
 1.CREATE TABLE – создание таблицы бронирований. 
 2.INSERT – добавление новой брони. 
 3.SELECT с WHERE и ORDER BY – выборка броней конкретного пользователя. 
 4.UPDATE – изменение телефона в записи. 
 5.DELETE – удаление брони. 
 6.SELECT с GROUP BY и COUNT – статистика по дням. 
 7.SELECT с LIKE – поиск по части имени. 
 8.SELECT с ORDER BY и LIMIT – последние 5 броней.

 Таблица `bookings`

   Поле          | Тип           | Описание
   id            | INT           | Уникальный идентификатор
   name          | VARCHAR(100)  | Имя клиента
   email         | VARCHAR(100)  | Email клиента
   phone         | VARCHAR(20)   | Телефон
   booking_date  | TIMESTAMP     | Дата и время создания заявки
   status        | VARCHAR(20)   | Статус: pending / confirmed

  После создания таблицы и заполнения тестовыми данными (sample_data.sql) вы можете выполнить следующие запросы:

  Название запроса | Сам запрос 

  Все записи | SELECT * FROM bookings; 
  Только имена и email | SELECT name, email FROM bookings; 
  Поиск по точному имени | SELECT * FROM bookings WHERE name = 'Анна Иванова'; 
  Все со статусом 'pending' | SELECT name, status FROM bookings WHERE status = 'pending'; 
  Количество записей | SELECT COUNT(*) AS total FROM bookings; 
  Сортировка по дате (новые сверху) | SELECT name, booking_date FROM bookings ORDER BY booking_date DESC; 
  Последние 2 записи | SELECT name, booking_date FROM bookings ORDER BY booking_date DESC LIMIT 2; 
  Обновить статус (по имени) | UPDATE bookings SET status = 'confirmed' WHERE name = 'Петр Сидоров'; 
  Добавить тестовую запись | INSERT INTO bookings (name, email, phone, status) VALUES ('Тестовый Клиент', 'test@mail.com', '+7-900-000-00-00', 'pending'); 
  Удалить тестовую запись | DELETE FROM bookings WHERE name = 'Тестовый Клиент'; 