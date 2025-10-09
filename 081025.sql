--СТВОРЕННЯ
--CREATE DATABASE ANIMALS

CREATE TABLE ANIMALS (
  ANIMAL_ID SERIAL PRIMARY KEY,
  BREED VARCHAR(20),
  AGE INT,
  COLOR VARCHAR(20)
);

INSERT INTO ANIMALS (
  BREED,
  AGE,
  COLOR
)
VALUES
  ('ХОМ’ЯК', 1, 'БІЛИЙ'),
  ('ПАПУГА', 3, 'ЗЕЛЕНИЙ'),
  ('КРОЛИК', 2, 'СІРИЙ'),
  ('КІТ', 5, 'ЧОРНИЙ'),
  ('ПЕС', 7, 'БІЛО-ЧОРНИЙ'),
  ('ЇЖАК', 4, 'КОРИЧНЕВИЙ'),
  ('КОЗА', 6, 'БІЛА'),
  ('КУРКА', 2, 'РУДА'),
  ('ІГУАНА', 1, 'ЗЕЛЕНА'),
  ('МИША', 1, 'СІРА');

SELECT *
FROM ANIMALS;

SELECT ANIMALS.BREED,
       ANIMALS.AGE
FROM ANIMALS;

INSERT INTO ANIMALS (
  BREED,
  AGE,
  COLOR
)
VALUES
   ('КІТ', 1, 'СІРИЙ'),
  ('КІТ', 3, 'ЧОРНИЙ'),
  ('КІТ', 5, 'БІЛИЙ'),
  ('ПЕС', 2, 'РУДИЙ'),
  ('ПЕС', 4, 'СІРИЙ'),
  ('ПЕС', 6, 'ЧОРНИЙ'),
  ('ПАПУГА', 1, 'ЗЕЛЕНИЙ'),
  ('ПАПУГА', 2, 'ЖОВТИЙ'),
  ('ПАПУГА', 3, 'СИНІЙ'),
  ('ХОМ’ЯК', 1, 'БІЛИЙ'),
  ('ХОМ’ЯК', 2, 'КОРИЧНЕВИЙ'),
  ('ХОМ’ЯК', 3, 'СІРИЙ');

-- Курс: «Введення в мову
-- програмування Python
--  Модуль 15. Вступ до теорії баз даних
--  Тема: Вступ до теорії баз даних.
-- Частина 1
--  Завдання 1
--  Створіть базу даних під назвою Sample. Розташування
-- файлів залишається на ваш вибір.
--  Завдання 2
--  Переназвіть базу даних із першого завдання. Нове
-- ім’я для бази даних Example.
--  Завдання 3
--  Видаліть базу даних Example.
-- Завдання 4
--  Створіть базу даних для зберігання оцінок студентів.
-- У базі даних створіть таблицю «Оцінки студентів», яка
-- зберігатиме таку інформацію:
--  ■ ПІБ студента;
--  ■ місто;
--  ■ країна;
--  ■ дата народження;
--  ■ електронна адреса;
--  ■ контактний телефон;
-- Таблиця Students (зразок)
CREATE TABLE IF NOT EXISTS Students (
  student_id SERIAL PRIMARY KEY,
  full_name VARCHAR(255) NOT NULL,
  city VARCHAR(100),
  country VARCHAR(100),
  birth_date DATE,
  email VARCHAR(254) UNIQUE,
  phone VARCHAR(30)
);

INSERT INTO Students (full_name, city, country, birth_date, email, phone) VALUES
  ('Іваненко Іван Іванович', 'Київ', 'Україна', DATE '2002-05-14', 'ivan.ivanenko@example.com', '+380501112233'),
  ('Петренко Олена Петрівна', 'Львів', 'Україна', DATE '2001-11-02', 'olena.petrenko@example.com', '+380671234567'),
  ('Сидорчук Максим Олегович', 'Одеса', 'Україна', DATE '2003-03-21', 'maksym.sydorchuk@example.com', '+380931112244');

