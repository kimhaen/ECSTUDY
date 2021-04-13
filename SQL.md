SQL in PostgreSQL
====

Time (interval)
---
~~~sql
//현재시간출력     
SELECT current_setting('timezone'),now();

//현재시간 -9시간      
SELECT now() + interval '-9:00';

//현재시간 +2년      
SELECT now() + interval '2' YEAR;
~~~
Encrypt & Decrypt (pgp_sym_encrypt / decrypt)
---

~~~sql
pgp_sym_encrypt('aaaaaaa', 'Hdxz3uVLdMqLFpLK')

-------
 insert into table_name ( 
    user_id
  ) 
  values ( 
    pgp_sym_encrypt('aa', 'Hdxz3uVLdMqLFpLK')
)
~~~

UUID (gen_random_uuid)
------
~~~sql
pgp_sym_encrypt('aaaaaaa', 'Hdxz3uVLdMqLFpLK')

-------
 insert into table_name ( 
    uuid
  ) 
  values ( 
    gen_random_uuid()
)
~~~~~

Practice
------
test