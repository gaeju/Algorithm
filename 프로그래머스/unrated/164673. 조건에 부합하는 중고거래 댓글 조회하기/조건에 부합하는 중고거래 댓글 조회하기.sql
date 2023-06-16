-- 코드를 입력하세요
SELECT 
B.TITLE, 
B.BOARD_ID,  
R.REPLY_ID, 
r.WRITER_ID,
R.CONTENTS,
date_format(R.CREATED_DATE, '%Y-%m-%d') as CREATED_DATE
from used_goods_board B join used_goods_reply R on b.board_id = r.board_id

where b.created_date like '2022-10-%'
order by R.created_date, title asc