INSERT INTO Students (full_name, city, country, birth_date, email, phone) VALUES
  ('Ковальчук Андрій Сергійович', 'Харків', 'Україна', DATE '2002-07-19', 'andriy.kovalchuk@example.com', '+380501234567'),
  ('Мельник Юлія Василівна', 'Дніпро', 'Україна', DATE '2001-12-05', 'yulia.melnyk@example.com', '+380671112233'),
  ('Ткаченко Олег Ігорович', 'Запоріжжя', 'Україна', DATE '2003-04-11', 'oleg.tkachenko@example.com', '+380931234567'),
  ('Шевченко Марія Олександрівна', 'Полтава', 'Україна', DATE '2002-09-30', 'maria.shevchenko@example.com', '+380501112244'),
  ('Гончар Віталій Миколайович', 'Чернігів', 'Україна', DATE '2001-06-22', 'vitaliy.gonchar@example.com', '+380671223344'),
  ('Захарченко Ірина Анатоліївна', 'Житомир', 'Україна', DATE '2003-01-17', 'iryna.zakharchenko@example.com', '+380931112233'),
  ('Бондаренко Денис Володимирович', 'Хмельницький', 'Україна', DATE '2002-03-08', 'denys.bondarenko@example.com', '+380501334455'),
  ('Романюк Наталія Степанівна', 'Тернопіль', 'Україна', DATE '2001-10-12', 'natalia.romanyuk@example.com', '+380671445566'),
  ('Литвиненко Артем Юрійович', 'Івано-Франківськ', 'Україна', DATE '2003-08-25', 'artem.lytvynenko@example.com', '+380931556677'),
  ('Кравець Оксана Вікторівна', 'Ужгород', 'Україна', DATE '2002-11-03', 'oksana.kravets@example.com', '+380501667788'),
  ('Семенюк Богдан Олегович', 'Кропивницький', 'Україна', DATE '2001-05-29', 'bogdan.semenyuk@example.com', '+380671778899'),
  ('Данилюк Віра Іванівна', 'Чернівці', 'Україна', DATE '2003-02-14', 'vira.danylyuk@example.com', '+380931889900'),
  ('Онищенко Владислав Петрович', 'Суми', 'Україна', DATE '2002-06-06', 'vlad.onyshchenko@example.com', '+380501990011'),
  ('Мазуренко Тетяна Романівна', 'Рівне', 'Україна', DATE '2001-09-18', 'tetiana.mazurenko@example.com', '+380671001122'),
  ('Гаврилюк Євген Андрійович', 'Луцьк', 'Україна', DATE '2003-07-07', 'yevhen.havryliuk@example.com', '+380931112233'),
  ('Паламарчук Ольга Миколаївна', 'Біла Церква', 'Україна', DATE '2002-01-23', 'olga.palamarchuk@example.com', '+380501223344'),
  ('Скрипник Ігор Васильович', 'Кам’янець-Подільський', 'Україна', DATE '2001-04-04', 'ihor.skrypnyk@example.com', '+380671334455'),
  ('Нестеренко Аліна Олексіївна', 'Мукачево', 'Україна', DATE '2003-10-10', 'alina.nesterenko@example.com', '+380931445566'),
  ('Яременко Павло Іванович', 'Бровари', 'Україна', DATE '2002-08-08', 'pavlo.yaremenko@example.com', '+380501556677'),
  ('Козак Дарина Сергіївна', 'Вінниця', 'Україна', DATE '2001-03-03', 'darina.kozak@example.com', '+380671667788'),
  ('Гриценко Назар Богданович', 'Кременчук', 'Україна', DATE '2003-12-12', 'nazar.hrytsenko@example.com', '+380931778899'),
  ('Левченко Катерина Юріївна', 'Бердянськ', 'Україна', DATE '2002-02-02', 'kateryna.levchenko@example.com', '+380501889900'),
  ('Соловей Дмитро Михайлович', 'Миколаїв', 'Україна', DATE '2001-07-07', 'dmytro.solovey@example.com', '+380671990011'),
  ('Кирилюк Олена Ігорівна', 'Славутич', 'Україна', DATE '2003-05-05', 'olena.kyrylyuk@example.com', '+380931001122'),
  ('Білоус Олександр Степанович', 'Чорноморськ', 'Україна', DATE '2002-10-10', 'oleksandr.bilous@example.com', '+380501112233'),
  ('Терещенко Валерія Віталіївна', 'Ізмаїл', 'Україна', DATE '2001-01-01', 'valeria.tereshchenko@example.com', '+380671223344'),
  ('Кучеренко Владислава Олегівна', 'Ніжин', 'Україна', DATE '2003-06-06', 'vladyslava.kucherenko@example.com', '+380931334455'),
  ('Федорчук Степан Артемович', 'Новоград-Волинський', 'Україна', DATE '2002-03-03', 'stepan.fedorchuk@example.com', '+380501445566'),
  ('Мороз Ірина Володимирівна', 'Бориспіль', 'Україна', DATE '2001-08-08', 'iryna.moroz@example.com', '+380671556677'),
  ('Коваленко Олексій Григорович', 'Обухів', 'Україна', DATE '2003-09-09', 'oleksiy.kovalenko@example.com', '+380931667788'),
  ('Герасимчук Анастасія Павлівна', 'Фастів', 'Україна', DATE '2002-04-04', 'anastasia.herasymchuk@example.com', '+380501778899'),
  ('Савченко Тимофій Євгенович', 'Коростень', 'Україна', DATE '2001-11-11', 'tymofiy.savchenko@example.com', '+380671889900'),
  ('Демченко Ольга Іванівна', 'Васильків', 'Україна', DATE '2003-01-01', 'olga.demchenko@example.com', '+380931990011'),
  ('Рибак Вікторія Олександрівна', 'Буча', 'Україна', DATE '2002-06-06', 'viktoria.rybak@example.com', '+380501001122'),
  ('Шаповал Арсен Віталійович', 'Ірпінь', 'Україна', DATE '2001-02-02', 'arsen.shapoval@example.com', '+380671112233'),
  ('Кириченко Дар’я Миколаївна', 'Козятин', 'Україна', DATE '2003-03-03', 'daria.kyrychenko@example.com', '+380931223344'),
  ('Опанасенко Єгор Андрійович', 'Охтирка', 'Україна', DATE '2002-07-07', 'yehor.opanasenko@example.com', '+380501334455'),
  ('Міщенко Софія Романівна', 'Лубни', 'Україна', DATE '2001-05-05', 'sofia.mishchenko@example.com', '+380671445566');
