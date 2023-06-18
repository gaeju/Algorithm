-- 코드를 입력하세요
SELECT
order_id,
product_id,
date_format(out_date, '%Y-%m-%d') as OUT_DATE,
CASE WHEN OUT_DATE <= '2022-05-01' THEN '출고완료'
     WHEN OUT_DATE > '2022-05-01' THEN '출고대기'
     ELSE '출고미정'
END AS 출고여부
from food_order
ORDER BY ORDER_ID
