-- Unit-testing of createRequest function
DECLARE
   result INT;
BEGIN
   DBMS_OUTPUT.PUT_LINE(' ');
   DBMS_OUTPUT.PUT_LINE('Unit-testing of createRequest function');
   
   -- TC 1.1: Валідні дані. Результат: 1
   DBMS_OUTPUT.PUT('TC 1.1: ');
   result := createRequest('Matiiko Stanislav Stanislavovich', '123 Maple Street, Toronto, Ontario, Canada, M5V 2T6', 'Advanced Climate Prediction and Weather Forecasting Service');
   IF result = 1 THEN
      DBMS_OUTPUT.PUT_LINE('Passed');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Failed');
   END IF;

   -- TC 1.2: Ім'я відсутнє. Результат: -1
   DBMS_OUTPUT.PUT('TC 1.2: ');
   result := createRequest(null, '123 Maple Street, Toronto, Ontario, Canada, M5V 2T6', 'Advanced Climate Prediction and Weather Forecasting Service');
   IF result = -1 THEN
      DBMS_OUTPUT.PUT_LINE('Passed');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Failed');
   END IF;

   -- TC 1.3: Ім'я перевищує допустиму довжину. Результат: -1
   DBMS_OUTPUT.PUT('TC 1.3: ');
   result := createRequest('Elizabeth Alexandra Mary Windsor Elizabeth Alexandra Mary Windsor Elizabeth Alexandra Mary Windsor Elizabeth Alexandra Mary Windsor Elizabeth', '123 Maple Street, Toronto, Ontario, Canada, M5V 2T6', 'Advanced Climate Prediction and Weather Forecasting Service');
   IF result = -1 THEN
      DBMS_OUTPUT.PUT_LINE('Passed');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Failed');
   END IF;

   -- TC 1.4: Ім'я містить недопустимі символи. Результат: -1
   DBMS_OUTPUT.PUT('TC 1.4: ');
   result := createRequest('Матійко Stanislav Stanislavovich', '123 Maple Street, Toronto, Ontario, Canada, M5V 2T6', 'Advanced Climate Prediction and Weather Forecasting Service');
   IF result = -1 THEN
      DBMS_OUTPUT.PUT_LINE('Passed');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Failed');
   END IF;

   -- TC 1.5: Адреса відсутня. Результат: -2
   DBMS_OUTPUT.PUT('TC 1.5: ');
   result := createRequest('Matiiko Stanislav Stanislavovich', null, 'Advanced Climate Prediction and Weather Forecasting Service');
   IF result = -2 THEN
      DBMS_OUTPUT.PUT_LINE('Passed');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Failed');
   END IF;

   -- TC 1.6: Адреса перевищує допустиму довжину. Результат: -2
   DBMS_OUTPUT.PUT('TC 1.6: ');
   result := createRequest('Matiiko Stanislav Stanislavovich', '1234 Long Street Name, Very Big City Name, Extremely Large Province Name, Country With A Very Long Name, Postal Code 12345-6789. This is a second line of the address which includes Building Name, Office Number, Additional Directions for the courier to find the location easily and a third line for any extra information', 'Advanced Climate Prediction and Weather Forecasting Service');
   IF result = -2 THEN
      DBMS_OUTPUT.PUT_LINE('Passed');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Failed');
   END IF;

   -- TC 1.7: Адреса містить недопустимі символи. Результат: -2
   DBMS_OUTPUT.PUT('TC 1.7: ');
   result := createRequest('Matiiko Stanislav Stanislavovich', '123 Мейпл Стріт, Toronto, Ontario, Canada, M5V 2T6', 'Advanced Climate Prediction and Weather Forecasting Service');
   IF result = -2 THEN
      DBMS_OUTPUT.PUT_LINE('Passed');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Failed');
   END IF;

   -- TC 1.8: Назва послуги відсутня. Результат: -3
   DBMS_OUTPUT.PUT('TC 1.8: ');
   result := createRequest('Matiiko Stanislav Stanislavovich', '123 Maple Street, Toronto, Ontario, Canada, M5V 2T6', null);
   IF result = -3 THEN
      DBMS_OUTPUT.PUT_LINE('Passed');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Failed');
   END IF;

   -- TC 1.9: Назва послуги перевищує допустиму довжину. Результат: -3
   DBMS_OUTPUT.PUT('TC 1.9: ');
   result := createRequest('Matiiko Stanislav Stanislavovich', '123 Maple Street, Toronto, Ontario, Canada, M5V 2T6', 'Advanced Climate Prediction and Weather Forecasting Service with Specialized Reports for Agriculture and Aviation Industries');
   IF result = -3 THEN
      DBMS_OUTPUT.PUT_LINE('Passed');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Failed');
   END IF;

   -- TC 1.10: Назва послуги містить недопустимі символи. Результат: -3
   DBMS_OUTPUT.PUT('TC 1.10: ');
   result := createRequest('Matiiko Stanislav Stanislavovich', '123 Maple Street, Toronto, Ontario, Canada, M5V 2T6', 'Адвансед Climate Prediction and Weather Forecasting Service');
   IF result = -3 THEN
      DBMS_OUTPUT.PUT_LINE('Passed');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Failed');
   END IF;
END;