-- Практичне завдання
--  ■ назва групи;
--  ■ середня оцінка за рік з усіх предметів;
--  ■ назва предмета з мінімальною, середньою оцінкою;
--  ■ назва предмета з максимальною, середньою
-- оцінкою.

    ALTER TABLE Students
ADD COLUMN group_name VARCHAR(20),
ADD COLUMN avg_year_grade DECIMAL(4,2),
ADD COLUMN subject_with_min_avg VARCHAR(50),
ADD COLUMN subject_with_max_avg VARCHAR(50);
--  Наповніть цю базу даних трьома студентами.

UPDATE Students SET group_name = 'ІП-21', avg_year_grade = 87.25, subject_with_min_avg = 'Фізика', subject_with_max_avg = 'Математика' WHERE student_id = 21;
UPDATE Students SET group_name = 'ІП-21', avg_year_grade = 91.40, subject_with_min_avg = 'Історія', subject_with_max_avg = 'Інформатика' WHERE student_id = 22;
UPDATE Students SET group_name = 'ІП-22', avg_year_grade = 78.60, subject_with_min_avg = 'Хімія', subject_with_max_avg = 'Фізкультура' WHERE student_id = 23;
UPDATE Students SET group_name = 'ІП-22', avg_year_grade = 84.10, subject_with_min_avg = 'Література', subject_with_max_avg = 'Математика' WHERE student_id = 34;
UPDATE Students SET group_name = 'ІП-23', avg_year_grade = 89.75, subject_with_min_avg = 'Біологія', subject_with_max_avg = 'Інформатика' WHERE student_id = 35;
UPDATE Students SET group_name = 'ІП-23', avg_year_grade = 76.30, subject_with_min_avg = 'Фізика', subject_with_max_avg = 'Фізкультура' WHERE student_id = 36;
UPDATE Students SET group_name = 'ІП-24', avg_year_grade = 92.50, subject_with_min_avg = 'Історія', subject_with_max_avg = 'Англійська мова' WHERE student_id = 37;
UPDATE Students SET group_name = 'ІП-24', avg_year_grade = 81.90, subject_with_min_avg = 'Хімія', subject_with_max_avg = 'Інформатика' WHERE student_id = 38;
UPDATE Students SET group_name = 'ІП-25', avg_year_grade = 88.20, subject_with_min_avg = 'Фізика', subject_with_max_avg = 'Математика' WHERE student_id = 39;
UPDATE Students SET group_name = 'ІП-25', avg_year_grade = 79.45, subject_with_min_avg = 'Історія', subject_with_max_avg = 'Фізкультура' WHERE student_id = 40;
UPDATE Students SET group_name = 'ІП-5', avg_year_grade = 79.45, subject_with_min_avg = 'Історія', subject_with_max_avg = 'Фізкультура' WHERE student_id = 41;
-- Відобразити всю інформацію зі студентами та оцінками
SELECT *
FROM Students;

-- Відобразити ПІБ усіх студентів
SELECT full_name
FROM Students;

-- Відобразити всі середні річні оцінки
SELECT avg_year_grade
FROM Students
WHERE avg_year_grade IS NOT NULL;

-- Показати ПІБ студентів із мінімальною оцінкою більшою за зазначене значення (:min_grade)
-- Замініть :min_grade на потрібне число, наприклад 80
SELECT full_name
FROM Students
WHERE avg_year_grade > :min_grade;

-- Показати унікальні країни студентів
SELECT DISTINCT country
FROM Students
WHERE country IS NOT NULL;

-- Показати унікальні міста студентів
SELECT DISTINCT city
FROM Students
WHERE city IS NOT NULL;

-- Показати унікальні назви груп
SELECT DISTINCT group_name
FROM Students
WHERE group_name IS NOT NULL;

-- Показати унікальні предмети з мінімальними середніми оцінками
SELECT DISTINCT subject_with_min_avg
FROM Students
WHERE subject_with_min_avg IS NOT NULL;

-- Додатково: унікальні предмети з максимальними середніми оцінками
SELECT DISTINCT subject_with_max_avg
FROM Students
WHERE subject_with_max_avg IS NOT NULL;