-- 코드를 입력하세요
SELECT 
user_id,
nickname,
concat(city,' ',STREET_ADDRESS1,' ',STREET_ADDRESS2) as '전체주소',
concat(substring(tlno,1,3),'-',substring(tlno,4,4), '-', substring(tlno,8,4)) as '전화번호'
from used_goods_board ugb join used_goods_user ugu on ugb.writer_id = ugu.user_id
group by user_id
having count(board_id) >= 3
order by user_id desc