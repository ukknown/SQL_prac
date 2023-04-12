SELECT B.BOOK_ID, A.AUTHOR_NAME, DATE_FORMAT(B.PUBLISHED_DATE, '%Y-%m-%d') 
AS PUBLISHED_DATE 
FROM BOOK B JOIN AUTHOR A ON A.AUTHOR_ID = B.AUTHOR_ID
WHERE B.CATEGORY = '경제' ORDER BY B.PUBLISHED_DATE ASC;   

//DATE_FORMAT(B.PUBLISHED_DATE, '%Y-%m-%d')  2021-03-24 형식으로 나오게 한다.
//BOOK B JOIN AUTHOR A ON A.AUTHOR_ID = B.AUTHOR_ID book에 author 테이블을 함침  author_id가 같은
