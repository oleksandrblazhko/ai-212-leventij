create or replace FUNCTION createRequest (
    p_fullName IN VARCHAR2,
    p_address IN VARCHAR2,
    p_meteosvcName IN VARCHAR2
)
RETURN INT IS
    v_fullName "User".fullName%TYPE := TRIM(p_fullName);
    v_address "User".address%TYPE := TRIM(p_address);
    v_meteosvcName MeteoService.meteosvcName%TYPE := TRIM(p_meteosvcName);
BEGIN
    -- Умова №1: Повне ім'я користувача не повинно бути порожнім і не повинно перевищувати 120 символів.
    IF LENGTH(v_fullName) = 0 OR LENGTH(v_fullName) > 120 OR NOT REGEXP_LIKE(v_fullName, '^[A-Za-z ]+$') THEN
        RETURN -1; -- Помилка: ПІБ користувача не відповідає умовам.
    END IF;

    -- Умова №2: Адреса користувача не повинна бути порожньою і не повинна перевищувати 200 символів.
    IF LENGTH(v_address) = 0 OR LENGTH(v_address) > 200 OR NOT REGEXP_LIKE(v_address, '^[A-Za-z0-9,.\- ]+$') THEN
        RETURN -2; -- Помилка: Адреса користувача не відповідає умовам.
    END IF;

    -- Умова №3: Назва метеорологічної послуги не повинна бути порожньою і не повинна перевищувати 100 символів.
    IF LENGTH(v_meteosvcName) = 0 OR LENGTH(v_meteosvcName) > 100 THEN
        RETURN -3; -- Помилка: Назва метеорологічної послуги не відповідає умовам.
    END IF;

    -- Всі умови виконані, можна вставляти дані в таблицю.
    INSERT INTO "User" (fullName, address, meteosvcName)
    VALUES (v_fullName, v_address, v_meteosvcName);
    COMMIT;

    RETURN 1; -- Користувач успішно ввів всі дані.
END;
/
