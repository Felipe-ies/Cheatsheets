-- mysql
-- pl/sql
-- oracle
-- postgreSql



-- PL/SQL #################################

-- 1.Comentarios
-- Comentario simple

/* Comentario
Multilinea */

-- 1.Bloque de código mandatorio para PL/SQL
DECLARE -- (Opcional si no se declaran variables)
    -- Declaracion de variables
BEGIN 
    -- Ejecucion del código
EXCEPTION -- (Opcional)
    -- Codigo en caso de exepción
END;
/

-- 2.Output
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hola Mundo'); -- Comillas simples para Strings
    DBMS_OUTPUT.PUT_LINE('Hola' || 'Mundo'); -- || concatena
END;
/

-- 3.Variables → Nombre Tipo(largo) := Valor;
-- Se usa := en vez de = para asignar valor. = en pl/sql es comparador
DECLARE
    v_number NUMBER(2) := 10;
    v_varchar VARCHAR2(10) := 'Hola mundo';
    v_char CHAR(2) := 'ch';
    v_boolean BOOLEAN := TRUE;
    v_date DATE := SYSDATE;
BEGIN  
    DBMS_OUTPUT.PUT_LINE(v_number);
    DBMS_OUTPUT.PUT_LINE(v_varchar);
    DBMS_OUTPUT.PUT_LINE(v_char);
    -- DBMS_OUTPUT.PUT_LINE(v_boolean); → Debe convertirse a string para imprimir
    DBMS_OUTPUT.PUT_LINE(v_date);
END;
/

-- 4.Operadores Matemáticos
DECLARE
    v_num1 NUMBER(2) := 2;
    v_num2 NUMBER(2) := 3;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Suma:' || (v_num1 + v_num2));
    DBMS_OUTPUT.PUT_LINE('Resta:' || (v_num1 - v_num2));
    DBMS_OUTPUT.PUT_LINE('Multiplicacion:' || (v_num1 * v_num2));
    DBMS_OUTPUT.PUT_LINE('Division:' || (v_num1 / v_num2));
    DBMS_OUTPUT.PUT_LINE('Potencia:' || (v_num1 ** v_num2));
END;
/

-- Estructuras de control
-- IF
DECLARE
    v_num1 NUMBER(2) := 2;
    v_num2 NUMBER(2) := 3;
BEGIN
    IF v_num1 > v_num2 THEN
        DBMS_OUTPUT.PUT_LINE('v_num1 > v_num2');
    ELSIF v_num1 = v_num2 THEN
        DBMS_OUTPUT.PUT_LINE('v_num1 = v_num2');
    ELSE 
        DBMS_OUTPUT.PUT_LINE('v_num1 < v_num2');
    END IF;
END;
/

-- CASE (Switch en Java)
DECLARE
    v_num1 NUMBER(2) := 2;
BEGIN
    CASE v_num1 
        WHEN 0 THEN DBMS_OUTPUT.PUT_LINE('vale 0');
        WHEN 1 THEN DBMS_OUTPUT.PUT_LINE('vale 1');
        ELSE DBMS_OUTPUT.PUT_LINE('vale 2');
    END CASE;
END;
/

-- WHILE
DECLARE
	v_num NUMBER(2) := 1;
BEGIN
	WHILE v_num <= 10 LOOP
		DBMS_OUTPUT.PUT_LINE(v_num);
		v_num := v_num + 1;
	END LOOP;
END;
/

-- FOR → Variable se puede declarar en el mismo for, como en Java
BEGIN
    FOR v_i IN 1..5 LOOP -- 1..5 → comienza en 1 y termina en 5
        DBMS_OUTPUT.PUT_LINE(v_i);
    END LOOP;
END;
/
-- for en reversa
BEGIN
    FOR i IN REVERSE 1..5 LOOP -- Reverse para iterar en sentido contrario: 5..1 No funciona
        DBMS_OUTPUT.PUT_LINE(v_i);
    END LOOP;
END;
/

-- LOOP → Parecido al DO-WHILE de Java, pero el EXIT se puede poner en cualquier lado
DECLARE
    v_num NUMBER := 1;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE(v_num);        
        EXIT WHEN v_num > 5; -- Puede haber codigo antes y después del EXIT
        v_num := v_num + 1;
    END LOOP;
END;
/

-- Operadores Lógicos
DECLARE
    v_bool1 BOOLEAN := TRUE;
    v_bool2 BOOLEAN := FALSE;
BEGIN
    IF v_bool1 AND v_bool2 THEN
        DBMS_OUTPUT.PUT_LINE('And');
    END IF;
    IF v_bool1 OR v_bool2 THEN
        DBMS_OUTPUT.PUT_LINE('Or');
    END IF;
    IF v_bool1 AND NOT v_bool2 THEN
        DBMS_OUTPUT.PUT_LINE('And Not');
    END IF;
END;
/

/*
6. Funciones y métodos
7. Clases y objetos (POO)
8. Manejo de excepciones
9. Importación de módulos/librerías
10. Entrada y salida (I/O)
Ejemplos avanzados (opcional)
*/

-- Declarar e iterar sobre array
DECLARE
    TYPE my_array IS varray(3)  of VARCHAR2(10);
    v_array my_array := my_array('uno','dos','tres');
BEGIN
    FOR v_i in 1..v_array.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE(v_array(v_i));
    END LOOP;
END;
/

-- SELECT INTO
DECLARE
    v_num NUMBER(2);
BEGIN
    SELECT count(*) INTO v_num
    FROM tabla;

    DBMS_OUTPUT.PUT_LINE('Total: ' || v_num); 
END;
/

-- 
DECLARE

BEGIN

END;
/


DECLARE

BEGIN

END;
/