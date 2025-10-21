----===============ORACLE STRING FUNCTIONS

--1)ASCII :-Returns an ASCII code value of a character
SELECT ASCII('A') FROM DUAL;

--2)CHR :- Converts a numeric value to its corresponding ASCII character
SELECT CHR(65) FROM DUAL;

--CHR(13) → Carriage Return → Return to line start
--CHR(10) → Line Feed → Move to next line
--CHR(9) → Tab → Insert tab space

SELECT CHR(13) FROM DUAL;
SELECT CHR(10) FROM DUAL;
SELECT CHR(9) FROM DUAL;


--3)CONCAT :- Concatenate two strings and return the combined string.
SELECT CONCAT('PRASAD',' BELOTE') FROM DUAL;
SELECT CONCAT(CONCAT('PRASAD ','UTTAM'),' BELOTE');
SELECT 'PRASAD'||' UTTAM'||' BELOTE' FROM DUAL;

--4)CONVERT :- Convert a character string from one character set to another.
SELECT CONVERT('ABC','UTF8','us7ascii') FROM DUAL;

--5)DUMP :- Return a string value (VARCHAR2) that includes the datatype code, length measured in bytes, and internal representation of a specified expression.
SELECT DUMP('PRASAD') FROM DUAL;
SELECT DUMP('PRASAD',17) FROM DUAL;
SELECT TRIM(SUBSTR(DUMP('PRASAD',17),15)) FROM DUAL; --P,R,A,S,A,D

--6)INITCAP :-Converts the first character in each word in a specified string to uppercase and the rest to lowercase.
SELECT INITCAP('Prasad') FROM DUAL; --Prasad

--7)UPPER :- Convert all characters in a specified string to uppercase.
SELECT UPPER('Prasad') FROM DUAL;--PRASAD

--8)LOWER :- Return a string with all characters converted to lowercase.
SELECT LOWER('PRASAD') FROM DUAL;--prasad

--9)LENGTH :-Return the number of characters (or length) of a specified string
SELECT LENGTH('PRASAD') FROM DUAL; --6

--10)SOUNDEX :-Return a phonetic/SOund representation of a specified string.
SELECT SOUNDEX('Sea') FROM DUAL;    --S000
SELECT SOUNDEX('See') FROM DUAL;    --S000

--11)TRIM :-Remove the space character or other specified characters either from the start or end of a string.
SELECT TRIM(' ABC ') FROM DUAL;

--12)RTRIM:-Remove all spaces or specified character in a set from the right end of a string.
SELECT RTRIM(' ABC') FROM DUAL;
SELECT RTRIM('PRASAD','D') FROM DUAL;
--13)LTRIM:-Remove all spaces or specified character in a set from the left end of a string.
SELECT LTRIM('ABC ') FROM DUAL;

--14)LPAD:-Return a string that is left-padded with the specified characters to a certain length.
SELECT LPAD('ABC',5,'*') FROM DUAL; --**ABC
SELECT LPAD('ABC',2,'*') FROM DUAL; --AB
SELECT LPAD('85612',8,0) FROM DUAL; --00085612

--15)RPAD:-Return a string that is right-padded with the specified characters to a certain length.
SELECT RPAD('ABC',5,'*') FROM DUAL; --ABC**
SELECT RPAD('ABC',2,'*') FROM DUAL; --AB

--16)TRANSLATE :-Replace all occurrences of characters by other characters in a string.
SELECT TRANSLATE ('[asdfh()]','[()]','{\/}') from dual; ---{asdfh\/}

--17)REPLACE :-Replace all occurrences of a substring by another substring in a string.
SELECT REPLACE ('PRASAD BELOTE','PRASAD BELOTE','PRASAD UTTAM BELOTE') FROM DUAL; --PRASAD UTTAM BELOTE

--18)SUBSTR :-Extract a substring from a string.
SELECT SUBSTR('FQJPB4551H',6,4) FROM DUAL; --4551 WHERE 6 START POSITION AND 4 IS OCCURENCES REQUIRED 
SELECT SUBSTR('FQJPB4551H',3) FROM DUAL; --JPB4551H RETURN ALL VALUES AFTER 3RD INDEX
SELECT SUBSTR('FQJPB4551H',-5,3) FROM DUAL; --455  -5 EXTRACT LAST 5 CHAR AS IT IS NEGATIVE AND THEN GIVE FIRST 3 CHAR FROM INDEX

--19)INSTR :-Search for a substring and return the location of the substring in a string
SELECT INSTR( 'PRASAD','A') FROM DUAL; --3  --FIRST OCCURENCE
SELECT INSTR( 'PRASAD','A',1,2) FROM DUAL;--5 --SECOND OCCURENCE
SELECT INSTR( 'PRASAD','M') FROM DUAL;  --0

--20)
--============================REGULAR EXPRESSIONS
--'\d+'  == \d means 'digit'. + means, '1 or more times'. So \d+ means one or more digit.
--1}REGEXP_COUNT := Return the number of times a pattern occurs in a string.
SELECT REGEXP_COUNT('PRASAD123123123','123') FROM DUAL; --3 

--2}REGEXP_INSTR :=Return the position of a pattern in a string.
SELECT 
    REGEXP_INSTR(
        'If you have any question please call 123-456-7890 or (123)-456-7891',
        '(\+?( |-|\.)?\d{1,2}( |-|\.)?)?(\(?\d{3}\)?|\d{3})( |-|\.)?(\d{3}( |-|\.)?\d{4})') First_Phone_No
FROM
    dual;

--3}REGEXP_LIKE :=Match a string based on a regular expression pattern.
SELECT
  first_name
FROM
  employees
WHERE
  REGEXP_LIKE( first_name, 'c' )
ORDER BY first_name;

--4}REGEXP_REPLACE :=Replace substring in a string by a new substring using a regular expression.
SELECT 
    REGEXP_REPLACE('Th♥is∞ is a dem☻o of REGEXP_♫REPLACE function','[^a-z_A-Z ]') 
FROM 
    dual;
    
--5}REGEXP_SUBSTR :=Extract substrings from a string using a pattern of a regular expression.
SELECT regexp_substr ( 'Oracle 23ai', '\d+' ) FROM DUAL;


















