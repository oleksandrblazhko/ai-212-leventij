-- Unit-testing of createRequest function
DECLARE
   result INT;
BEGIN
   DBMS_OUTPUT.PUT_LINE(' ');
   DBMS_OUTPUT.PUT_LINE('Unit-testing of createRequest function');
   
   -- TC 1.1: Валідні дані. Результат: 1
   DBMS_OUTPUT.PUT('TC 1.1: ');
   result := createRequest('Jane Doe', '123 Main St', 'Sky Insight');
   IF result = 1 THEN
      DBMS_OUTPUT.PUT_LINE('Passed');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Failed');
   END IF;

   -- TC 1.2: Ім'я відсутнє. Результат: -1
   DBMS_OUTPUT.PUT('TC 1.2: ');
   result := createRequest(null, '123 Main St', 'Sky Insight');
   IF result = -1 THEN
      DBMS_OUTPUT.PUT_LINE('Passed');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Failed');
   END IF;

   -- TC 1.3: Ім'я перевищує допустиму довжину. Результат: -1
   DBMS_OUTPUT.PUT('TC 1.3: ');
   result := createRequest('Jane Doe' || RPAD('X', 500, 'X'), '123 Main St', 'Sky Insight');
   IF result = -1 THEN
      DBMS_OUTPUT.PUT_LINE('Passed');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Failed');
   END IF;

   -- TC 1.4: Ім'я містить недопустимі символи. Результат: -1
   DBMS_OUTPUT.PUT('TC 1.4: ');
   result := createRequest('Jane Доу', '123 Main St', 'Sky Insight');
   IF result = -1 THEN
      DBMS_OUTPUT.PUT_LINE('Passed');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Failed');
   END IF;

   -- TC 1.5: Адреса відсутня. Результат: -2
   DBMS_OUTPUT.PUT('TC 1.5: ');
   result := createRequest('Jane Doe', null, 'Sky Insight');
   IF result = -2 THEN
      DBMS_OUTPUT.PUT_LINE('Passed');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Failed');
   END IF;

   -- TC 1.6: Адреса перевищує допустиму довжину. Результат: -2
   DBMS_OUTPUT.PUT('TC 1.6: ');
   result := createRequest('Jane Doe', '123 Main St'|| RPAD('X', 500, 'X'), 'Sky Insight');
   IF result = -2 THEN
      DBMS_OUTPUT.PUT_LINE('Passed');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Failed');
   END IF;

   -- TC 1.7: Адреса містить недопустимі символи. Результат: -2
   DBMS_OUTPUT.PUT('TC 1.7: ');
   result := createRequest('Jane Doe', '123 Мейн St', 'Sky Insight');
   IF result = -2 THEN
      DBMS_OUTPUT.PUT_LINE('Passed');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Failed');
   END IF;

   -- TC 1.8: Назва послуги відсутня. Результат: -3
   DBMS_OUTPUT.PUT('TC 1.8: ');
   result := createRequest('Jane Doe', '123 Main St', null);
   IF result = -3 THEN
      DBMS_OUTPUT.PUT_LINE('Passed');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Failed');
   END IF;

   -- TC 1.9: Назва послуги перевищує допустиму довжину. Результат: -3
   DBMS_OUTPUT.PUT('TC 1.9: ');
   result := createRequest('Jane Doe', '123 Main St', 'Sky Insight'|| RPAD('X', 500, 'X'));
   IF result = -3 THEN
      DBMS_OUTPUT.PUT_LINE('Passed');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Failed');
   END IF;

   -- TC 1.10: Назва послуги містить недопустимі символи. Результат: -3
   DBMS_OUTPUT.PUT('TC 1.10: ');
   result := createRequest('Jane Doe', '123 Main St', 'Sky Інсайт');
   IF result = -3 THEN
      DBMS_OUTPUT.PUT_LINE('Passed');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Failed');
   END IF;
END;
