SELECT BOOK_ID, DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE 
FROM BOOK
WHERE DATE_FORMAT(PUBLISHED_DATE,"%Y") = 2021 AND CATEGORY = '인문'
ORDER BY PUBLISHED_DATE ASC
