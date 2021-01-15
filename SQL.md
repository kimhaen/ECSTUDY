Time
---

//현재시간출력     
SELECT current_setting('timezone'),now();

//현재시간 -9시간      
SELECT now() + interval '-9:00';

//현재시간 +2년      
SELECT now() + interval '2' YEAR;
