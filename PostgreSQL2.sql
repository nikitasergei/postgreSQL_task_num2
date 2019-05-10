SELECT *
FROM public.departments
ORDER BY id DESC;

SELECT name as groups_name,rating as groups_rating
FROM public.groups;

SELECT surname, (salary/(salary+premium))*100 as pay_in_percents, (salary/premium)*100 as salary_by_premium_in_percents
FROM public.teachers;

SELECT 'The dean of faculty', name, 'is' , dean, '.'
FROM public.faculties;

SELECT surname, salary
FROM public.teachers
WHERE isProfessor AND (salary > 1050.00::money);

SELECT name
FROM public.departments
WHERE financing<11000::money OR financing>25000::money;

select name
from public.faculties
where name != 'Computer Science';

select name, position
from public.teachers
where position != 'professor';

select surname, position, salary, premium
from public.teachers
where (position LIKE 'asistant') AND (premium BETWEEN 160::MONEY AND 550::MONEY);

select SURNAME, POSITION, SALARY
from public.teachers
WHERE POSITION LIKE 'asistant';

select surname, position
from public.teachers
where (position like 'teacher') AND (employment_date < '2000-01-01');

select name as name_of_departments
from public.faculties
where name < 'Software Development'
ORDER BY name_of_departments;

select surname
from public.teachers
where (position like 'asistant') AND (salary+premium <1200::money);

select name
from public.groups
where (rating between 2 AND 4) AND (year = 5);

select surname
from public.teachers
where (position like 'asistant') AND ((salary<550::money) or (premium <200::money))

