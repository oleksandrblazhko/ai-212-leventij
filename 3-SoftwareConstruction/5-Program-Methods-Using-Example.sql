DECLARE
    v_result INT;
BEGIN
    -- Виклик функції createRequest
    v_result := createRequest('Jane Doe', '123 Main St', 'Sky Insight');

    -- Обробка результату
    IF v_result = 1 THEN
        DBMS_OUTPUT.PUT_LINE('Користувач успішно введений.');
    ELSIF v_result = -1 THEN
        DBMS_OUTPUT.PUT_LINE('Помилка: ПІБ користувача не відповідає умовам.');
    ELSIF v_result = -2 THEN
        DBMS_OUTPUT.PUT_LINE('Помилка! Адреса користувача не відповідає умовам.');
    ELSIF v_result = -3 THEN
        DBMS_OUTPUT.PUT_LINE('Помилка: Назва метеорологічної послуги не відповідає умовам.');  
    END IF;
END;
/
