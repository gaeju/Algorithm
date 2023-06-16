-- 코드를 입력하세요
SELECT
book.category,
sum(bs.sales)
from book join book_sales bs on book.book_id = bs.book_id
where bs.sales_date like '2022-01-%'
group by category
order by category