/* Создать файл my.sql, в котором должна создаваться таблица с информацией об одногруппниках. 
В таблице должно быть четыре поля: id, name, age, address. Все поля в таблице обязательны для заполнения.*/

USE s4;
CREATE TABLE students (
id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
name_student VARCHAR(255) NOT NULL,
age INTEGER  NOT NULL,
address VARCHAR(30) NOT NULL
);
# Необходимо добавить 5-10 одногруппников в данную таблицу.
INSERT INTO students (name_student, age, address) VALUES ('123', 18, 'Moscow');
INSERT INTO students (name_student, age, address) VALUES ('456', 21, 'Moscow');
INSERT INTO students (name_student, age, address) VALUES ('789', 21, 'Astrakhan');
INSERT INTO students (name_student, age, address) VALUES ('5656', 17, 'Moscow');
INSERT INTO students (name_student, age, address) VALUES ('566556', 40, 'Moscow');
INSERT INTO students (name_student, age, address) VALUES ('566556', 30, 'Moscow');

/* Необходимо написать запрос на получение имен всех одногруппников (только имен, без всего остального), которые живут в Москве и их 
возраст находится в диапазоне [18, 30) лет. */

SELECT name_student FROM students WHERE address = 'Moscow' AND (age < 30 AND age >= 18);


