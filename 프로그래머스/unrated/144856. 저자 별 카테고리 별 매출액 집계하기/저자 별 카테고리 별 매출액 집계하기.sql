-- 코드를 입력하세요
SELECT 
A.AUTHOR_ID,
A.AUTHOR_NAME,
B.CATEGORY,
SUM(BS.sales*b.price) as TOTAL_SALES
from book B 
join author A 
on b.Author_id = A.author_id
JOIN book_sales as BS ON BS.BOOK_ID = B.BOOK_ID
WHERE BS.SALES_DATE LIKE '2022-01%'
GROUP BY a.AUTHOR_ID, B.CATEGORY
ORDER BY AUTHOR_ID, CATEGORY DESC