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
SELECT TRANSLATE ()